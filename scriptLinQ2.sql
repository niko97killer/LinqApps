USE [DAM_Andermaestre_DEV]
GO
/****** Object:  Schema [LINQ2]    Script Date: 24/01/2020 18:41:43 ******/
CREATE SCHEMA [LINQ2]
GO
/****** Object:  Table [LINQ2].[Pilotos]    Script Date: 24/01/2020 18:41:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LINQ2].[Pilotos](
	[CodPiloto] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[HorasVuelo] [int] NULL,
	[DNI] [nchar](10) NULL,
	[Direccion] [varchar](50) NULL,
	[Telefono] [nchar](10) NULL,
 CONSTRAINT [PK_Pilotos] PRIMARY KEY CLUSTERED 
(
	[CodPiloto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [LINQ2].[Reservas]    Script Date: 24/01/2020 18:41:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LINQ2].[Reservas](
	[CodReserva] [int] NOT NULL,
	[CodViaje] [int] NULL,
	[CodViajero] [int] NULL,
	[Precio] [float] NULL,
 CONSTRAINT [PK_Reservas] PRIMARY KEY CLUSTERED 
(
	[CodReserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [LINQ2].[Viajeros]    Script Date: 24/01/2020 18:41:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LINQ2].[Viajeros](
	[CodViajero] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
	[DNI] [nchar](10) NULL,
	[Telefono] [nchar](10) NULL,
	[Ciudad] [varchar](20) NULL,
 CONSTRAINT [PK_Viajeros] PRIMARY KEY CLUSTERED 
(
	[CodViajero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [LINQ2].[Viajes]    Script Date: 24/01/2020 18:41:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LINQ2].[Viajes](
	[CodViaje] [int] NOT NULL,
	[Destino] [varchar](50) NULL,
	[PlazasMax] [int] NULL,
	[PlazasMin] [int] NULL,
	[FechaSalida] [date] NULL,
	[FechaRegreso] [date] NULL,
	[CodPiloto] [int] NULL,
 CONSTRAINT [PK_Viajes] PRIMARY KEY CLUSTERED 
(
	[CodViaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [LINQ2].[Pilotos] ([CodPiloto], [Nombre], [HorasVuelo], [DNI], [Direccion], [Telefono]) VALUES (1, N'Pedro', 2, N'333       ', N'Jajajaj', N'2233X     ')
INSERT [LINQ2].[Pilotos] ([CodPiloto], [Nombre], [HorasVuelo], [DNI], [Direccion], [Telefono]) VALUES (2, N'Gomo', 33, N'XX9ji43   ', N'Terminal X', N'X4PL5     ')
INSERT [LINQ2].[Reservas] ([CodReserva], [CodViaje], [CodViajero], [Precio]) VALUES (1, 1, 1, 100)
INSERT [LINQ2].[Reservas] ([CodReserva], [CodViaje], [CodViajero], [Precio]) VALUES (2, 1, 2, 12)
INSERT [LINQ2].[Reservas] ([CodReserva], [CodViaje], [CodViajero], [Precio]) VALUES (3, 2, 3, 3)
INSERT [LINQ2].[Reservas] ([CodReserva], [CodViaje], [CodViajero], [Precio]) VALUES (4, 3, 2, 20)
INSERT [LINQ2].[Reservas] ([CodReserva], [CodViaje], [CodViajero], [Precio]) VALUES (5, 3, 1, 33)
INSERT [LINQ2].[Reservas] ([CodReserva], [CodViaje], [CodViajero], [Precio]) VALUES (6, 2, 3, 20)
INSERT [LINQ2].[Viajeros] ([CodViajero], [Nombre], [Direccion], [DNI], [Telefono], [Ciudad]) VALUES (1, N'Anormal', N'Sub', N'b0b0b0b0  ', N'222999444 ', N'Lepe')
INSERT [LINQ2].[Viajeros] ([CodViajero], [Nombre], [Direccion], [DNI], [Telefono], [Ciudad]) VALUES (2, N'Bestia', N'Brut', N'8URR0     ', N'333999487 ', N'Aspace')
INSERT [LINQ2].[Viajeros] ([CodViajero], [Nombre], [Direccion], [DNI], [Telefono], [Ciudad]) VALUES (3, N'Gil...Guero', N'xxx', N'222       ', N'929838747 ', N'Lezo')
INSERT [LINQ2].[Viajes] ([CodViaje], [Destino], [PlazasMax], [PlazasMin], [FechaSalida], [FechaRegreso], [CodPiloto]) VALUES (1, N'Portugal', 3, 2, CAST(N'2020-01-21' AS Date), CAST(N'2020-01-22' AS Date), 1)
INSERT [LINQ2].[Viajes] ([CodViaje], [Destino], [PlazasMax], [PlazasMin], [FechaSalida], [FechaRegreso], [CodPiloto]) VALUES (2, N'Singapur', 43, 2, CAST(N'2020-02-01' AS Date), CAST(N'2020-02-21' AS Date), 2)
INSERT [LINQ2].[Viajes] ([CodViaje], [Destino], [PlazasMax], [PlazasMin], [FechaSalida], [FechaRegreso], [CodPiloto]) VALUES (3, N'Australia', 12, 2, CAST(N'2020-03-01' AS Date), CAST(N'2020-03-21' AS Date), 1)
ALTER TABLE [LINQ2].[Reservas]  WITH CHECK ADD  CONSTRAINT [FK_Reservas_Viajeros] FOREIGN KEY([CodViajero])
REFERENCES [LINQ2].[Viajeros] ([CodViajero])
GO
ALTER TABLE [LINQ2].[Reservas] CHECK CONSTRAINT [FK_Reservas_Viajeros]
GO
ALTER TABLE [LINQ2].[Reservas]  WITH CHECK ADD  CONSTRAINT [FK_Reservas_Viajes] FOREIGN KEY([CodViaje])
REFERENCES [LINQ2].[Viajes] ([CodViaje])
GO
ALTER TABLE [LINQ2].[Reservas] CHECK CONSTRAINT [FK_Reservas_Viajes]
GO
ALTER TABLE [LINQ2].[Viajes]  WITH CHECK ADD  CONSTRAINT [FK_Viajes_Pilotos] FOREIGN KEY([CodPiloto])
REFERENCES [LINQ2].[Pilotos] ([CodPiloto])
GO
ALTER TABLE [LINQ2].[Viajes] CHECK CONSTRAINT [FK_Viajes_Pilotos]
GO
