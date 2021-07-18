using ConcentradorBackend.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ConcentradorBackend.Interfaces
{
    public interface IProductoFinanciero
    {
        ProductoFinanciero GetProductoFinanciero(int ProductoFinancieroId);
    }
}
