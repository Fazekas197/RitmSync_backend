using RitmSync_backend.Data;
using RitmSync_backend.Models;

namespace RitmSync_backend.Endpoints;

public static class GenresEndpoint
{
    public static void MapGenresEndpoints(this WebApplication app)
    {
        var group = app.MapGroup("/genres");

        group.MapGet("/", (AppDBContext db) =>
        {
            try
            {
                return Results.Ok(db.Genres);
            }
            catch (System.Exception e)
            {
                return Results.Problem(e.Message);
            }
        });
    }
}