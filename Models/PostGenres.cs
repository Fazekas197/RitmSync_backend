using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;


namespace RitmSync_backend.Models;

[Table("post_genres")]
[PrimaryKey(nameof(PostId), nameof(GenresId))]
public class UserGenres
{
    [Column("user_id")]
    [Required]
    public int PostId { get; set; }

    [Column("genres_id")]
    [Required]
    public int GenresId { get; set; }

    [ForeignKey("PostId")]
    public Post Post { get; set; }

    [ForeignKey("GenresId")]
    public Genres Genre { get; set; }
}
