
namespace ConcentradorBackend.Models
{
    public partial class DetalleProductoFinanciero
    {
        public int DetalleProductoFinancieroId { get; set; }
        public int ProductoFinancieroId { get; set; }
        public int TipoMonedaId { get; set; }
        public int IngresoPermitido { get; set; }
        public decimal MontoMinimoPrestamo { get; set; }
        public decimal MontoMaximoPrestamo { get; set; }
        public decimal MontoMinimoDeposito { get; set; }
        public decimal MontoMaximoDeposito { get; set; }
    }
}