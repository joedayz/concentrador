using System.Collections.Generic;
using System.Linq;
using ConcentradorBackend.Interfaces;
using ConcentradorBackend.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace ConcentradorBackend.DataAccess
{
    public class OpcionDataAccessLayer: IOpcionService
    {
        private readonly ConcentradorDBContext _dbContext;
        readonly IOpcionService _opcionService;

        public OpcionDataAccessLayer(ConcentradorDBContext dbContext)
        {
            _dbContext = dbContext;
        }
        
        /// <summary>
        /// Get the list of available opciones
        /// </summary>
        /// <returns>List of Opciones</returns>
        [HttpGet]
        public List<Opcion> GetAllOpciones()
        {
            try
            {
                return _dbContext.Opcion.AsNoTracking().ToList();
            }
            catch
            {
                throw;
            }
                
        }
        
        
        /// <summary>
        /// Add a new opcion record
        /// </summary>
        /// <returns></returns>
        [HttpPost, DisableRequestSizeLimit]
        public int Post(Opcion opcion)
        {
            

            return _opcionService.AddOpcion(opcion);
        }
        
        public int AddOpcion(Opcion opcion)
        {
            try
            {
                _dbContext.Opcion.Add(opcion);
                _dbContext.SaveChanges();

                return 1;
            }
            catch
            {
                throw;
            }
        }
        
    }
}