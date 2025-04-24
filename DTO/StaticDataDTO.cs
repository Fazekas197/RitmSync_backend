using RitmSync_backend.Models;

namespace RitmSync_backend.DTO;

public class StaticDataDTO
{
    public List<County> Counties { get; set; } = new List<County>();
    public List<Genres> Genres { get; set; } = new List<Genres>();
    public List<Instruments> Instruments { get; set; } = new List<Instruments>();

    public StaticDataDTO(List<County> counties, List<Genres> genres, List<Instruments> instruments)
    {
        Counties = counties;
        Genres = genres;
        Instruments = instruments;
    }
}
