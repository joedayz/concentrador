using System.Collections.Generic;
using System.Threading.Tasks;
using ConcentradorBackend.Interfaces;
using ConcentradorBackend.Models;
using Microsoft.AspNetCore.Mvc;

namespace ConcentradorBackend.Controllers
{
    [Produces("application/json")]
    [Route("api/[controller]")]
    public class OpcionController : Controller
    {
        private readonly IOpcionService _opcionService;

        public OpcionController(IOpcionService opcionService)
        {
            _opcionService = opcionService;
        }
        
        
        /// <summary>
        /// Get the list of available opciones
        /// </summary>
        /// <returns>List of Opcion</returns>
        [HttpGet]
        public async Task<List<Opcion>> Get()
        {
            return await Task.FromResult(_opcionService.GetAllOpciones()).ConfigureAwait(true) ;
        }
    }
}