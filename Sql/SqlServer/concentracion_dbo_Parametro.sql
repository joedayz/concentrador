create table Parametro
(
    ParametroID int identity
        constraint PK_Parametro
            primary key,
    CodigoPadre varchar(10),
    CodigoHijo  varchar(10),
    Valor1      varchar(100),
    Valor2      varchar(100),
    Descripcion varchar(200),
    Orden       int,
    Estado      bit
)
go

INSERT INTO concentracion.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (1, N'DOC', null, N'Tipo Documento', null, N'Tipo de Documento', null, 1);
INSERT INTO concentracion.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (2, null, N'DOC', null, N'DNI', N'Documento Nacional Identidad', 1, 1);
INSERT INTO concentracion.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (3, null, N'DOC', null, N'RUC', N'Registro Unico Contribuyente', 2, 1);
INSERT INTO concentracion.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (4, N'MON', null, N'Tipo Moneda', null, N'Tipo de Moneda', null, 1);
INSERT INTO concentracion.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (5, null, N'MON', null, N'SOLES', N'Soles Peruanos', 1, 1);
INSERT INTO concentracion.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (6, null, N'MON', null, N'DOLARES', N'Dolares Americanos', 2, 1);
INSERT INTO concentracion.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (7, N'INS', null, N'Tipo Institucion', null, N'Tipo Institucion', null, 1);
INSERT INTO concentracion.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (8, null, N'INS', null, N'BANCO', N'Banco - ASBANC', 1, 1);
INSERT INTO concentracion.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (9, null, N'INS', null, N'CAJA', N'Caja', 2, 1);
INSERT INTO concentracion.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (10, null, N'INS', null, N'COOPERATIVA', N'Cooperativa', 3, 1);
INSERT INTO concentracion.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (11, null, N'INS', null, N'OTRO', N'Otro', 4, 1);
INSERT INTO concentracion.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (12, N'TD', null, N'Tipo Producto', null, N'Tipo de Producto Financiero', null, 1);
INSERT INTO concentracion.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (13, null, N'TD', null, N'PRESTAMO PERSONAL', N'Prestamo Personal', 1, 1);
INSERT INTO concentracion.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (14, null, N'TD', null, N'DEPOSITO', N'Deposito a Plazo', 2, 1);