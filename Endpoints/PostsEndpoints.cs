using Microsoft.EntityFrameworkCore;
using RitmSync_backend.Data;
using RitmSync_backend.DTO;
using RitmSync_backend.Models;

namespace RitmSync_backend.Endpoints;

public static class PostsEndpoint
{
    public static void MapPostsEndpoints(this WebApplication app)
    {
        var group = app.MapGroup("/posts");

        group.MapGet("/", async (AppDBContext db) =>
        {
            try
            {
                List<PostDTO> postDTOs = new List<PostDTO>();

                var postsFromDB = await db.Posts.Include(p => p.User).Include(p => p.County).ToListAsync();
                foreach (var post in postsFromDB)
                {
                    var postDTO = await CreatePostDTOAsync(db, post);
                    postDTOs.Add(postDTO);
                }
                return Results.Ok(postDTOs);
            }
            catch (System.Exception e)
            {
                return Results.Problem(e.Message);
            }
        });

        group.MapGet("/{id}", async (AppDBContext db, int id) =>
        {
            try
            {
                var postFromDB = await db.Posts.Include(p => p.User).Include(p => p.County).FirstOrDefaultAsync(p => p.Id == id);

                if (postFromDB == null)
                    return Results.NotFound();

                var postDTO = await CreatePostDTOAsync(db, postFromDB);
                return Results.Ok(postDTO);
            }
            catch (System.Exception e)
            {

                return Results.Problem(e.Message); ;
            }
        });

        group.MapGet("/users/{id}", async (AppDBContext db, int id) =>
        {
            try
            {
                List<PostDTO> postDTOs = new List<PostDTO>();

                var postsFromDB = await db.Posts.Where(p => p.UserId == id).Include(p => p.User).Include(p => p.County).ToListAsync();
                foreach (var post in postsFromDB)
                {
                    var postDTO = await CreatePostDTOAsync(db, post);
                    postDTOs.Add(postDTO);
                }
                return Results.Ok(postDTOs);
            }
            catch (System.Exception e)
            {
                return Results.Problem(e.Message);
            }
        });

        group.MapPost("/", async (AppDBContext db, CreatePostDTO createPostDTO) =>
        {
            try
            {
                Posts post = new Posts();
                post.UserId = createPostDTO.UserId;
                post.Title = createPostDTO.Title;
                post.CountyId = createPostDTO.CountyId;
                post.Desc = createPostDTO.Desc;
                post.Email = createPostDTO.Email;
                post.Phone = createPostDTO.Phone;

                db.Posts.Add(post);
                await db.SaveChangesAsync();

                foreach (var id in createPostDTO.Instruments)
                {
                    PostInstruments instrument = new PostInstruments();
                    instrument.PostId = post.Id;
                    instrument.InstrumentId = id;
                    db.PostsInstruments.Add(instrument);
                }
                foreach (var id in createPostDTO.Genres)
                {
                    PostGenres genre = new PostGenres();
                    genre.PostId = post.Id;
                    genre.GenresId = id;
                    db.PostsGenres.Add(genre);
                }
                foreach (var item in createPostDTO.Socials)
                {
                    PostSocials social = new PostSocials();
                    social.Link = item.Link;
                    social.Platform = item.Platform;
                    social.PostId = post.Id;
                    db.PostsSocials.Add(social);
                }
                await db.SaveChangesAsync();

                return Results.Ok(post);
            }
            catch (System.Exception e)
            {
                return Results.Problem(e.Message);
            }
        });

        group.MapDelete("/{id}", async (AppDBContext db, int id) =>
        {
            try
            {
                var post = await db.Posts.FindAsync(id);
                if (post != null)
                {
                    var PostSocials = await db.PostsSocials.Where(s => s.PostId == post.Id).ToListAsync();
                    if (PostSocials.Count > 0)
                        foreach (var item in PostSocials)
                            db.PostsSocials.Remove(item);

                    var PostIntruments = await db.PostsInstruments.Where(s => s.PostId == post.Id).ToListAsync();
                    if (PostIntruments.Count > 0)
                        foreach (var item in PostIntruments)
                            db.PostsInstruments.Remove(item);

                    var PostGenres = await db.PostsGenres.Where(s => s.PostId == post.Id).ToListAsync();
                    if (PostGenres.Count > 0)
                        foreach (var item in PostGenres)
                            db.PostsGenres.Remove(item);

                    db.Posts.Remove(post);
                    await db.SaveChangesAsync();
                    return Results.Ok("Deleted");
                }
                return Results.BadRequest("Cannot find Post");
            }
            catch (System.Exception e)
            {
                return Results.Problem(e.Message);
            }
        });
    }

    private static async Task<PostDTO> CreatePostDTOAsync(AppDBContext db, Posts post)
    {
        var instruments = await db.PostsInstruments
            .Where(pi => pi.PostId == post.Id)
            .Select(pi => pi.Instrument!.Name!)
            .ToListAsync();

        var genres = await db.PostsGenres
            .Where(pg => pg.PostId == post.Id)
            .Select(pg => pg.Genre!.Name!)
            .ToListAsync();

        var socials = await db.PostsSocials
            .Where(ps => ps.PostId == post.Id)
            .OrderBy(us => us.Platform)
            .Select(ps => new SocialDTO(ps.Platform!, ps.Link!))
            .ToListAsync();

        return new PostDTO(post, instruments, genres, socials);
    }
}