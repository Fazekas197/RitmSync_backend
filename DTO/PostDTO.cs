using RitmSync_backend.Models;


namespace RitmSync_backend.DTO;

public class PostDTO
{
    public int Id { get; set; }
    public string? User { get; set; }
    public string? Title { get; set; }
    public string? County { get; set; }
    public string? Desc { get; set; }
    public string? ShortDesc { get; set; }
    public string? Email { get; set; }
    public string? Phone { get; set; }
    public List<string> Instruments { get; set; } = new List<string>();
    public List<string> Genres { get; set; } = new List<string>();
    public List<string> Socials { get; set; } = new List<string>();

    public PostDTO(Posts post, List<string> instruments, List<string> genres, List<string> socials)
    {
        Id = post.Id;
        User = post.User?.LastName + " " + post.User?.FirstName;
        Title = post.Title;
        County = post.County?.Name;
        Desc = post.Desc;
        ShortDesc = Desc?.Length < 100 ? Desc : Desc?.Substring(0, 100) + "...";
        Email = post.Email;
        Phone = post.Phone;
        Instruments = instruments;
        Genres = genres;
        Socials = socials;
    }
}
