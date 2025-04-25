using RitmSync_backend.Models;


namespace RitmSync_backend.DTO;

public class UserExperienceDTO
{
    public string? ProjectName { get; set; }
    public DateTime Start { get; set; }
    public DateTime? End { get; set; }

    public UserExperienceDTO(string project, DateTime start, DateTime? end)
    {
        ProjectName = project;
        Start = start;
        End = end;
    }
}
