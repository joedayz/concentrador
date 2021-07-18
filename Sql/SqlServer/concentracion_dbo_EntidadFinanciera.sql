create table EntidadFinanciera
(
    EntidadFinancieraID int identity
        constraint PK_EntidadFinanciera
            primary key,
    RazonSocial         varchar(200),
    NombreComercial     varchar(200),
    PathImagen          varchar(200),
    TipoInstitucionID   int,
    DepartamentoID      int
        constraint FK_EntidadFinanciera_Departamento
            references Departamento
            on update cascade on delete cascade,
    TipoDocumentoID     int,
    NumeroDocumento     varchar(20),
    Direccion           varchar(200),
    Telefono            varchar(20),
    Correo              varchar(100),
    PaginaWeb           varchar(100),
    UsuarioRegistro     varchar(100),
    FechaRegistro       datetime,
    UsuarioModifica     varchar(100),
    FechaModificacion   datetime,
    Activo              bit
)
go

INSERT INTO concentracion.dbo.EntidadFinanciera (EntidadFinancieraID, RazonSocial, NombreComercial, PathImagen, TipoInstitucionID, DepartamentoID, TipoDocumentoID, NumeroDocumento, Direccion, Telefono, Correo, PaginaWeb, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (1, N'BBVA CONTINENTAL', N'BBVA Continental', N'https://enviotodo.pe/wp-content/uploads/2020/01/logobbva.png', 8, 2, 3, N'000292992', N'Av. Mandamiento - 903 ', N'03939393', N'bbva@gmail.com', null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO concentracion.dbo.EntidadFinanciera (EntidadFinancieraID, RazonSocial, NombreComercial, PathImagen, TipoInstitucionID, DepartamentoID, TipoDocumentoID, NumeroDocumento, Direccion, Telefono, Correo, PaginaWeb, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (2, N'SCOTIABANK', N'Scotiabank', N'https://style.shockvisual.net/wp-content/uploads/2019/05/logo-scotiabank.png', 8, 1, 3, N'39999393933', N'Av. Plaza CC - San Isidro', N'92929202', N'scotiabank@gmail.com', null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO concentracion.dbo.EntidadFinanciera (EntidadFinancieraID, RazonSocial, NombreComercial, PathImagen, TipoInstitucionID, DepartamentoID, TipoDocumentoID, NumeroDocumento, Direccion, Telefono, Correo, PaginaWeb, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (3, N'INTERBANK', N'Interbank', N'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQaIaVxDUfkWpVFOrqFJQhUMXMwVd7AnX4BJg&usqp=CAU', 8, 3, 3, N'93930303', N'Av. Saenz Peña 90 - Malaga', N'393930302', N'interbank@interbank.pe', null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO concentracion.dbo.EntidadFinanciera (EntidadFinancieraID, RazonSocial, NombreComercial, PathImagen, TipoInstitucionID, DepartamentoID, TipoDocumentoID, NumeroDocumento, Direccion, Telefono, Correo, PaginaWeb, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (4, N'BCP', N'Banco Credito Peru', N'https://logovtor.com/wp-content/uploads/2020/03/banco-de-credito-del-peru-bcp-logo-vector.png', 8, 1, 3, N'121312322', N'Av. Saenz Peña #428', N'2323390', N'bancocreditoperu@bcp.com.pe', null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO concentracion.dbo.EntidadFinanciera (EntidadFinancieraID, RazonSocial, NombreComercial, PathImagen, TipoInstitucionID, DepartamentoID, TipoDocumentoID, NumeroDocumento, Direccion, Telefono, Correo, PaginaWeb, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (5, N'MI BANCO ', N'Mi Banco', N'https://www.mibanco.com.pe/repositorioaps/data/1/1/1/zon/zona-logo/images/logo.png', 8, 3, 3, N'393939302', N'AV. Puente Nuevo # 940 - Bellavista', N'22828289', N'mibanco@outlook.pe', null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO concentracion.dbo.EntidadFinanciera (EntidadFinancieraID, RazonSocial, NombreComercial, PathImagen, TipoInstitucionID, DepartamentoID, TipoDocumentoID, NumeroDocumento, Direccion, Telefono, Correo, PaginaWeb, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (6, N'CAJA SULLANA', N'Sullana', N'https://seeklogo.com/images/C/caja-sullana-logo-B67137F998-seeklogo.com.png', 9, 1, 3, N'233030303', N'Av. Nicolas Pierola #890 - Lince', N'7373738', N'cajasullana@hotmail.com', null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO concentracion.dbo.EntidadFinanciera (EntidadFinancieraID, RazonSocial, NombreComercial, PathImagen, TipoInstitucionID, DepartamentoID, TipoDocumentoID, NumeroDocumento, Direccion, Telefono, Correo, PaginaWeb, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (7, N'CAJA DEL SANTA', N'Caja Del Santa', N'https://sevend.pe/images/clientes/caja%20del%20santa.png', 9, 2, 3, N'484849302', N'Av. Mesa Redonda 890', N'2311111', N'cajasanta@gmail.com', null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);