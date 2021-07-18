using ConcentradorBackend.Interfaces;
using ConcentradorBackend.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ConcentradorBackend.DataAccess
{
    public class ProspectoDataAccessLayer : IProspectoService
    {
        readonly ConcentradorDBContext _dbContext;

        public ProspectoDataAccessLayer(ConcentradorDBContext dbContext)
        {
            _dbContext = dbContext;
        }

        public void AddProspecto(Prospecto prospecto)
        {
            try
            {
                _dbContext.Prospecto.Add(prospecto);
                _dbContext.SaveChanges();
            } catch
            {
                throw;
            }
        }

        public void DeleteProspecto(int prospectoId)
        {
            try
            {
                Prospecto prospecto = _dbContext.Prospecto.Find(prospectoId);
                _dbContext.Prospecto.Remove(prospecto);
                _dbContext.SaveChanges();
            }
            catch
            {
                throw;
            }
        }

        public int GetProspectoId(int prospectoId)
        {
            try
            {
                Prospecto prospecto = _dbContext.Prospecto.FirstOrDefault(x => x.ProspectoId == prospectoId);
                if (prospecto != null)
                {
                    return prospecto.ProspectoId;
                }
                else
                {
                    return CreateProspecto(prospectoId);
                }
            }
            catch
            {

                throw;
            }
        }

        public List<Prospecto> GetAllProspecto()
        {
            try
            {
                return _dbContext.Prospecto.AsNoTracking().ToList();
            }
            catch
            {
                throw;
            }
        }

        public List<Departamento> GetDepartamentoProspecto(Prospecto prospectoId)
        {
            try
            {
                /*List<Departamento> lstDepartamentos = new List<Departamento>();
                lstDepartamentos = (from DepartamentoProspecto in _dbContext.Departamento select DepartamentoProspecto).ToList();
                return lstDepartamentos;*/
                return null;
            }
            catch
            {
                throw;
            }
        }

        public Prospecto GetProspecto(int prospectoId)
        {
            try
            {
                Prospecto prospecto = _dbContext.Prospecto.FirstOrDefault(x => x.ProspectoId == prospectoId);

                if (prospecto != null)
                {
                    _dbContext.Entry(prospecto).State = EntityState.Detached;
                    return prospecto;
                }

                return null;
            } catch
            {
                throw;
            }
        }

        public void UpdateProspecto(Prospecto prospecto)
        {
            try
            {
                Prospecto oldProspectoData = GetProspecto(prospecto.ProspectoId);

                if (oldProspectoData.Nombres != null)
                {
                    if(oldProspectoData.Nombres == null)
                    {
                        prospecto.ProspectoId = oldProspectoData.ProspectoId;
                    }
                }

                _dbContext.Entry(prospecto).State = EntityState.Modified;
                _dbContext.SaveChanges();
            }
            catch
            {
                throw;
            }

        }

        private int CreateProspecto(int prospectoId)
        {
            try
            {
                Prospecto creatProspecto = new()
                {
                    FechaRegistro = DateTime.Now.Date
                };

                _ = _dbContext.Prospecto.Add(creatProspecto);
                _dbContext.SaveChanges();

                return creatProspecto.ProspectoId;

            } catch
            {
                throw;
            }
        }

    }
}
