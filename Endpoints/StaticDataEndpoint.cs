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
                List<County> counties = db.County.ToList();
                List<Genres> genres = db.Genres.ToList();
                List<Instruments> instruments = db.Instruments.ToList();
                StaticDataDTO staticDataDTO = new StaticDataDTO(counties, genres, instruments);

                return Results.Ok(staticDataDTO);
            }
            catch (System.Exception e)
            {
                return Results.Problem(e.Message);
            }
        });
    }
}