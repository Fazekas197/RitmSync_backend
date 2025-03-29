using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace RitmSync_backend.Models;

[Table("genres")]
public class Genres
{
    [Column("id")]
    public int Id { get; set; }

    [Column("name")]
    [Required]
    [MaxLength(30)]
    public string? Name { get; set; }
}
