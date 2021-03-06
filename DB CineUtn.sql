Create database CineUTN
USE [CineUTN]
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 03/05/2020 22:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Genero](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Genero] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Genero] ON
INSERT [dbo].[Genero] ([Id], [Nombre]) VALUES (1, N'Acción')
INSERT [dbo].[Genero] ([Id], [Nombre]) VALUES (2, N'Ciencia ficción')
INSERT [dbo].[Genero] ([Id], [Nombre]) VALUES (3, N'Comedia')
INSERT [dbo].[Genero] ([Id], [Nombre]) VALUES (4, N'Animación')
INSERT [dbo].[Genero] ([Id], [Nombre]) VALUES (5, N'Aventuras')
INSERT [dbo].[Genero] ([Id], [Nombre]) VALUES (6, N'Drama')
INSERT [dbo].[Genero] ([Id], [Nombre]) VALUES (7, N'Suspenso')
INSERT [dbo].[Genero] ([Id], [Nombre]) VALUES (8, N'Terror')
INSERT [dbo].[Genero] ([Id], [Nombre]) VALUES (9, N'Policial')
SET IDENTITY_INSERT [dbo].[Genero] OFF
/****** Object:  Table [dbo].[Usuario]    Script Date: 03/05/2020 22:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Genero] [varchar](15) NULL,
	[Nacimiento] [int] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Telefono] [varchar](50) NULL,
	[Password] [varchar](50) NOT NULL,
	[Admin] [bit] NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de nacimiento en formato AAAAMMDD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'Nacimiento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dirección de e-mail única' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'Email'
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (1, N'Fernando Gabriel', N'Campos', N'Masculino', 19851011, N'fercam@gmail.com', N'11 48469451', N'fernando821', 1, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (2, N'Daniel', N'Estevez', N'x', 19921114, N'danest@hotmail.com', N'11 65422742', N'daniel701', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (3, N'Alejandro', N'Llanos', N'Masculino', 19830702, N'alella@yahoo.com', N'11 32499626', N'alejandro931', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (4, N'Manuel Jorge', N'Baigorria', N'Masculino', 19690221, N'manbai@hotmail.com', N'11 64574366', N'manuel931', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (5, N'Javier', N'Lopez', N'Masculino', 19850507, N'javlop@gmail.com', N'11 60941308', N'javier341', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (6, N'Adriana Fabiana', N'Herrera', N'Femenino', 19741218, N'adrher@hotmail.com', N'11 28359684', N'adriana341', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (7, N'Ariel', N'Gallo', N'Masculino', 19660316, N'arigal@gmail.com', N'11 22211030', N'ariel361', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (8, N'Marcela', N'Romano Hidalgo', N'Femenino', 19880513, N'marrom@gmail.com', N'11 41526504', N'marcela261', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (9, N'Reinaldo Guillermo', N'Castro', N'Masculino', 19630210, N'reicas@yahoo.com', N'11 64709450', N'reinaldo251', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (10, N'Jose', N'Galvez', N'Masculino', 19581213, N'josgal@yahoo.com', N'11 49911060', N'jose491', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (11, N'Carlos', N'Benitez', N'Masculino', 19620110, N'carben@yahoo.com', N'11 56493369', N'carlos641', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (12, N'Sergio Alfredo', N'Mansilla', N'Masculino', 19770615, N'serman@gmail.com', N'11 72063653', N'sergio131', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (13, N'Claudio', N'Distefano', N'Masculino', 19820612, N'cladis@yahoo.com', N'11 74967941', N'claudio641', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (14, N'Ramon', N'Bonelli', N'Masculino', 19600112, N'rambon@hotmail.com', N'11 34206023', N'ramon231', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (15, N'Mabel Raquel', N'Soria', N'Femenino', 19501010, N'mabsor@yahoo.com', N'11 73852686', N'mabel321', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (16, N'Eugenia', N'Montero', N'Femenino', 19560523, N'eugmon@hotmail.com', N'11 55862532', N'eugenia771', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (17, N'Angel', N'Garrido', N'Masculino', 19440327, N'anggar@gmail.com', N'11 38512310', N'angel341', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (18, N'Evangelina', N'Duarte', N'Femenino', 19630406, N'evadua@gmail.com', N'11 61634195', N'evangelina921', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (19, N'Zulema', N'Zamudio Gutierrez', N'Femenino', 20010923, N'zulzam@gmail.com', N'11 28831797', N'zulema441', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (20, N'Maria Edith', N'Flores Rivarola', N'Femenino', 19600207, N'marflo@hotmail.com', N'11 21798159', N'maria671', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (21, N'Aldo Patricio', N'Duarte', N'Masculino', 19510518, N'alddua@gmail.com', N'11 34046061', N'aldo341', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (22, N'Pedro', N'Perez', N'Masculino', 19801122, N'pedper@gmail.com', N'11 29017450', N'pedro281', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (23, N'Raul Alejandro', N'Nieves', N'Masculino', 19460307, N'raunie@yahoo.com', N'11 75873508', N'raul101', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (24, N'Nicolas', N'Dominguez', N'Masculino', 19590225, N'nicdom@hotmail.com', N'11 66136713', N'nicolas471', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (25, N'Ignacio', N'Bravo', N'Masculino', 19731211, N'ignbra@yahoo.com', N'11 49351442', N'ignacio201', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (26, N'Mayra Celia', N'Rivera Diaz', N'Femenino', 19430510, N'mayriv@gmail.com', N'11 74397083', N'mayra41', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (27, N'Claudia', N'Blanco', N'Femenino', 19950902, N'clabla@gmail.com', N'11 22021963', N'claudia661', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (28, N'Edith Blanca', N'Galvez', N'Femenino', 19601125, N'edigal@yahoo.com', N'11 68656687', N'edith631', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (29, N'Matilde', N'Correa', N'Femenino', 19600418, N'matcor@gmail.com', N'11 68933598', N'matilde311', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (30, N'Evangelina', N'Cabrera', N'Femenino', 19620120, N'evacab@gmail.com', N'11 33265221', N'evangelina731', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (31, N'Soledad Maria', N'Varela', N'Femenino', 19730111, N'solvar@hotmail.com', N'11 57823534', N'soledad841', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (32, N'Silvina', N'Alzamendi', N'Femenino', 19810918, N'silalz@yahoo.com', N'11 21637967', N'silvina931', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (33, N'Manuel Martin', N'Romero', N'Masculino', 19730422, N'manrom@yahoo.com', N'11 79537119', N'manuel31', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (34, N'Lidia', N'Bustamante', N'Femenino', 19610706, N'lidbus@hotmail.com', N'11 56338832', N'lidia791', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (35, N'Elena Clara', N'Funes', N'Femenino', 19420607, N'elefun@yahoo.com', N'11 55852022', N'elena761', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (36, N'Luisa', N'Hidalgo Rodriguez', N'Femenino', 19790410, N'luihid@gmail.com', N'11 20523779', N'luisa441', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (37, N'Alicia Zulema', N'Segovia', N'Femenino', 19910325, N'aliseg@gmail.com', N'11 35959418', N'alicia501', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (38, N'Alejandra', N'Bonelli', N'Femenino', 19520122, N'alebon@gmail.com', N'11 58144312', N'alejandra561', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (39, N'Elizabeth', N'Vazquez', N'Femenino', 19410211, N'elivaz@hotmail.com', N'11 52263299', N'elizabeth601', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (40, N'Haydee', N'Escalante Ortiz', N'Femenino', 19440310, N'hayesc@yahoo.com', N'11 60649269', N'haydee981', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (41, N'Nilda', N'Vila', N'Femenino', 19830301, N'nilvil@gmail.com', N'11 48901267', N'nilda511', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (42, N'Gloria Agustina', N'Delgado Soler', N'Femenino', 19860810, N'glodel@hotmail.com', N'11 26123114', N'gloria561', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (43, N'Perla Mercedes', N'Estevez', N'Femenino', 19610926, N'perest@gmail.com', N'11 20249914', N'perla371', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (44, N'Rodolfo', N'Mansilla', N'Masculino', 19630505, N'rodman@gmail.com', N'11 34186916', N'rodolfo801', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (45, N'Geronimo', N'Suarez', N'Masculino', 19610914, N'gersua@hotmail.com', N'11 49792466', N'geronimo511', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (46, N'Etelvina Marina', N'Aguilar', N'Femenino', 19550910, N'eteagu@gmail.com', N'11 78737075', N'etelvina221', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (47, N'Marcelo Oscar', N'Maciel', N'Masculino', 19500109, N'marmac@gmail.com', N'11 50794024', N'marcelo801', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (48, N'Pablo Ernesto', N'Castro', N'Masculino', 19680420, N'pabcas@gmail.com', N'11 29529527', N'pablo441', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (49, N'Ramon Ismael', N'Martinez', N'Masculino', 19700502, N'rammar@yahoo.com', N'11 64478932', N'ramon21', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (50, N'Daniel', N'Iriarte', N'Masculino', 19670625, N'daniri@gmail.com', N'11 55688833', N'daniel281', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (51, N'mauri', N'molina', N'masc', 602, N'mauricio87cjs', N'1132724000', N'casa', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (52, N'Juan', N'Perez', N'Masculino', 19900812, N'juanperez@gmail.com', N'11 22223333', N'juan100', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (53, N'Tamara', N'Molina', N'Masculino', 19970206, N'mauricio@gmail.com', N'11 32724001', N'12345', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (54, N'Tamara', N'Molina', N'Masculino', 19970206, N'mauricio@gmail.com', N'11 32724001', N'12345', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (55, N'Tamara', N'Molina', N'Masculino', 19970206, N'mauricio@gmail.com', N'11 32724001', N'12345', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (56, N'Tamara', N'Molina', N'Masculino', 19970206, N'mauricio@gmail.com', N'11 32724001', N'12345', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (57, N'Tamara', N'Molina', N'Masculino', 19970206, N'mauricio@gmail.com', N'11 32724001', N'12345', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (58, N'Tamara', N'Molina', N'Masculino', 19970206, N'mauricio@gmail.com', N'11 32724001', N'12345', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (59, N'Tamara', N'Molina', N'Masculino', 19970206, N'mauricio@gmail.com', N'11 32724001', N'12345', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (60, N'Tamara', N'Molina', N'Masculino', 19970206, N'mauricio@gmail.com', N'11 32724001', N'123', 0, 1)
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Genero], [Nacimiento], [Email], [Telefono], [Password], [Admin], [Activo]) VALUES (61, N'Mauricio', N'Molinaa', N'masc', 19970206, N'mauricio87cjs@gmail.com', N'02320649640', N'12345', 0, 1)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
/****** Object:  Table [dbo].[Sucursal]    Script Date: 03/05/2020 22:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sucursal](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Direccion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Sucursal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Sucursal] ON
INSERT [dbo].[Sucursal] ([Id], [Nombre], [Direccion]) VALUES (1, N'San Miguel', N'Av Presidente Peron 1050')
INSERT [dbo].[Sucursal] ([Id], [Nombre], [Direccion]) VALUES (2, N'Tigre', N'Av Dardo Rocha 1087')
SET IDENTITY_INSERT [dbo].[Sucursal] OFF
/****** Object:  Table [dbo].[Precio]    Script Date: 03/05/2020 22:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Precio](
	[Formato3D] [bit] NOT NULL,
	[Precio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Formato3D] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Precio] ([Formato3D], [Precio]) VALUES (0, 400)
INSERT [dbo].[Precio] ([Formato3D], [Precio]) VALUES (1, 580)
/****** Object:  Table [dbo].[Calificacion]    Script Date: 03/05/2020 22:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Calificacion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Calificacion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Calificacion] ON
INSERT [dbo].[Calificacion] ([Id], [Nombre]) VALUES (1, N'ATP')
INSERT [dbo].[Calificacion] ([Id], [Nombre]) VALUES (2, N'PG +13')
INSERT [dbo].[Calificacion] ([Id], [Nombre]) VALUES (3, N'PG +16')
INSERT [dbo].[Calificacion] ([Id], [Nombre]) VALUES (4, N'PG +18')
INSERT [dbo].[Calificacion] ([Id], [Nombre]) VALUES (10, N'PG +21')
INSERT [dbo].[Calificacion] ([Id], [Nombre]) VALUES (11, N'pg +26')
SET IDENTITY_INSERT [dbo].[Calificacion] OFF
/****** Object:  StoredProcedure [dbo].[AgregarUsuario]    Script Date: 03/05/2020 22:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgregarUsuario]

@Nombre varchar(50),
@Apellido varchar(50),
@Genero varchar(15),
@Nacimiento int,
@Email varchar(50),
@Telefono varchar(50),
@Password varchar(50),
@Admin bit,
@Activo bit
AS

INSERT INTO Usuario(Nombre, Apellido, Genero, Nacimiento, Email, Telefono, [Password], Admin, Activo)
VALUES(@Nombre, @Apellido, @Genero, @Nacimiento, @Email, @Telefono, @Password, @Admin, @Activo)
GO
/****** Object:  StoredProcedure [dbo].[AgregarGenero]    Script Date: 03/05/2020 22:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgregarGenero]
@Nombre varchar(50)
AS

INSERT INTO Genero(Nombre)
VALUES(@Nombre)
GO
/****** Object:  StoredProcedure [dbo].[AgregarClasificacion]    Script Date: 03/05/2020 22:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgregarClasificacion]
@Nombre varchar(50)
AS

INSERT INTO Calificacion(Nombre)
VALUES(@Nombre)
GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 03/05/2020 22:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pelicula](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Imagen] [varchar](100) NULL,
	[Calificacion] [int] NOT NULL,
	[Formato3D] [bit] NOT NULL,
	[Duracion] [int] NOT NULL,
	[Genero] [int] NOT NULL,
	[Sinopsis] [varchar](800) NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Pelicula] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'URL de la imagen' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pelicula', @level2type=N'COLUMN',@level2name=N'Imagen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Duración en minutos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pelicula', @level2type=N'COLUMN',@level2name=N'Duracion'
GO
SET IDENTITY_INSERT [dbo].[Pelicula] ON
INSERT [dbo].[Pelicula] ([Id], [Nombre], [Imagen], [Calificacion], [Formato3D], [Duracion], [Genero], [Sinopsis], [Activo]) VALUES (1, N'Avengers EndGame', N'~/ImagenesPeliculas/1.jpg', 2, 1, 182, 4, N'El grave curso de los acontecimientos puesto en marcha por Thanos que destruyó la mitad del universo gracias al las Gemas del Infinito. Ha provocado que los Vengadores restantes deban tomar una última posición en la gran conclusión de Marvel Studios a veintidós películas', 1)
INSERT [dbo].[Pelicula] ([Id], [Nombre], [Imagen], [Calificacion], [Formato3D], [Duracion], [Genero], [Sinopsis], [Activo]) VALUES (2, N'Rapidos y furiosos 7', N'~/ImagenesPeliculas/2.jpg', 2, 0, 137, 3, N'Ha pasado un año desde que el equipo de Dominic Torreto y Brian pudiera regresar finalmente a Estados Unidos, tras ser indultados. Desean adaptarse a una vida en la legalidad, pero el entorno ya no es el mismo. Dom intenta acercarse a Letty, y Brian lucha para acostumbrarse a la vida en una urbanización con Mia y su hijo. Ninguno de ellos imagina que un frío asesino británico, entrenado para realizar operaciones secretas, se cruzará en sus vidas para convertirse en su mayor enemigo. ', 1)
INSERT [dbo].[Pelicula] ([Id], [Nombre], [Imagen], [Calificacion], [Formato3D], [Duracion], [Genero], [Sinopsis], [Activo]) VALUES (3, N'Transformers', N'~/ImagenesPeliculas/3.jpg', 2, 1, 144, 3, N'El destino de la humanidad está en juego cuando dos razas de robots, los buenos Autobots y los villanos Decepticons, llevan su guerra a la Tierra. Los robots tienen la habilidad de transformarse en diferentes objetos mecánicos mientras buscan la clave del poder supremo. Sólo un joven humano, Sam Witwicky puede salvar al mundo de la destrucción total.', 1)
INSERT [dbo].[Pelicula] ([Id], [Nombre], [Imagen], [Calificacion], [Formato3D], [Duracion], [Genero], [Sinopsis], [Activo]) VALUES (4, N'Avengers Infinity war', N'~/ImagenesPeliculas/4.jpg', 2, 0, 150, 3, N'Un nuevo peligro acecha procedente de las sombras del cosmos. Thanos, el infame tirano intergaláctico, tiene como objetivo reunir las seis Gemas del Infinito, artefactos de poder inimaginable, y usarlas para imponer su perversa voluntad a toda la existencia. Los Vengadores y sus aliados tendrán que luchar contra el mayor villano al que se han enfrentado nunca, y evitar que se haga con el control de la galaxia. En su nueva e impactante aventura, el destino de la Tierra nunca había sido más incierto, las Gemas del Infinito estarán en juego, unos querrán protegerlas y otros controlarlas, ¿quién ganará?', 1)
INSERT [dbo].[Pelicula] ([Id], [Nombre], [Imagen], [Calificacion], [Formato3D], [Duracion], [Genero], [Sinopsis], [Activo]) VALUES (5, N'Batman the dark knight', N'~/ImagenesPeliculas/5.jpg', 2, 0, 152, 6, N'Esta vez Batman asume más riesgos en su guerra contra el crimen. Con la ayuda del teniente Jim Gordon y el nuevo y comprometido fiscal de distrito Harvey Dent, Batman se propone desmantelar las organizaciones criminales que infestan las calles de la Gotham City. Al principio la asociación demuestra ser efectiva, pero pronto se verán atrapados en un reino del caos desatado por una mente criminal en auge conocida por los aterrorizados habitantes de la ciudad como Joker, que introduce la anarquía en Gotham y obliga al Caballero Oscuro a cruzar aún más la fina línea que separa al héroe del justiciero.', 1)
INSERT [dbo].[Pelicula] ([Id], [Nombre], [Imagen], [Calificacion], [Formato3D], [Duracion], [Genero], [Sinopsis], [Activo]) VALUES (6, N'It 2', N'~/ImagenesPeliculas/6.jpg', 3, 0, 90, 8, N'La novela de Stephen King que da nombre a la película es tan larga que para adaptarla se ha tenido que separar en dos películas. Mientras que la primera entrega se centraba en el Club de los Perdedores como niños, esta nueva película nos traslada a Derry casi tres décadas después de los eventos de la primera cinta. Cada 27 años el mal regresa a la adormecida ciudad de Maine, y esta vez los niños han crecido y están dispuestos a plantar cara al malvado payaso', 1)
INSERT [dbo].[Pelicula] ([Id], [Nombre], [Imagen], [Calificacion], [Formato3D], [Duracion], [Genero], [Sinopsis], [Activo]) VALUES (7, N'El secreto de sus ojos', N'~/ImagenesPeliculas/7.jpg', 2, 0, 127, 7, N'Benjamín Espósito, secretario de un Juzgado de Instrucción de la Ciudad de Buenos Aires, está a punto de retirarse y decide escribir una novela basada en un caso que lo conmovió treinta años antes, del cual fue testigo y protagonista. Su obsesión con el brutal asesinato ocurrido en 1975 lo lleva a revivir aquellos años, trayendo al presente no sólo la violencia del crimen y de su perpetrador, sino también una profunda historia de amor con su compañera de trabajo, a quien ha deseado y amado fervorosamente y en silencio durante años.', 1)
INSERT [dbo].[Pelicula] ([Id], [Nombre], [Imagen], [Calificacion], [Formato3D], [Duracion], [Genero], [Sinopsis], [Activo]) VALUES (8, N'Jurassic world 2', N'~/ImagenesPeliculas/8.jpg', 2, 1, 128, 3, N'Tras cuatro años de abandono del complejo turístico Jurassic World, Isla Nublar sólo está habitada por los dinosaurios supervivientes. Cuando el volcán de la isla entra en erupción, Owen y Claire vuelven allí para rescatar a los dinosaurios de la extinción. Owen va en busca de Blue, el raptor al que crió mientras que Claire, que ha empezado a valorar a estas criaturas, se centra más en salvar al resto. Cuando llegan a la isla descubren una conspiración que pretende llevar al planeta de nuevo a la era prehistórica. ', 1)
INSERT [dbo].[Pelicula] ([Id], [Nombre], [Imagen], [Calificacion], [Formato3D], [Duracion], [Genero], [Sinopsis], [Activo]) VALUES (9, N'Jackass', N'~/ImagenesPeliculas/9.jpg', 4, 0, 87, 5, N'Adaptación a la gran pantalla de un popular show de la cadena musical MTV. Creado por Spike Jonze ("Como ser John Malkovich") y Johnny Knoxville, se trata de un programa donde un grupo de especialistas de cine se dedican a hacer éstupideces como tirarse calle abajo dentro de un carrito de supermercado para acabar chocando contra árbol. Lo hacen porque es divertido, al menos eso creen ellos, y les basta como excusa para hacerlo', 1)
INSERT [dbo].[Pelicula] ([Id], [Nombre], [Imagen], [Calificacion], [Formato3D], [Duracion], [Genero], [Sinopsis], [Activo]) VALUES (10, N'Toy story 4', N'~/ImagenesPeliculas/10.jpg', 1, 1, 100, 2, N'Woody siempre ha tenido claro cuál es su labor en el mundo y cuál es su prioridad: cuidar a su dueño, ya sea Andy o Bonnie. Sin embargo, Woody descubrirá lo grande que puede ser el mundo para un juguete cuando Forky se convierta en su nuevo compañero de habitación. Los juguetes se embarcarán en una aventura de la que no se olvidarán jamás.', 1)
INSERT [dbo].[Pelicula] ([Id], [Nombre], [Imagen], [Calificacion], [Formato3D], [Duracion], [Genero], [Sinopsis], [Activo]) VALUES (11, N'Harry Potter P2', N'~/ImagenesPeliculas/11.jpg', 2, 1, 130, 4, N'El enfrentamiento entre el bien y el mal llega a su cénit. La búsqueda de los horrocruxes lleva a los amigos a Hogwarts, donde Harry, Ron y Hermione se preparan para una última batalla contra Lord Voldemort y sus fieles secuaces, los mortífagos, para decidir el futuro del mundo mágico.', 1)
INSERT [dbo].[Pelicula] ([Id], [Nombre], [Imagen], [Calificacion], [Formato3D], [Duracion], [Genero], [Sinopsis], [Activo]) VALUES (12, N'Los simpsons movie', N'~/ImagenesPeliculas/12.jpg', 2, 0, 87, 2, N'La combinación de Homero, su nuevo puerco mascota, y un silo lleno de excremento podrían provocar un desastre que amenace no sólo a Springfield, sino al mundo entero. Una muchedumbre enojada llega a la casa de los Simpson y divide a la familia. Con el destino de la Tierra en juego, Homero se prepara para intentar redimirse con la intención de salvar al mundo y ganarse el perdón de Marge.', 1)
INSERT [dbo].[Pelicula] ([Id], [Nombre], [Imagen], [Calificacion], [Formato3D], [Duracion], [Genero], [Sinopsis], [Activo]) VALUES (13, N'Fast & furious 9', N'~/ImagenesPeliculas/fastandfurious9-teaserposter-final.jpg_876973527.jpg', 11, 0, 87, 1, N'Toreto mas toreto que nunca', 1)
SET IDENTITY_INSERT [dbo].[Pelicula] OFF
/****** Object:  StoredProcedure [dbo].[ModificarUsuario]    Script Date: 03/05/2020 22:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ModificarUsuario]

@Nombre varchar(50),
@Apellido varchar(50),
@Telefono varchar(50),
@Nacimiento int,
@Email varchar(50)
AS
begin 

update Usuario SET
Nombre = @Nombre,
Apellido = @Apellido,
Telefono = @Telefono,
Nacimiento = @Nacimiento
where email = @Email

END
GO
/****** Object:  StoredProcedure [dbo].[ModificarUser]    Script Date: 03/05/2020 22:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ModificarUser]
@Id int,
@Nombre varchar(50),
@Apellido varchar(50),
@Genero varchar(50),
@Nacimiento int,
@Email varchar(50),
@Telefono varchar(50),
@Password varchar(50),
@Admin bit,
@Activo bit

AS
update usuario set
Nombre = @Nombre,
Apellido = @Apellido,
Genero = @Genero,
Nacimiento = @Nacimiento,
Email = @Email,
Telefono = @Telefono,
Password = @Password,
Admin = @Admin,
Activo = @Activo
where Id= @Id
GO
/****** Object:  Table [dbo].[Sala]    Script Date: 03/05/2020 22:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sala](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Sucursal] [int] NOT NULL,
	[Filas] [int] NOT NULL,
	[Butacas] [int] NOT NULL,
 CONSTRAINT [PK_Sala] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cantidad de filas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sala', @level2type=N'COLUMN',@level2name=N'Filas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cantidad de butacas por fila' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sala', @level2type=N'COLUMN',@level2name=N'Butacas'
GO
SET IDENTITY_INSERT [dbo].[Sala] ON
INSERT [dbo].[Sala] ([Id], [Nombre], [Sucursal], [Filas], [Butacas]) VALUES (1, N'San Miguel 1', 1, 20, 16)
INSERT [dbo].[Sala] ([Id], [Nombre], [Sucursal], [Filas], [Butacas]) VALUES (2, N'Tigre 1', 2, 22, 18)
INSERT [dbo].[Sala] ([Id], [Nombre], [Sucursal], [Filas], [Butacas]) VALUES (3, N'San Miguel 2', 1, 18, 16)
SET IDENTITY_INSERT [dbo].[Sala] OFF
/****** Object:  StoredProcedure [dbo].[ModificarGenero]    Script Date: 03/05/2020 22:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ModificarGenero]
@Id int,
@Nombre varchar(50)

AS
begin 

update Genero SET
Nombre = @Nombre
where Id = @Id

END
GO
/****** Object:  StoredProcedure [dbo].[ModificarClasificacion]    Script Date: 03/05/2020 22:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ModificarClasificacion]

@Id int,
@Nombre varchar(50)

AS
begin 

update Calificacion SET
Nombre = @Nombre
where Id = @Id

END
GO
/****** Object:  Table [dbo].[Funcion]    Script Date: 03/05/2020 22:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Pelicula] [int] NOT NULL,
	[Sala] [int] NOT NULL,
	[Fecha] [int] NOT NULL,
	[Hora] [int] NOT NULL,
 CONSTRAINT [PK_Funcion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de la función en formato AAMMDD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Funcion', @level2type=N'COLUMN',@level2name=N'Fecha'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hora de inicio de la función en formato HHMM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Funcion', @level2type=N'COLUMN',@level2name=N'Hora'
GO
SET IDENTITY_INSERT [dbo].[Funcion] ON
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (1, 3, 1, 20190715, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (2, 11, 1, 20190715, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (3, 2, 1, 20190715, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (4, 4, 2, 20190715, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (5, 5, 2, 20190715, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (6, 6, 2, 20190715, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (7, 10, 3, 20190715, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (8, 12, 3, 20190715, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (9, 8, 3, 20190715, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (10, 9, 1, 20190716, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (11, 7, 1, 20190716, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (12, 1, 1, 20190716, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (13, 10, 2, 20190716, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (14, 4, 2, 20190716, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (15, 6, 2, 20190716, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (16, 12, 3, 20190716, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (17, 3, 3, 20190716, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (18, 11, 3, 20190716, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (19, 2, 1, 20190717, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (20, 8, 1, 20190717, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (21, 5, 1, 20190717, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (22, 7, 2, 20190717, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (23, 9, 2, 20190717, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (24, 1, 2, 20190717, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (25, 7, 3, 20190717, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (26, 4, 3, 20190717, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (27, 11, 3, 20190717, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (28, 12, 1, 20190718, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (29, 8, 1, 20190718, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (30, 1, 1, 20190718, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (31, 10, 2, 20190718, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (32, 3, 2, 20190718, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (33, 2, 2, 20190718, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (34, 6, 3, 20190718, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (35, 5, 3, 20190718, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (36, 9, 3, 20190718, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (37, 12, 1, 20190719, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (38, 5, 1, 20190719, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (39, 1, 1, 20190719, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (40, 11, 2, 20190719, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (41, 9, 2, 20190719, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (42, 6, 2, 20190719, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (43, 4, 3, 20190719, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (44, 2, 3, 20190719, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (45, 7, 3, 20190719, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (46, 10, 1, 20190720, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (47, 8, 1, 20190720, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (48, 3, 1, 20190720, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (49, 4, 2, 20190720, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (50, 10, 2, 20190720, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (51, 7, 2, 20190720, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (52, 2, 3, 20190720, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (53, 9, 3, 20190720, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (54, 8, 3, 20190720, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (55, 5, 1, 20190721, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (56, 6, 1, 20190721, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (57, 3, 1, 20190721, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (58, 11, 2, 20190721, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (59, 12, 2, 20190721, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (60, 1, 2, 20190721, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (61, 5, 3, 20190721, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (62, 4, 3, 20190721, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (63, 11, 3, 20190721, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (64, 1, 1, 20190722, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (65, 8, 1, 20190722, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (66, 9, 1, 20190722, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (67, 12, 2, 20190722, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (68, 10, 2, 20190722, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (69, 6, 2, 20190722, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (70, 2, 3, 20190722, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (71, 3, 3, 20190722, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (72, 7, 3, 20190722, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (73, 11, 1, 20190723, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (74, 5, 1, 20190723, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (75, 10, 1, 20190723, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (76, 3, 2, 20190723, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (77, 2, 2, 20190723, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (78, 8, 2, 20190723, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (79, 4, 3, 20190723, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (80, 6, 3, 20190723, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (81, 12, 3, 20190723, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (82, 7, 1, 20190724, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (83, 9, 1, 20190724, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (84, 1, 1, 20190724, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (85, 3, 2, 20190724, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (86, 7, 2, 20190724, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (87, 8, 2, 20190724, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (88, 4, 3, 20190724, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (89, 11, 3, 20190724, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (90, 9, 3, 20190724, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (91, 6, 1, 20190725, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (92, 12, 1, 20190725, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (93, 1, 1, 20190725, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (94, 10, 2, 20190725, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (95, 2, 2, 20190725, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (96, 5, 2, 20190725, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (97, 9, 3, 20190725, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (98, 8, 3, 20190725, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (99, 1, 3, 20190725, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (100, 4, 1, 20190726, 1800)
GO
print 'Processed 100 total records'
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (101, 7, 1, 20190726, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (102, 10, 1, 20190726, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (103, 11, 2, 20190726, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (104, 5, 2, 20190726, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (105, 6, 2, 20190726, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (106, 2, 3, 20190726, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (107, 12, 3, 20190726, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (108, 3, 3, 20190726, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (109, 4, 1, 20190727, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (110, 2, 1, 20190727, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (111, 9, 1, 20190727, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (112, 7, 2, 20190727, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (113, 11, 2, 20190727, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (114, 10, 2, 20190727, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (115, 8, 3, 20190727, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (116, 3, 3, 20190727, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (117, 12, 3, 20190727, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (118, 1, 1, 20190728, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (119, 6, 1, 20190728, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (120, 5, 1, 20190728, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (121, 3, 2, 20190728, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (122, 11, 2, 20190728, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (123, 9, 2, 20190728, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (124, 2, 3, 20190728, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (125, 1, 3, 20190728, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (126, 8, 3, 20190728, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (127, 5, 1, 20190729, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (128, 4, 1, 20190729, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (129, 6, 1, 20190729, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (130, 7, 2, 20190729, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (131, 10, 2, 20190729, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (132, 12, 2, 20190729, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (133, 6, 3, 20190729, 1800)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (134, 10, 3, 20190729, 2100)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (135, 2, 3, 20190729, 2400)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (138, 2, 1, 20201212, 1212)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (140, 1, 1, 20201212, 1212)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (141, 1, 1, 20201112, 1212)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (142, 2, 2, 20201212, 1212)
INSERT [dbo].[Funcion] ([Id], [Pelicula], [Sala], [Fecha], [Hora]) VALUES (143, 1, 1, 20190206, 1111)
SET IDENTITY_INSERT [dbo].[Funcion] OFF
/****** Object:  StoredProcedure [dbo].[ModificarPelicula]    Script Date: 03/05/2020 22:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ModificarPelicula]

@Id int,
@Nombre varchar(50),
@Imagen varchar(100),
@Calificacion varchar(50),
@Formato3D bit,
@Duracion int,
@Genero int,
@Sinopsis varchar(800),
@Activo bit
AS
begin 

update Pelicula SET
Nombre = @Nombre,
Imagen = @Imagen,
Calificacion = @Calificacion,
Formato3D = @Formato3D,
Duracion = @Duracion,
Genero = @Genero,
Sinopsis = @Sinopsis,
Activo = @Activo
where Id = @Id

END
GO
/****** Object:  StoredProcedure [dbo].[AgregarPelicula]    Script Date: 03/05/2020 22:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgregarPelicula]

@Nombre varchar(50),
@Imagen varchar(100),
@Calificacion int,
@Formato3D bit,
@Duracion int,
@Genero int,
@Sinopsis varchar(100),
@Activo bit
AS

INSERT INTO Pelicula(Nombre, Imagen, Calificacion, Formato3D, Duracion, Genero, Sinopsis, Activo)
VALUES(@Nombre, @Imagen, @Calificacion, @Formato3D, @Duracion, @Genero, @Sinopsis, @Activo)
GO
/****** Object:  StoredProcedure [dbo].[AgregarFuncion]    Script Date: 03/05/2020 22:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgregarFuncion]

@Pelicula int,
@Sala int,
@Fecha int,
@Hora int

AS

INSERT INTO Funcion(Pelicula, Sala, Fecha, Hora)
VALUES(@Pelicula, @Sala, @Fecha, @Hora)
GO
/****** Object:  Table [dbo].[Reserva]    Script Date: 03/05/2020 22:55:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reserva](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [int] NOT NULL,
	[Funcion] [int] NOT NULL,
 CONSTRAINT [PK_Reserva] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Reserva] ON
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (1, 50, 45)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (2, 4, 109)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (3, 16, 39)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (4, 2, 121)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (5, 50, 101)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (6, 32, 100)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (7, 26, 75)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (8, 13, 124)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (9, 17, 64)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (10, 5, 125)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (11, 46, 9)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (12, 18, 96)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (13, 43, 121)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (14, 26, 80)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (15, 37, 8)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (16, 23, 107)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (17, 44, 17)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (18, 3, 102)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (19, 5, 134)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (20, 21, 133)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (21, 12, 68)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (22, 42, 65)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (23, 32, 44)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (24, 23, 30)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (25, 13, 77)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (26, 48, 3)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (27, 49, 116)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (28, 17, 52)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (29, 32, 69)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (30, 35, 94)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (31, 41, 107)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (32, 27, 86)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (33, 15, 101)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (34, 25, 28)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (35, 36, 128)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (36, 35, 6)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (37, 11, 117)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (38, 6, 37)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (39, 16, 124)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (40, 7, 76)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (41, 43, 16)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (42, 13, 59)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (43, 32, 119)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (44, 50, 1)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (45, 14, 91)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (46, 39, 104)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (47, 3, 110)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (48, 33, 82)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (49, 11, 116)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (50, 29, 8)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (51, 10, 47)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (52, 10, 83)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (53, 1, 56)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (54, 9, 90)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (55, 43, 109)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (56, 16, 40)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (57, 16, 32)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (58, 11, 62)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (59, 7, 133)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (60, 6, 89)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (61, 29, 91)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (62, 24, 53)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (63, 36, 121)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (64, 38, 63)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (65, 33, 63)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (66, 41, 14)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (67, 28, 81)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (68, 23, 49)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (69, 13, 27)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (70, 5, 17)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (71, 26, 129)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (72, 19, 131)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (73, 21, 14)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (74, 44, 15)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (75, 44, 46)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (76, 41, 78)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (77, 23, 77)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (78, 48, 67)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (79, 6, 115)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (80, 33, 99)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (81, 46, 11)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (82, 49, 122)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (83, 38, 40)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (84, 7, 117)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (85, 22, 103)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (86, 36, 53)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (87, 48, 62)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (88, 19, 45)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (89, 5, 6)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (90, 25, 16)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (91, 7, 124)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (92, 49, 106)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (93, 29, 67)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (94, 30, 52)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (95, 1, 98)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (96, 39, 59)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (97, 45, 34)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (98, 38, 134)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (99, 49, 118)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (100, 8, 73)
GO
print 'Processed 100 total records'
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (101, 1, 5)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (102, 1, 5)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (103, 1, 5)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (104, 1, 5)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (105, 1, 7)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (106, 1, 2)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (107, 1, 2)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (108, 1, 2)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (109, 1, 2)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (110, 1, 2)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (111, 1, 2)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (112, 1, 9)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (113, 1, 2)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (114, 1, 2)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (115, 1, 2)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (116, 1, 2)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (117, 1, 2)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (118, 61, 6)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (119, 61, 100)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (120, 61, 100)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (121, 61, 100)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (122, 61, 33)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (123, 61, 55)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (124, 61, 74)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (125, 61, 48)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (126, 61, 100)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (127, 61, 21)
INSERT [dbo].[Reserva] ([Id], [Usuario], [Funcion]) VALUES (128, 61, 100)
SET IDENTITY_INSERT [dbo].[Reserva] OFF
/****** Object:  StoredProcedure [dbo].[AgregarReserva]    Script Date: 03/05/2020 22:55:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgregarReserva]

@Usuario int,
@Funcion int

AS

INSERT INTO Reserva(Usuario, Funcion)
VALUES(@Usuario, @Funcion)
GO
/****** Object:  Table [dbo].[Reservada]    Script Date: 03/05/2020 22:55:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservada](
	[Reserva] [int] NOT NULL,
	[Fila] [int] NOT NULL,
	[Butaca] [int] NOT NULL,
 CONSTRAINT [PK_Reservada] PRIMARY KEY CLUSTERED 
(
	[Reserva] ASC,
	[Fila] ASC,
	[Butaca] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (1, 5, 8)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (1, 5, 9)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (1, 5, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (2, 6, 6)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (2, 6, 7)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (2, 6, 8)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (3, 7, 7)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (3, 7, 8)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (3, 7, 9)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (4, 8, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (4, 8, 5)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (4, 8, 6)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (5, 6, 8)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (5, 6, 9)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (5, 6, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (6, 4, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (6, 4, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (6, 4, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (7, 4, 8)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (7, 4, 9)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (7, 4, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (8, 2, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (8, 2, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (8, 2, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (9, 3, 9)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (9, 3, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (10, 4, 8)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (10, 4, 9)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (10, 4, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (11, 3, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (12, 3, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (12, 3, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (12, 3, 5)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (13, 5, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (13, 5, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (13, 5, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (14, 8, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (14, 8, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (14, 8, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (15, 3, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (15, 3, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (15, 3, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (16, 8, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (16, 8, 5)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (16, 8, 6)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (17, 3, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (17, 3, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (17, 3, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (18, 2, 8)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (18, 2, 9)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (18, 2, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (19, 7, 7)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (19, 7, 8)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (19, 7, 9)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (20, 7, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (21, 7, 1)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (21, 7, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (21, 7, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (22, 7, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (22, 7, 5)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (22, 7, 6)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (23, 4, 7)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (23, 4, 8)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (23, 4, 9)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (24, 3, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (25, 7, 1)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (25, 7, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (25, 7, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (26, 2, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (26, 2, 5)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (26, 2, 6)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (27, 2, 9)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (27, 2, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (28, 4, 6)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (28, 4, 7)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (28, 4, 8)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (29, 4, 5)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (29, 4, 6)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (29, 4, 7)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (30, 4, 6)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (30, 4, 7)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (30, 4, 8)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (31, 3, 6)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (31, 3, 7)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (31, 3, 8)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (32, 6, 6)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (32, 6, 7)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (32, 6, 8)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (33, 6, 1)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (33, 6, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (33, 6, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (34, 5, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (34, 5, 5)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (34, 5, 6)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (35, 2, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (35, 2, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (35, 2, 5)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (36, 6, 6)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (36, 6, 7)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (36, 6, 8)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (37, 4, 7)
GO
print 'Processed 100 total records'
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (37, 4, 8)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (37, 4, 9)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (38, 7, 1)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (38, 7, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (38, 7, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (39, 7, 9)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (39, 7, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (40, 8, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (41, 5, 1)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (41, 5, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (41, 5, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (42, 6, 6)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (42, 6, 7)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (42, 6, 8)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (43, 7, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (44, 6, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (44, 6, 5)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (44, 6, 6)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (45, 8, 9)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (45, 8, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (46, 8, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (47, 3, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (48, 2, 9)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (48, 2, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (49, 2, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (49, 2, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (49, 2, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (50, 4, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (50, 4, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (50, 4, 5)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (51, 4, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (51, 4, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (51, 4, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (52, 3, 1)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (52, 3, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (52, 3, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (53, 8, 7)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (53, 8, 8)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (53, 8, 9)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (54, 7, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (54, 7, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (54, 7, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (55, 8, 1)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (55, 8, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (55, 8, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (56, 7, 5)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (56, 7, 6)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (56, 7, 7)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (57, 2, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (58, 3, 9)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (58, 3, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (59, 1, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (60, 7, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (61, 8, 6)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (61, 8, 7)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (61, 8, 8)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (62, 4, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (62, 4, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (62, 4, 5)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (63, 7, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (64, 8, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (64, 8, 5)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (64, 8, 6)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (65, 8, 8)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (65, 8, 9)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (65, 8, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (66, 1, 7)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (66, 1, 8)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (66, 1, 9)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (67, 5, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (67, 5, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (67, 5, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (68, 8, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (68, 8, 5)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (68, 8, 6)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (69, 4, 7)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (69, 4, 8)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (69, 4, 9)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (70, 8, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (70, 8, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (70, 8, 5)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (71, 1, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (71, 1, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (71, 1, 5)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (72, 6, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (72, 6, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (72, 6, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (73, 8, 9)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (73, 8, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (74, 4, 5)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (74, 4, 6)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (74, 4, 7)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (75, 3, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (75, 3, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (75, 3, 5)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (76, 5, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (76, 5, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (76, 5, 5)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (77, 2, 6)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (77, 2, 7)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (77, 2, 8)
GO
print 'Processed 200 total records'
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (78, 4, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (78, 4, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (78, 4, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (79, 7, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (79, 7, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (79, 7, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (80, 7, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (80, 7, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (80, 7, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (81, 6, 7)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (81, 6, 8)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (81, 6, 9)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (82, 8, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (82, 8, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (82, 8, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (83, 3, 6)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (83, 3, 7)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (83, 3, 8)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (84, 8, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (84, 8, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (84, 8, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (85, 8, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (85, 8, 5)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (85, 8, 6)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (86, 2, 1)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (86, 2, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (86, 2, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (87, 7, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (87, 7, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (87, 7, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (88, 5, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (88, 5, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (88, 5, 5)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (89, 2, 7)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (89, 2, 8)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (89, 2, 9)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (90, 6, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (90, 6, 5)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (90, 6, 6)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (91, 1, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (91, 1, 5)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (91, 1, 6)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (92, 8, 1)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (92, 8, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (92, 8, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (93, 8, 9)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (93, 8, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (94, 6, 7)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (94, 6, 8)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (94, 6, 9)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (95, 3, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (95, 3, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (95, 3, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (96, 8, 8)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (96, 8, 9)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (96, 8, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (97, 7, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (98, 2, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (98, 2, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (98, 2, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (99, 8, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (99, 8, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (99, 8, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (100, 8, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (101, 1, 1)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (102, 1, 1)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (103, 1, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (104, 1, 9)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (104, 1, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (105, 1, 7)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (105, 1, 8)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (106, 7, 5)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (107, 7, 5)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (108, 5, 6)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (109, 6, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (110, 6, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (111, 6, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (112, 4, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (113, 8, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (114, 8, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (115, 8, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (116, 8, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (116, 8, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (117, 4, 9)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (118, 2, 4)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (119, 1, 1)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (120, 1, 1)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (121, 1, 2)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (121, 1, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (122, 8, 1)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (122, 8, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (123, 1, 1)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (124, 8, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (125, 1, 3)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (126, 1, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (127, 1, 10)
INSERT [dbo].[Reservada] ([Reserva], [Fila], [Butaca]) VALUES (128, 6, 10)
/****** Object:  StoredProcedure [dbo].[AgregarReservada]    Script Date: 03/05/2020 22:55:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgregarReservada]

@Reserva int,
@Fila int,
@Butaca int

AS

INSERT INTO Reservada(Reserva, Fila, Butaca)
VALUES(@Reserva, @Fila, @Butaca)
GO
/****** Object:  Default [DF_Usuario_Activo]    Script Date: 03/05/2020 22:55:15 ******/
ALTER TABLE [dbo].[Usuario] ADD  CONSTRAINT [DF_Usuario_Activo]  DEFAULT ((1)) FOR [Activo]
GO
/****** Object:  Default [DF_Pelicula_Imagen]    Script Date: 03/05/2020 22:55:17 ******/
ALTER TABLE [dbo].[Pelicula] ADD  CONSTRAINT [DF_Pelicula_Imagen]  DEFAULT (NULL) FOR [Imagen]
GO
/****** Object:  Default [DF_Pelicula_Formato3D]    Script Date: 03/05/2020 22:55:17 ******/
ALTER TABLE [dbo].[Pelicula] ADD  CONSTRAINT [DF_Pelicula_Formato3D]  DEFAULT ((0)) FOR [Formato3D]
GO
/****** Object:  Default [DF_Pelicula_Duracion]    Script Date: 03/05/2020 22:55:17 ******/
ALTER TABLE [dbo].[Pelicula] ADD  CONSTRAINT [DF_Pelicula_Duracion]  DEFAULT ((0)) FOR [Duracion]
GO
/****** Object:  Default [DF_Pelicula_Activo]    Script Date: 03/05/2020 22:55:17 ******/
ALTER TABLE [dbo].[Pelicula] ADD  CONSTRAINT [DF_Pelicula_Activo]  DEFAULT ((1)) FOR [Activo]
GO
/****** Object:  ForeignKey [FK_Pelicula_Calificacion]    Script Date: 03/05/2020 22:55:17 ******/
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Pelicula_Calificacion] FOREIGN KEY([Calificacion])
REFERENCES [dbo].[Calificacion] ([Id])
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [FK_Pelicula_Calificacion]
GO
/****** Object:  ForeignKey [FK_Pelicula_Genero]    Script Date: 03/05/2020 22:55:17 ******/
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Pelicula_Genero] FOREIGN KEY([Genero])
REFERENCES [dbo].[Genero] ([Id])
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [FK_Pelicula_Genero]
GO
/****** Object:  ForeignKey [fk_Precio]    Script Date: 03/05/2020 22:55:17 ******/
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [fk_Precio] FOREIGN KEY([Formato3D])
REFERENCES [dbo].[Precio] ([Formato3D])
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [fk_Precio]
GO
/****** Object:  ForeignKey [FK_Sala_Sucursal]    Script Date: 03/05/2020 22:55:17 ******/
ALTER TABLE [dbo].[Sala]  WITH CHECK ADD  CONSTRAINT [FK_Sala_Sucursal] FOREIGN KEY([Sucursal])
REFERENCES [dbo].[Sucursal] ([Id])
GO
ALTER TABLE [dbo].[Sala] CHECK CONSTRAINT [FK_Sala_Sucursal]
GO
/****** Object:  ForeignKey [FK_Funcion_Pelicula]    Script Date: 03/05/2020 22:55:17 ******/
ALTER TABLE [dbo].[Funcion]  WITH CHECK ADD  CONSTRAINT [FK_Funcion_Pelicula] FOREIGN KEY([Pelicula])
REFERENCES [dbo].[Pelicula] ([Id])
GO
ALTER TABLE [dbo].[Funcion] CHECK CONSTRAINT [FK_Funcion_Pelicula]
GO
/****** Object:  ForeignKey [FK_Funcion_Sala]    Script Date: 03/05/2020 22:55:17 ******/
ALTER TABLE [dbo].[Funcion]  WITH CHECK ADD  CONSTRAINT [FK_Funcion_Sala] FOREIGN KEY([Sala])
REFERENCES [dbo].[Sala] ([Id])
GO
ALTER TABLE [dbo].[Funcion] CHECK CONSTRAINT [FK_Funcion_Sala]
GO
/****** Object:  ForeignKey [FK_Reserva_Funcion]    Script Date: 03/05/2020 22:55:18 ******/
ALTER TABLE [dbo].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Reserva_Funcion] FOREIGN KEY([Funcion])
REFERENCES [dbo].[Funcion] ([Id])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [FK_Reserva_Funcion]
GO
/****** Object:  ForeignKey [FK_Reserva_Usuario]    Script Date: 03/05/2020 22:55:18 ******/
ALTER TABLE [dbo].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Reserva_Usuario] FOREIGN KEY([Usuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [FK_Reserva_Usuario]
GO
/****** Object:  ForeignKey [FK_Reservada_Reserva]    Script Date: 03/05/2020 22:55:18 ******/
ALTER TABLE [dbo].[Reservada]  WITH CHECK ADD  CONSTRAINT [FK_Reservada_Reserva] FOREIGN KEY([Reserva])
REFERENCES [dbo].[Reserva] ([Id])
GO
ALTER TABLE [dbo].[Reservada] CHECK CONSTRAINT [FK_Reservada_Reserva]
GO
