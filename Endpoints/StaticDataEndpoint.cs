using RitmSync_backend.Data;
using RitmSync_backend.DTO;
using RitmSync_backend.Models;

namespace RitmSync_backend.Endpoints;

public static class StaticDataEndpoint
{
    public static void MapStaticDataEndpoints(this WebApplication app)
    {
        var group = app.MapGroup("/staticData");

        group.MapGet("/", (AppDBContext db) =>
        {
            try
            {
                return Results.Ok(db.County);
            }
            catch (System.Exception e)
            {
                return Results.Problem(e.Message);
            }
        });
    }
}