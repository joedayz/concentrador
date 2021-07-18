using System;

namespace ConcentradorBackend.Dtos.Request
{
    public class ServicioRequest
    {
        public string NombreServicio { get; set; }
        public string Descripcion { get; set; }
        public string Codigo { get; set; }
        public decimal Tea { get; set; }
        public decimal Comisiones { get; set; }
        public decimal Seguro { get; set; }
        public int MontoMinimo { get; set; }
        public int PlazoMinimo { get; set; }
    }
}