using System;

namespace ConcentradorBackend.Dtos.Request
{
    public class ConsultaProductoFinancieroRequest
    {
        public int CodigoProductoFinanciero { get; set; }
        public int? TipoMonedaId { get; set; }
        public decimal? MontoMinimoAceptable { get; set; }
        public decimal? MontoMaximoAceptable { get; set; }
        public int? PlazoMinimoMes { get; set; }
        public int? PlazoMaximoMes { get; set; }
        public int? IngresoPermitido { get; set; }
        public int? DepartamentoId { get; set; }
        public int? TipoInstitucionId { get; set; }
        public int? MontoMinimoDeposito { get; set; }
        public int? MontoMaximoDeposito { get; set; }
        public int? PlazoMinimoDia { get; set; }
        public int? PlazoMaximoDia { get; set; }
    }
}