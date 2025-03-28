using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;


namespace RitmSync_backend.Models;

[Table("post_instruments")]
[PrimaryKey(nameof(PostId), nameof(InstrumentId))]
public class PostInstruments
{
    [Column("post_id")]
    [Required]
    public int PostId { get; set; }

    [Column("instrument_id")]
    [Required]
    public int InstrumentId { get; set; }

    [ForeignKey("PostId")]
    public Post Post { get; set; }

    [ForeignKey("InstrumentId")]
    public Instruments Instrument { get; set; }
}
