using System.Collections.Generic;
using ConcentradorBackend.Models;

namespace ConcentradorBackend.Interfaces
{
    public interface IDepartamentoService
    {
        List<Departamento> GetAllDepartamentos();
    }
}