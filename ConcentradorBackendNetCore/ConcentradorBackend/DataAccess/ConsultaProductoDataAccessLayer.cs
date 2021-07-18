using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ConcentradorBackend.Dtos.Request;
using ConcentradorBackend.Interfaces;
using ConcentradorBackend.Models;
using ConcentradorBackend.Util;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;

namespace ConcentradorBackend.DataAccess
{
    public class ConsultaProductoDataAccessLayer: IConsultaProductoService
    {
        private readonly ConcentradorDBContext _dbContext;
        //readonly IConsultaProductoService _consultaProductoService;

        public ConsultaProductoDataAccessLayer(ConcentradorDBContext dbContext)
        {
            _dbContext = dbContext;
        }

        
        public List<ConsultaEntidadProducto> consulta(ConsultaProductoFinancieroRequest request, int pagina)
        {
            try
            {
                if (pagina == 0)
                {
                    pagina = 1;
                }

                var consulta = from cep in _dbContext.ConsultaEntidadProducto

                select cep;
                
                if (!String.IsNullOrEmpty(request.CodigoProductoFinanciero.ToString()))
                {
                    consulta = consulta.Where(s => s.TipoProductoId == request.CodigoProductoFinanciero);
                }
                if (!String.IsNullOrEmpty(request.MontoMaximoAceptable.ToString()))
                {
                    consulta = consulta.Where(s => s.MontoMaximoPrestamo >= request.MontoMaximoAceptable);
                }
                if (!String.IsNullOrEmpty(request.PlazoMaximoMes.ToString()))
                {
                    consulta = consulta.Where(s => s.PlazoMaximoMes >= request.PlazoMaximoMes);
                }
                if (!String.IsNullOrEmpty(request.IngresoPermitido.ToString()))
                {
                    consulta = consulta.Where(s => s.IngresoPermitido >= request.IngresoPermitido);
                }
                if (!String.IsNullOrEmpty(request.DepartamentoId.ToString()))
                {
                    consulta = consulta.Where(s => s.DepartamentoId == request.DepartamentoId);
                }
                if (!String.IsNullOrEmpty(request.TipoInstitucionId.ToString()))
                {
                    consulta = consulta.Where(s => s.TipoInstitucionId == request.TipoInstitucionId);
                }
                if (!String.IsNullOrEmpty(request.MontoMaximoDeposito.ToString()))
                {
                    consulta = consulta.Where(s => s.MontoMaximoDeposito >= request.MontoMaximoDeposito);
                }
                if (!String.IsNullOrEmpty(request.PlazoMaximoDia.ToString()))
                {
                    consulta = consulta.Where(s => s.PlazoMaximoDia >= request.PlazoMaximoDia);
                }
                return (List<ConsultaEntidadProducto>) consulta
                    .AsNoTracking()
                    .OrderBy(x => x.ConsultaEntidadProductoId)
                    .GetPaged(pagina, 20).Results;
            }
            catch
            {
                throw;
            }
        }

        public ConsultaEntidadProducto ConsultaId(int ConsultaEntidadProductoId)
        {
            try
            {
                ConsultaEntidadProducto consultaEntidadProducto = _dbContext.ConsultaEntidadProducto.FirstOrDefault(x => x.ConsultaEntidadProductoId == ConsultaEntidadProductoId);

                if (consultaEntidadProducto != null)
                {
                    _dbContext.Entry(consultaEntidadProducto).State = EntityState.Detached;
                    return consultaEntidadProducto;
                }

                return null;
            }
            catch
            {
                throw;
            }
        }
    }
}