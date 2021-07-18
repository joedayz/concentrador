using ConcentradorBackend.Interfaces;
using ConcentradorBackend.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ConcentradorBackend.DataAccess
{
    public class ProductoFinancieroDataAccessLayer : IProductoFinanciero
    {
        readonly ConcentradorDBContext _dbContext;

        public ProductoFinancieroDataAccessLayer(ConcentradorDBContext dbContext)
        {
            _dbContext = dbContext;
        }

        public ProductoFinanciero GetProductoFinanciero(int ProductoFinancieroId)
        {
            try
            {
                ProductoFinanciero productoFinanciero = _dbContext.ProductoFinanciero.FirstOrDefault(x => x.ProductoFinancieroId == ProductoFinancieroId);
                if (productoFinanciero != null)
                {
                    return productoFinanciero;
                }
                else
                {
                    return null;
                }
            }
            catch
            {
                throw;
            }
        }
    }
}
