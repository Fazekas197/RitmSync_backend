using RitmSync_backend.Data;
using RitmSync_backend.Models;

namespace RitmSync_backend.Endpoints;

public static class RitmSyncEndpoint
{
    public static void MapUserEndpoints(this WebApplication app)
    {
        var group = app.MapGroup("/users");

        group.MapGet("/", (AppDBContext db) =>
        {
            try
            {
                return Results.Ok(db.Users);
            }
            catch (System.Exception e)
            {
                return Results.Problem(e.Message);
            }
        });
    }
}