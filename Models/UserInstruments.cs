using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;


namespace RitmSync_backend.Models;

[Table("user_instruments")]
[PrimaryKey(nameof(UserId), nameof(InstrumentId))]
public class UserInstruments
{
    [Column("user_id")]
    [Required]
    public int UserId { get; set; }

    [Column("instrument_id")]
    [Required]
    public int InstrumentId { get; set; }

    [ForeignKey("UserId")]
    public User User { get; set; }

    [ForeignKey("InstrumentId")]
    public Instruments Instrument { get; set; }
}
