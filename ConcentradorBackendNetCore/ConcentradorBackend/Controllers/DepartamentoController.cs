using System.Collections.Generic;
using System.Threading.Tasks;
using ConcentradorBackend.Interfaces;
using ConcentradorBackend.Models;
using Microsoft.AspNetCore.Mvc;

namespace ConcentradorBackend.Controllers
{
    [Produces("application/json")]
    [Route("api/[controller]")]
    public class DepartamentoController : Controller
    {
        
        private readonly IDepartamentoService _departamentoService;

        public DepartamentoController(IDepartamentoService departamentoService)
        {
            _departamentoService = departamentoService;
        }
        
        /// <summary>
        /// Get the list of available departamentos
        /// </summary>
        /// <returns>List of Departamento</returns>
        [HttpGet]
        public async Task<List<Departamento>> Get()
        {
            return await Task.FromResult(_departamentoService.GetAllDepartamentos()).ConfigureAwait(true) ;
        }
    }
}