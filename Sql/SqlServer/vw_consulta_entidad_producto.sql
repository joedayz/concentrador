use concentracion
go

CREATE    VIEW vw_consulta_entidad_producto (ProductoFinancieroId, TipoProductoId, TipoInstitucionId,
    Producto, PathImagen, MonedaId, Moneda, PorcentajeTea, ConsultaEntidadProductoId,
    MontoMinimoDeposito, MontoMaximoDeposito, MontoMinimoPrestamo, MontoMaximoPrestamo, IngresoPermitido,
    PorcentajeComision, PorcentajeSeguro,
    PlazoMinimoDia, PlazoMaximoDia, PlazoMinimoMes, PlazoMaximoMes, Nombre, Descripcion,
    Observacion, DepartamentoId, Ubicacion)
 AS SELECT pf.ProductoFinancieroID,
       pf.TipoProductoID,
       ef.TipoInstitucionID,
       ef.NombreComercial                AS Producto,
       ef.PathImagen,
        pa.ParametroID                    AS MonedaId,
       pa.Valor2                         AS Moneda,
       pf.PorcentajeTea,
       dpf.DetalleProductoFinancieroID AS ConsultaEntidadProductoId,
       dpf.MontoMinimoDeposito,
       dpf.MontoMaximoDeposito,
       dpf.MontoMinimoPrestamo,
       dpf.MontoMaximoPrestamo,
       dpf.IngresoPermitido,
       pf.PorcentajeComision,
       pf.PorcentajeSeguro,
       pf.PlazoMinimoDia,
       pf.PlazoMaximoDia,
       pf.PlazoMinimoMes,
       pf.PlazoMaximoMes,
       pf.nombre,
       pf.descripcion,
       pf.observacion,
       de.DepartamentoID,
       de.nombre                          AS Ubicacion

FROM ProductoFinanciero pf
         JOIN EntidadFinanciera ef ON ef.EntidadFinancieraID = pf.EntidadFinancieraID
         JOIN DetalleProductoFinanciero dpf ON dpf.ProductoFinancieroID = pf.ProductoFinancieroID
         JOIN Parametro pa ON pa.ParametroID = dpf.TipoMonedaID
         JOIN Departamento de ON de.DepartamentoID = ef.DepartamentoID
go

