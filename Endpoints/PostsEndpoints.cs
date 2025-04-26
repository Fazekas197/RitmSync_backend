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

                return Results.Problem(e.Message); ;
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
            .Select(ps => new SocialDTO(ps.Platform!, ps.Link!))
            .ToListAsync();

        return new PostDTO(post, instruments, genres, socials);
    }
}