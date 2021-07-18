namespace ConcentradorBackend.Dtos.Request
{
    public class ConsultaServicioRequest
    {
        public string NombreServicio { get; set; }
        public string NombreProducto { get; set; }
        public string CodigoServicio { get; set; }
        public int TipoMonedaId { get; set; }
        public int MontoMinimoAceptable { get; set; }
        public int Monto { get; set; }
        public int MontoMaximoAceptable { get; set; }
        public int PlazoMinimoMes { get; set; }
        public int PlazoMaximoMes { get; set; }
        public int DepartamentoId { get; set; }
        public string NombreDepartamento { get; set; }
        public int TipoInstitucionId { get; set; }
        public string TipoInstitucion { get; set; }
        
    }
}