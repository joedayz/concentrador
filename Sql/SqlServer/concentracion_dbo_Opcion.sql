create table Opcion
(
    OpcionID    int identity
        constraint PK_Opcion
            primary key,
    Nombre      varchar(100),
    Descripcion varchar(200),
    PathUrl     varchar(200),
    Icono       varchar(100),
    Estado      bit,
    Orden       int
)
go

INSERT INTO concentracion.dbo.Opcion (OpcionID, Nombre, Descripcion, PathUrl, Icono, Estado, Orden) VALUES (1, N'Deposito Plazo', N'Deposito de dinero', N'/deposito-plazo/result', N'fas fa-money-bill', 1, 2);
INSERT INTO concentracion.dbo.Opcion (OpcionID, Nombre, Descripcion, PathUrl, Icono, Estado, Orden) VALUES (2, N'Prestamos Personales', N'Prestamo de dinero', N'/prestamo/result', N'fas fa-hand-holding-usd', 1, 1);