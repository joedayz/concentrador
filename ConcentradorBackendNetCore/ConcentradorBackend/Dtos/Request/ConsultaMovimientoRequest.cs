namespace ConcentradorBackend.Dtos.Request
{
    public class ConsultaMovimientoRequest
    {
        public int EntidadId { get; set; }
        public int ProductoId { get; set; }
        public string FechaDesde { get; set; }
        public string FechaHasta { get; set; }
    }
}