using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace RitmSync_backend.Models;

[Table("user_experience")]
public class UserExperience
{
    [Column("id")]
    public int Id { get; set; }

    [Column("user_id")]
    [Required]
    public int UserId { get; set; }

    [Column("project_name")]
    [Required]
    [MaxLength(60)]
    public string? ProjectName { get; set; }

    [Column("start_date")]
    [Required]
    public DateTime Start { get; set; }

    [Column("end_date")]
    public DateTime? End { get; set; } = null;

    [ForeignKey("UserId")]
    public User? User { get; set; }
}
