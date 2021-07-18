using System.Collections.Generic;

namespace ConcentradorBackend.Dtos.Response
{
    public class CollectionResponse<T>
    {
        public IList<T> Elementos { get; set; }
        public int TotalElementos { get; set; }
        public int TotalPaginas { get; set; }
        public int PaginaActual { get; set; }
    }
}