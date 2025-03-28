using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;


namespace RitmSync_backend.Models;

[Table("user_genres")]
[PrimaryKey(nameof(UserId), nameof(GenresId))]
public class UserGenres
{
    [Column("user_id")]
    [Required]
    public int UserId { get; set; }

    [Column("genres_id")]
    [Required]
    public int GenresId { get; set; }

    [ForeignKey("UserId")]
    public User User { get; set; }

    [ForeignKey("GenresId")]
    public Genres Genre { get; set; }
}
