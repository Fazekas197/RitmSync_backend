using RitmSync_backend.Models;

namespace RitmSync_backend.DTO;

public class CreatePostDTO
{
    public int UserId { get; set; }
    public string? Title { get; set; }
    public int CountyId { get; set; }
    public string? Desc { get; set; }
    public string? Email { get; set; }
    public string? Phone { get; set; }
    public List<int> Instruments { get; set; } = new List<int>();
    public List<int> Genres { get; set; } = new List<int>();
    public List<SocialDTO> Socials { get; set; } = new List<SocialDTO>();
}