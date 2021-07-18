use concentracion
go

CREATE    VIEW vw_consulta_movimiento(ProductoFinancieroId, Nombre, FechaRegistro, EntidadFinancieraId, NombreComercial, PorcentajeTea,
    Moneda, DetalleId, MontoMaximoDeposito, MontoMaximoPestamo, PlazoMaximoMes, Activo) as
	SELECT pf.ProductoFinancieroID,
       pf.Nombre,
       pf.FechaRegistro,
       ef.EntidadFinancieraID,
       ef.NombreComercial,
       pf.PorcentajeTea,
       p.Valor2                          AS moneda,
       dpf.DetalleProductoFinancieroID AS id_detalle,
       dpf.MontoMaximoDeposito,
       dpf.MontoMaximoPrestamo,
       pf.PlazoMaximoMes,
       pf.activo
FROM ProductoFinanciero pf
         JOIN EntidadFinanciera ef ON ef.EntidadFinancieraID = pf.EntidadFinancieraID
         JOIN DetalleProductoFinanciero dpf ON dpf.ProductoFinancieroID = pf.ProductoFinancieroID
         JOIN Parametro p ON p.ParametroID = dpf.TipoMonedaID
go

