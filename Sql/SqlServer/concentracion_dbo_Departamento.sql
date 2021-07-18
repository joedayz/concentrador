create table Departamento
(
    DepartamentoID int identity
        constraint PK_Departamento
            primary key,
    Nombre         varchar(100),
    Estado         bit
)
go

INSERT INTO concentracion.dbo.Departamento (DepartamentoID, Nombre, Estado) VALUES (1, N'Lima', 1);
INSERT INTO concentracion.dbo.Departamento (DepartamentoID, Nombre, Estado) VALUES (2, N'Amazonas', 1);
INSERT INTO concentracion.dbo.Departamento (DepartamentoID, Nombre, Estado) VALUES (3, N'Arequipa', 1);
INSERT INTO concentracion.dbo.Departamento (DepartamentoID, Nombre, Estado) VALUES (4, N'Apurimac', 1);
INSERT INTO concentracion.dbo.Departamento (DepartamentoID, Nombre, Estado) VALUES (5, N'Ayacucho', 1);
INSERT INTO concentracion.dbo.Departamento (DepartamentoID, Nombre, Estado) VALUES (6, N'Cajamarca', 1);
INSERT INTO concentracion.dbo.Departamento (DepartamentoID, Nombre, Estado) VALUES (7, N'Cusco', 1);