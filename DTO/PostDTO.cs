using RitmSync_backend.Models;


namespace RitmSync_backend.DTO;

public class PostDTO
{
    public int Id { get; set; }
    public string? User { get; set; }
    public string? Title { get; set; }
    public string? County { get; set; }
    public string? Desc { get; set; }
    public string? Email { get; set; }
    public string? Phone { get; set; }
    public List<Instruments> Instruments { get; set; } = new List<Instruments>();
    public List<Genres> Genres { get; set; } = new List<Genres>();
    public List<PostSocials> Socials { get; set; } = new List<PostSocials>();
}
