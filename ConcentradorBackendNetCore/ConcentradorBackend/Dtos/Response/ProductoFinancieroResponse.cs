

namespace ConcentradorBackend.Dtos.Response
{
    public  class ProductoFinancieroResponse
    {
        public int ProductoFinancieroId { get; set; }
        public string Nombre { get; set; }
        public string Observacion { get; set; }
        public int PlazoMinimoDia { get; set; }
        public int PlazoMaximoDia { get; set; }
        public decimal PorcentajeTea { get; set; }
    }
}