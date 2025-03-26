using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace RitmSync_backend.Models;

[Table("users")]
public class User
{
    [Column("id")]
    public int Id { get; set; }

    [Column("first_name")]
    [Required]
    [MaxLength(20)]
    public string? FirstName { get; set; }

    [Column("last_name")]
    [Required]
    [MaxLength(20)]
    public string? LastName { get; set; }
}
