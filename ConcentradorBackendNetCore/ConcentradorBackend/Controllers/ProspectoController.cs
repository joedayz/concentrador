using ConcentradorBackend.Interfaces;
using ConcentradorBackend.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ConcentradorBackend.Controllers
{
    [Produces("application/json")]
    [Route("api/[controller]")]
    public class ProspectoController : ControllerBase
    {
        readonly IProspectoService _prospectoService;

        public ProspectoController(IProspectoService prospectoService)
        {
            _prospectoService = prospectoService;
        }
        
        [HttpGet]
        public async Task<IEnumerable<Prospecto>> GetProspectos()
        {
            return await Task.FromResult(_prospectoService.GetAllProspecto());
        }

        [HttpGet("{id}")]
        public IActionResult GetProspectoId(int id)
        {
            Prospecto prospecto = _prospectoService.GetProspecto(id);
            if(prospecto != null)
            {
                return Ok(prospecto);
            }
            return NotFound();
        }

        [HttpGet]
        [Route("/all")]
        public async Task<List<Prospecto>> GetAllProspecto()
        {
            return await Task.FromResult(_prospectoService.GetAllProspecto());
        }

        [HttpPost]
        public int SaveProspecto([FromBody] Prospecto prospecto)
        {
             prospecto.FechaRegistro = DateTime.Now.Date;
            _prospectoService.AddProspecto(prospecto);
            return prospecto.ProspectoId;
        }

        [HttpPut("{id}")]
        public IActionResult UpdateProspecto([FromBody] Prospecto prospecto)
        {
            _prospectoService.UpdateProspecto(prospecto);
            var message = new Message()
            {
                Mensaje = "Prospecto " + prospecto.ProspectoId + " fue actualizado"
            };

            //return Ok("Prospecto " + prospecto.ProspectoId + " fue actualizado");
            return Ok(message);
        }

        [HttpDelete("{id}")]
        public IActionResult DeleteProspecto(int id)
        {
            _prospectoService.DeleteProspecto(id);

            var message = new Message()
            {
                Mensaje = "Prospecto " + id + " fue eliminando"
            };

            return Ok(message);
        }

    }

    public class Message
    {
        public string Mensaje { get; set; }
    }
}
