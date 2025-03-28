using DotNetEnv;
using Microsoft.EntityFrameworkCore;
using RitmSync_backend.Data;
using RitmSync_backend.Endpoints;

Env.Load();

var builder = WebApplication.CreateBuilder(args);

var connectionString = Environment.GetEnvironmentVariable("CONNECTION_STRING");

builder.Services.AddDbContext<AppDBContext>(options =>
    options.UseNpgsql(connectionString));

var app = builder.Build();

app.MapUserEndpoints();

app.Run();
