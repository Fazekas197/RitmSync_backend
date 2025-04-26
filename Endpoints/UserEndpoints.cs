using Microsoft.EntityFrameworkCore;
using RitmSync_backend.Data;
using RitmSync_backend.DTO;
using RitmSync_backend.Models;

namespace RitmSync_backend.Endpoints;

public static class UserEndpoint
{
    public static void MapUserEndpoints(this WebApplication app)
    {
        var group = app.MapGroup("/users");

        group.MapGet("/", async (AppDBContext db) =>
        {
            try
            {
                List<UserDTO> userDTOs = new List<UserDTO>();
                var users = await db.Users
                    .Where(u => u.OpenForCollab)
                    .Include(u => u.County).ToListAsync();

                foreach (var user in users)
                {
                    var userDTO = await CreateUserDTOAsync(db, user);
                    userDTOs.Add(userDTO);
                }

                return Results.Ok(userDTOs);
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
                var user = await db.Users.Include(u => u.County).FirstOrDefaultAsync(u => u.Id == id);

                if (user == null)
                    return Results.NotFound();

                var userDTO = await CreateUserDTOAsync(db, user);
                return Results.Ok(userDTO);

            }
            catch (System.Exception e)
            {
                return Results.Problem(e.Message);
            }
        });
    }

    private static async Task<UserDTO> CreateUserDTOAsync(AppDBContext db, User user)
    {
        var experience = await db.UserExperience
              .Where(ex => ex.UserId == user!.Id)
              .OrderByDescending(ex => ex.Start)
              .Select(ex => new UserExperienceDTO(ex.ProjectName!, ex.Start, ex.End))
              .ToListAsync();

        var genres = await db.UserGenres
         .Where(ug => ug.UserId == user!.Id)
         .Select(ug => ug.Genre!.Name!).ToListAsync();

        var instruments = await db.UserInstruments
            .Where(ui => ui.UserId == user!.Id)
            .Select(ui => ui.Instrument!.Name!).ToListAsync();

        var socials = await db.UserSocials
           .Where(us => us.UserId == user!.Id)
           .Select(us => new SocialDTO(us.Platform!, us.Link!))
           .ToListAsync();

        return new UserDTO(user!, experience, genres, instruments, socials);
    }
}