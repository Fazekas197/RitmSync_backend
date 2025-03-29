using RitmSync_backend.Data;
using RitmSync_backend.Models;

namespace RitmSync_backend.Endpoints;

public static class CountyEndpoint
{
    public static void MapCountyEndpoints(this WebApplication app)
    {
        var group = app.MapGroup("/county");

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