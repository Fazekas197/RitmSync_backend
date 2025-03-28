using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace RitmSync_backend.Models;

[Table("post_socials")]
public class PostSocials
{
    [Column("id")]
    public int Id { get; set; }

    [Column("post_id")]
    [Required]
    public int PostId { get; set; }

    [Column("platform")]
    [Required]
    [MaxLength(60)]
    public string Platform { get; set; }

    [Column("link")]
    [Required]
    public string Link { get; set; }

    [ForeignKey("PostId")]
    public Posts Post { get; set; }
}
