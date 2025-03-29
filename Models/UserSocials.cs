using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace RitmSync_backend.Models;

[Table("user_socials")]
public class UserSocials
{
    [Column("id")]
    public int Id { get; set; }

    [Column("user_id")]
    [Required]
    public int UserId { get; set; }

    [Column("platform")]
    [Required]
    [MaxLength(60)]
    public string? Platform { get; set; }

    [Column("link")]
    [Required]
    [Url]
    public string? Link { get; set; }

    [ForeignKey("UserId")]
    public User? User { get; set; }
}
