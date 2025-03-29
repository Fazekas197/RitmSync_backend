using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;


namespace RitmSync_backend.Models;

[Table("post_genres")]
[PrimaryKey(nameof(PostId), nameof(GenresId))]
public class PostGenres
{
    [Column("post_id")]
    [Required]
    public int PostId { get; set; }

    [Column("genres_id")]
    [Required]
    public int GenresId { get; set; }

    [ForeignKey("PostId")]
    public Posts? Post { get; set; }

    [ForeignKey("GenresId")]
    public Genres? Genre { get; set; }
}
