create table Prospecto
(
    ProspectoID     int identity
        constraint PK_Prospecto
            primary key,
    Nombres         varchar(200),
    Apellidos       varchar(200),
    TipoDocumentoID int,
    NumeroDocumento varchar(20),
    Email           varchar(200),
    NumeroCelular   varchar(20),
    DepartamentoID  int,
    FechaRegistro   datetime,
    Activo          bit
)
go

