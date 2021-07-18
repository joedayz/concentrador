namespace ConcentradorBackend.Models
{
    public partial class Opcion
    {
        public int OpcionId { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public string PathUrl { get; set; }
        public string Icono { get; set; }
        public bool Estado { get; set; }
        public int Orden { get; set; }
    }
}