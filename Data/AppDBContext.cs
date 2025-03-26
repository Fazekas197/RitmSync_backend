using Microsoft.EntityFrameworkCore;
using RitmSync_backend.Models;

namespace RitmSync_backend.Data;

public class AppDBContext : DbContext
{
    public DbSet<User> Users { get; set; } = null!;
    public AppDBContext(DbContextOptions<AppDBContext> options) : base(options) { }
}
