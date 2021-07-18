using ConcentradorBackend.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ConcentradorBackend.Interfaces
{
    public interface IProspectoService
    {
        List<Prospecto> GetAllProspecto();
        void AddProspecto(Prospecto prospecto);
        void UpdateProspecto(Prospecto prospecto);
        Prospecto GetProspecto(int prospectoId);
        void DeleteProspecto(int prospectoId);
        List<Departamento> GetDepartamentoProspecto(Prospecto prospectoId);

    }
}
