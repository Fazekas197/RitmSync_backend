using RitmSync_backend.Data;
using RitmSync_backend.DTO;
using RitmSync_backend.Models;

namespace RitmSync_backend.Endpoints;

public static class PostsEndpoint
{
    public static void MapPostsEndpoints(this WebApplication app)
    {
        var group = app.MapGroup("/posts");

        group.MapGet("/", (AppDBContext db) =>
        {
            try
            {
                return Results.Ok(db.Posts);
            }
            catch (System.Exception e)
            {
                return Results.Problem(e.Message);
            }
        });
    }
}