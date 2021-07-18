create table DetalleProductoFinanciero
(
    DetalleProductoFinancieroID int identity
        constraint PK_DetalleProductoFinanciero
            primary key,
    ProductoFinancieroID        int
        constraint FK_DetalleProductoFinanciero_ProductoFinanciero
            references ProductoFinanciero
            on update cascade on delete cascade,
    TipoMonedaID                int,
    IngresoPermitido            int,
    MontoMinimoPrestamo         decimal(10, 2),
    MontoMaximoPrestamo         decimal(10, 2),
    MontoMinimoDeposito         decimal(10, 2),
    MontoMaximoDeposito         decimal(10, 2)
)
go

INSERT INTO concentracion.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (1, 1, 5, null, null, null, 1500.00, 4580.00);
INSERT INTO concentracion.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (2, 1, 6, null, null, null, 1400.00, 4200.00);
INSERT INTO concentracion.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (3, 1, 6, null, null, null, 1100.00, 4500.00);
INSERT INTO concentracion.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (4, 2, 6, 4000, 1000.00, 99001.00, null, null);
INSERT INTO concentracion.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (5, 2, 5, 4000, 1000.00, 10000.00, null, null);
INSERT INTO concentracion.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (6, 3, 6, null, null, null, 1000.00, 79000.00);
INSERT INTO concentracion.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (7, 3, 5, null, null, null, 1000.00, 80000.00);
INSERT INTO concentracion.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (8, 4, 5, 500, 1000.00, 8000.00, null, null);
INSERT INTO concentracion.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (9, 4, 6, 500, 1000.00, 12000.00, null, null);
INSERT INTO concentracion.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (10, 5, 5, 500, 1000.00, 52000.00, null, null);
INSERT INTO concentracion.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (11, 5, 6, 500, 1000.00, 46000.00, null, null);
INSERT INTO concentracion.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (12, 6, 5, null, null, null, 1000.00, 69000.00);
INSERT INTO concentracion.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (13, 6, 6, null, null, null, 1000.00, 69000.00);
INSERT INTO concentracion.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (14, 8, 6, null, null, null, 1000.00, 39000.00);
INSERT INTO concentracion.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (15, 8, 5, null, null, null, 1000.00, 49000.00);
INSERT INTO concentracion.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (16, 9, 5, null, null, null, 1000.00, 20000.00);
INSERT INTO concentracion.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (17, 9, 6, null, null, null, 1000.00, 19000.00);
INSERT INTO concentracion.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (18, 10, 5, 500, 1000.00, 2000.00, null, null);
INSERT INTO concentracion.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (19, 10, 6, 1000, 1000.00, 48000.00, null, null);