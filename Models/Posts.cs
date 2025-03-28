using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace RitmSync_backend.Models;

[Table("posts")]
public class Posts
{
    [Column("id")]
    public int Id { get; set; }

    [Column("user_id")]
    [Required]
    public int UserId { get; set; }

    [Column("title")]
    [Required]
    [MaxLength(30)]
    public string Title { get; set; }

    [Column("county_id")]
    [Required]
    public int CountyId { get; set; }

    [Column("description")]
    [Required]
    public string Desc { get; set; }

    [Column("email")]
    public string? Email { get; set; }

    [Column("phone")]
    public string? Phone { get; set; }

    [ForeignKey("UserId")]
    public User User { get; set; }

    [ForeignKey("CountyId")]
    public County County { get; set; }
}
