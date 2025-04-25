using RitmSync_backend.Models;


namespace RitmSync_backend.DTO;

public class SocialDTO
{
    public string? Platform { get; set; }
    public string? Link { get; set; }

    public SocialDTO(string platform, string link)
    {
        Platform = platform;
        Link = link;
    }
}
