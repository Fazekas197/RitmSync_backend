using Microsoft.EntityFrameworkCore;
using RitmSync_backend.Data;

namespace RitmSync_backend.Database;

public static class DatabaseSeeder
{
    public static void Seed(AppDBContext db)
    {
        if (!db.County.Any())
        {
            ExecuteSqlScript(db, "county.sql");
        }
        if (!db.Genres.Any())
        {
            ExecuteSqlScript(db, "genres.sql");
        }
        if (!db.Instruments.Any())
        {
            ExecuteSqlScript(db, "instruments.sql");
        }
    }

    private static void ExecuteSqlScript(AppDBContext db, string fileName)
    {
        var projectRootPath = Directory.GetCurrentDirectory();
        var scriptPath = Path.Combine(projectRootPath, "Database", "Scripts", fileName);

        if (File.Exists(scriptPath))
        {
            var sql = File.ReadAllText(scriptPath);
            db.Database.ExecuteSqlRaw(sql);
        }
    }
}
