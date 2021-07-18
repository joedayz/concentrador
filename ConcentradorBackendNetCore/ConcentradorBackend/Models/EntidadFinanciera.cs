using System;

namespace ConcentradorBackend.Models
{
    public partial class EntidadFinanciera
    {
        public int EntidadFinancieraId { get; set; }
        public string RazonSocial { get; set; }
        public string NombreComercial { get; set; }
        public string PathImagen { get; set; }
        public int TipoInstitucionId { get; set; }
        public int DepartamentoId { get; set; }
        public int TipoDocumentoId { get; set; }
        public string NumeroDocumento { get; set; }
        public string Direccion { get; set; }
        public string Telefono { get; set; }
        public string Correo { get; set; }
        public string PaginaWeb { get; set; }
        public string UsuarioRegistro { get; set; }
        public DateTime FechaRegistro { get; set; }
        public string UsuarioModifica { get; set; }
        public DateTime FechaModificacion { get; set; }
    }
}