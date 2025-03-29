using RitmSync_backend.Data;
using RitmSync_backend.Models;

namespace RitmSync_backend.Endpoints;

public static class InstrumentsEndpoint
{
    public static void MapInstrumentsEndpoints(this WebApplication app)
    {
        var group = app.MapGroup("/instruments");

        group.MapGet("/", (AppDBContext db) =>
        {
            try
            {
                return Results.Ok(db.Instruments);
            }
            catch (System.Exception e)
            {
                return Results.Problem(e.Message);
            }
        });
    }
}