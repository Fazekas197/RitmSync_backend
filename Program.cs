using DotNetEnv;
using Microsoft.EntityFrameworkCore;
using RitmSync_backend.Data;
using RitmSync_backend.Database;
using RitmSync_backend.Endpoints;

Env.Load();

var builder = WebApplication.CreateBuilder(args);

var connectionString = Environment.GetEnvironmentVariable("CONNECTION_STRING");

builder.Services.AddDbContext<AppDBContext>(options =>
    options.UseNpgsql(connectionString));

builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowAll", policy =>
    {
        policy
            .AllowAnyOrigin()
            .AllowAnyHeader()
            .AllowAnyMethod();
    });
});

var app = builder.Build();

app.UseCors("AllowAll");

using (var scope = app.Services.CreateScope())
{
    var db = scope.ServiceProvider.GetRequiredService<AppDBContext>();
    DatabaseSeeder.Seed(db);
}

app.MapUserEndpoints();
app.MapStaticDataEndpoints();
app.MapPostsEndpoints();

app.Run();
