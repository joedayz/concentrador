using Microsoft.EntityFrameworkCore;

namespace ConcentradorBackend.Models
{
    public partial class ConcentradorDBContext: DbContext
    {
        public ConcentradorDBContext()
        {
        }

        public ConcentradorDBContext(DbContextOptions<ConcentradorDBContext> options)
            : base(options)
        {
        }
        
        public virtual DbSet<Opcion> Opcion { get; set; }
        public virtual DbSet<Departamento> Departamento { get; set; }
        public virtual DbSet<ConsultaEntidadProducto> ConsultaEntidadProducto { get; set; }
        public virtual DbSet<Prospecto> Prospecto { get; set; }
        public virtual DbSet<ProductoFinanciero> ProductoFinanciero { get; set; }
        public virtual DbSet<EntidadFinanciera> EntidadFinanciera { get; set; }
        public virtual DbSet<DetalleProductoFinanciero> DetalleProductoFinanciero { get; set; }

    }
}