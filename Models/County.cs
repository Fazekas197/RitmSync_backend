using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace RitmSync_backend.Models;

[Table("county")]
public class County
{
    [Column("id")]
    public int Id { get; set; }

    [Column("name")]
    [Required]
    [MaxLength(20)]
    public string? Name { get; set; }

    [Column("abv")]
    [Required]
    [MaxLength(2)]
    public string? Abv { get; set; }
}
