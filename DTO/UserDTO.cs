using RitmSync_backend.Models;


namespace RitmSync_backend.DTO;

public class UserDTO
{
    public int Id { get; set; }
    public string? Email { get; set; }
    public string? FullName { get; set; }
    public bool OpenForCollab { get; set; } = true;
    public string? Phone { get; set; }
    public string? Desc { get; set; }
    public string? ShortDesc { get; set; }
    public string? County { get; set; }
    public List<UserExperienceDTO> Experience { get; set; } = new List<UserExperienceDTO>();
    public List<string> Genres { get; set; } = new List<string>();
    public List<string> Instruments { get; set; } = new List<string>();
    public List<SocialDTO> Socials { get; set; } = new List<SocialDTO>();

    public UserDTO(User user, List<UserExperienceDTO> experience, List<string> genres, List<string> instruments, List<SocialDTO> socials)
    {
        Id = user.Id;
        Email = user.Email;
        FullName = user.LastName + " " + user.FirstName;
        OpenForCollab = user.OpenForCollab;
        Phone = user.Phone;
        Desc = user.Desc;
        ShortDesc = Desc?.Length < 200 ? Desc : Desc?.Substring(0, 200) + "...";
        County = user.County?.Name;
        Experience = experience;
        Genres = genres;
        Instruments = instruments;
        Socials = socials;
    }
}
