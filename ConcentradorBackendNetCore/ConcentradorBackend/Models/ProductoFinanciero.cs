using System;

namespace ConcentradorBackend.Models
{
    public partial class ProductoFinanciero
    {
        public int ProductoFinancieroId { get; set; }
        public int TipoProductoId { get; set; }
        public int EntidadFinancieraId { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public decimal PorcentajeTea { get; set; }
        public decimal PorcentajeComision { get; set; }
        public decimal PorcentajeSeguro { get; set; }
        public string Observacion { get; set; }
        public int PlazoMinimoMes { get; set; }
        public int PlazoMaximoMes { get; set; }
        public int PlazoMinimoDia { get; set; }
        public int PlazoMaximoDia { get; set; }
        public bool TieneFondoSeguro { get; set; }
        public string UsuarioRegistro { get; set; }
        public DateTime FechaRegistro { get; set; }
        public string UsuarioModifica { get; set; }
        public DateTime FechaModificacion { get; set; }
        public bool Activo { get; set; }
    }
}