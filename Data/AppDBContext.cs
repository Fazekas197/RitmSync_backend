using Microsoft.EntityFrameworkCore;
using RitmSync_backend.Models;

namespace RitmSync_backend.Data;

public class AppDBContext : DbContext
{
    public DbSet<User> Users { get; set; } = null!;
    public DbSet<County> County { get; set; } = null!;
    public DbSet<Genres> Genres { get; set; } = null!;
    public DbSet<Instruments> Instruments { get; set; } = null!;
    public DbSet<UserExperience> UserExperience { get; set; } = null!;
    public DbSet<UserGenres> UserGenres { get; set; } = null!;
    public DbSet<UserInstruments> UserInstruments { get; set; } = null!;
    public DbSet<UserSocials> UserSocials { get; set; } = null!;
    public DbSet<Posts> Posts { get; set; } = null!;


    public AppDBContext(DbContextOptions<AppDBContext> options) : base(options) { }
}
