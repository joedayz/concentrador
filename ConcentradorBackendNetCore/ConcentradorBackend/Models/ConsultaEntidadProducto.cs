using System.ComponentModel.DataAnnotations.Schema;

namespace ConcentradorBackend.Models
{
    [Table("vw_consulta_entidad_producto")]
    public partial class ConsultaEntidadProducto
    {
         public int ConsultaEntidadProductoId { get; set; }
         public int? ProductoFinancieroId { get; set; }
         public int? TipoProductoId { get; set; }
         public int? TipoInstitucionId { get; set; }
         public string? Producto { get; set; }
         public string? PathImagen { get; set; }
         public int? MonedaId { get; set; }
         public string? Moneda { get; set; }
         public decimal? PorcentajeTea { get; set; }
         public decimal? MontoMinimoDeposito { get; set; }
         public decimal? MontoMaximoDeposito { get; set; }
         public decimal? MontoMinimoPrestamo { get; set; }
         public decimal? MontoMaximoPrestamo { get; set; }
         public int? IngresoPermitido { get; set; }
         public decimal? PorcentajeComision { get; set; }
         public decimal? PorcentajeSeguro { get; set; }
         public int? PlazoMinimoDia { get; set; }
         public int? PlazoMaximoDia { get; set; }
         public int? PlazoMinimoMes { get; set; }
         public int? PlazoMaximoMes { get; set; }
         public int? DepartamentoId { get; set; }
         public string? Ubicacion { get; set; }
         public string? Nombre { get; set; }
         public string? Descripcion { get; set; }
         public string? Observacion { get; set; }

    }
}