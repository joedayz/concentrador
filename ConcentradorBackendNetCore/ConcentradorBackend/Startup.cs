using ConcentradorBackend.DataAccess;
using ConcentradorBackend.Interfaces;
using ConcentradorBackend.Models;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.OpenApi.Models;
using System.Linq;

namespace ConcentradorBackend
{
    public class Startup
    {
        readonly string MyPolicy = "_myPolicy";
        
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddDbContext<ConcentradorDBContext>(options => options.UseSqlServer(Configuration["ConnectionStrings:DefaultConnection"]));
            
            services.AddTransient<IOpcionService, OpcionDataAccessLayer>();
            services.AddTransient<IDepartamentoService, DepartamentoDataAccessLayer>();
            services.AddTransient<IConsultaProductoService, ConsultaProductoDataAccessLayer>();
            services.AddTransient<IProspectoService, ProspectoDataAccessLayer>();
            
            services.AddControllers();
            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1", new OpenApiInfo {Title = "ConcentradorBackend", Version = "v1"});
                c.ResolveConflictingActions(apiDescriptions => apiDescriptions.First());
            });
            
            services.AddCors(options =>
            {
                options.AddPolicy(name: MyPolicy,
                    builder =>
                    {
                        builder.WithOrigins("http://localhost:4200"

                            )
                            .AllowAnyMethod().AllowAnyHeader().AllowAnyOrigin();
                    });
            });
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseSwagger();
                app.UseSwaggerUI(c => c.SwaggerEndpoint("/swagger/v1/swagger.json", "ConcentradorBackend v1"));
            }

            app.UseHttpsRedirection();

            app.UseRouting();

            app.UseAuthorization();

            app.UseCors(MyPolicy);

            //app.UseEndpoints(endpoints => { endpoints.MapControllers(); });
            
            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller}/{action=Index}/{id?}");
            });
        }
    }
}