using System.Collections.Generic;
using System.Linq;
using ConcentradorBackend.Interfaces;
using ConcentradorBackend.Models;
using Microsoft.EntityFrameworkCore;

namespace ConcentradorBackend.DataAccess
{
    public class DepartamentoDataAccessLayer: IDepartamentoService
    {
    
            private readonly ConcentradorDBContext _dbContext;
            //readonly IDepartamentoService _departamentoService;

            public DepartamentoDataAccessLayer(ConcentradorDBContext dbContext)
            {
                _dbContext = dbContext;
            }

        public List<Departamento> GetAllDepartamentos()
        {
            try
            {
                return _dbContext.Departamento.AsNoTracking().ToList();
            }
            catch
            {
                throw;
            }
        }
    }
}