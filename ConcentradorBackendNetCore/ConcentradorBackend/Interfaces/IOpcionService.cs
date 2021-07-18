using System.Collections.Generic;
using ConcentradorBackend.Models;

namespace ConcentradorBackend.Interfaces
{
    public interface IOpcionService
    {
        List<Opcion> GetAllOpciones();
        int AddOpcion(Opcion opcion);
    }
}