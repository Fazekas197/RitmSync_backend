using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace RitmSync_backend.Models;

[Table("users")]
public class User
{
    [Column("id")]
    public int Id { get; set; }

    [Column("email")]
    [Required]
    [MaxLength(40)]
    public string Email { get; set; }

    [Column("pass_hash")]
    [Required]
    [MaxLength(100)]
    public string PassHash { get; set; }

    [Column("first_name")]
    [Required]
    [MaxLength(20)]
    public string? FirstName { get; set; }

    [Column("last_name")]
    [Required]
    [MaxLength(20)]
    public string? LastName { get; set; }

    [Column("open_for_collab")]
    public bool OpenForCollab { get; set; } = true;

    [Column("phone")]
    [MaxLength(10)]
    public string Phone { get; set; }

    [Column("description")]
    [Required]
    public string Desc { get; set; }

    [Column("county_id")]
    [Required]
    public int CountyId { get; set; }

    [ForeignKey("CountyId")]
    public County County { get; set; }
}
