create table ProductoFinanciero
(
    ProductoFinancieroID int identity
        constraint PK_ProductoFinanciero
            primary key,
    TipoProductoID       int,
    EntidadFinancieraID  int
        constraint FK_ProductoFinanciero_EntidadFinanciera
            references EntidadFinanciera
            on update cascade on delete cascade,
    Nombre               varchar(100),
    Descripcion          varchar(200),
    PorcentajeTea        decimal(10, 2),
    PorcentajeComision   decimal(10, 2),
    PorcentajeSeguro     decimal(10, 2),
    Observacion          varchar(500),
    PlazoMinimoMes       int,
    PlazoMaximoMes       int,
    PlazoMinimoDia       int,
    PlazoMaximoDia       int,
    TieneFondoSeguro     bit,
    UsuarioRegistro      varchar(100),
    FechaRegistro        datetime,
    UsuarioModifica      varchar(100),
    FechaModificacion    datetime,
    Activo               bit
)
go

INSERT INTO concentracion.dbo.ProductoFinanciero (ProductoFinancieroID, TipoProductoID, EntidadFinancieraID, Nombre, Descripcion, PorcentajeTea, PorcentajeComision, PorcentajeSeguro, Observacion, PlazoMinimoMes, PlazoMaximoMes, PlazoMinimoDia, PlazoMaximoDia, TieneFondoSeguro, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (1, 14, 1, N'Deposito BBVA Continental', N'Deposito BBVA Continental Free', 0.19, 0.23, 0.19, N'Deposito BBVA Continental con multiples beneficios', null, null, 60, 1800, null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO concentracion.dbo.ProductoFinanciero (ProductoFinancieroID, TipoProductoID, EntidadFinancieraID, Nombre, Descripcion, PorcentajeTea, PorcentajeComision, PorcentajeSeguro, Observacion, PlazoMinimoMes, PlazoMaximoMes, PlazoMinimoDia, PlazoMaximoDia, TieneFondoSeguro, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (2, 13, 1, N'Prestamo BBVA Continental', N'Prestamo BBVA Continental Online ', 0.19, 0.19, 1.09, N'Prestamo BBVA Continental con beneficios', 3, 60, null, null, null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO concentracion.dbo.ProductoFinanciero (ProductoFinancieroID, TipoProductoID, EntidadFinancieraID, Nombre, Descripcion, PorcentajeTea, PorcentajeComision, PorcentajeSeguro, Observacion, PlazoMinimoMes, PlazoMaximoMes, PlazoMinimoDia, PlazoMaximoDia, TieneFondoSeguro, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (3, 14, 2, N'Deposito Scotiabank', N'Deposito Scotiabank Free', 1.20, 0.90, 0.82, N'Deposito Scotiabank con beneficios', null, null, 30, 1600, null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO concentracion.dbo.ProductoFinanciero (ProductoFinancieroID, TipoProductoID, EntidadFinancieraID, Nombre, Descripcion, PorcentajeTea, PorcentajeComision, PorcentajeSeguro, Observacion, PlazoMinimoMes, PlazoMaximoMes, PlazoMinimoDia, PlazoMaximoDia, TieneFondoSeguro, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (4, 13, 2, N'Prestamo Scotiabank', N'Prestamo Scotiabank Online', 1.20, 1.45, 1.33, N'Prestamo Scotiabank Online - Cero Mantenimiento', 6, 49, null, null, null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO concentracion.dbo.ProductoFinanciero (ProductoFinancieroID, TipoProductoID, EntidadFinancieraID, Nombre, Descripcion, PorcentajeTea, PorcentajeComision, PorcentajeSeguro, Observacion, PlazoMinimoMes, PlazoMaximoMes, PlazoMinimoDia, PlazoMaximoDia, TieneFondoSeguro, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (5, 13, 3, N'Prestamo Interbank ', N'Prestamo Interbank Online', 0.20, 0.01, 0.02, N'Prestamo Interbank con beneficios clubsueldo', 3, 39, null, null, null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO concentracion.dbo.ProductoFinanciero (ProductoFinancieroID, TipoProductoID, EntidadFinancieraID, Nombre, Descripcion, PorcentajeTea, PorcentajeComision, PorcentajeSeguro, Observacion, PlazoMinimoMes, PlazoMaximoMes, PlazoMinimoDia, PlazoMaximoDia, TieneFondoSeguro, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (6, 14, 3, N'Deposito Interbank', N'Deposito Interbank Free', 1.29, 1.02, 0.23, N'Deposito Interbank con beneficios', null, null, 30, 1300, null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO concentracion.dbo.ProductoFinanciero (ProductoFinancieroID, TipoProductoID, EntidadFinancieraID, Nombre, Descripcion, PorcentajeTea, PorcentajeComision, PorcentajeSeguro, Observacion, PlazoMinimoMes, PlazoMaximoMes, PlazoMinimoDia, PlazoMaximoDia, TieneFondoSeguro, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (7, 13, 4, N'Prestamo BCP', N'Prestamo Trabajadores BCP ', 0.90, 0.45, 0.19, N'Prestamo Trabajadpres BCP  - ClubSueldo', 3, 60, null, null, null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO concentracion.dbo.ProductoFinanciero (ProductoFinancieroID, TipoProductoID, EntidadFinancieraID, Nombre, Descripcion, PorcentajeTea, PorcentajeComision, PorcentajeSeguro, Observacion, PlazoMinimoMes, PlazoMaximoMes, PlazoMinimoDia, PlazoMaximoDia, TieneFondoSeguro, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (8, 14, 4, N'Deposito BCP', N'Deposito BCP', 0.13, 0.34, 0.32, N'Deposito BCP', null, null, 30, 900, null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO concentracion.dbo.ProductoFinanciero (ProductoFinancieroID, TipoProductoID, EntidadFinancieraID, Nombre, Descripcion, PorcentajeTea, PorcentajeComision, PorcentajeSeguro, Observacion, PlazoMinimoMes, PlazoMaximoMes, PlazoMinimoDia, PlazoMaximoDia, TieneFondoSeguro, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (9, 14, 6, N'Deposito mi banco', N'Deposito club beneficiarios', 0.20, 0.19, 1.20, N'Deposito exclusivo para club Mi Banco', null, null, 30, 410, null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO concentracion.dbo.ProductoFinanciero (ProductoFinancieroID, TipoProductoID, EntidadFinancieraID, Nombre, Descripcion, PorcentajeTea, PorcentajeComision, PorcentajeSeguro, Observacion, PlazoMinimoMes, PlazoMaximoMes, PlazoMinimoDia, PlazoMaximoDia, TieneFondoSeguro, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (10, 13, 6, N'Prestamo Mi Banco', N'Prestamo Mi Banco Online', 0.12, 0.13, 0.43, N'Prestamo Mi Banco con beneficios ', 3, 50, null, null, null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);