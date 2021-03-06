USE [master]
GO
/****** Object:  Database [Club]    Script Date: 20/11/2020 16:10:27 ******/
CREATE DATABASE [Club]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Club', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Club.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Club_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Club_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Club] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Club].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Club] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Club] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Club] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Club] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Club] SET ARITHABORT OFF 
GO
ALTER DATABASE [Club] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Club] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Club] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Club] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Club] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Club] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Club] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Club] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Club] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Club] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Club] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Club] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Club] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Club] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Club] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Club] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Club] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Club] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Club] SET  MULTI_USER 
GO
ALTER DATABASE [Club] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Club] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Club] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Club] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Club] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Club] SET QUERY_STORE = OFF
GO
USE [Club]
GO
/****** Object:  Table [dbo].[Actividades]    Script Date: 20/11/2020 16:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actividades](
	[idActividad] [int] IDENTITY(1,1) NOT NULL,
	[actividad] [nvarchar](50) NOT NULL,
	[precio] [float] NOT NULL,
 CONSTRAINT [PK_Actividades] PRIMARY KEY CLUSTERED 
(
	[idActividad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 20/11/2020 16:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[idAdmin] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [nvarchar](50) NOT NULL,
	[contrasena] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Administradores] PRIMARY KEY CLUSTERED 
(
	[idAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cuotas]    Script Date: 20/11/2020 16:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuotas](
	[idCuota] [int] IDENTITY(1,1) NOT NULL,
	[idSocio] [int] NOT NULL,
	[idActividad] [int] NOT NULL,
 CONSTRAINT [PK_Cuotas] PRIMARY KEY CLUSTERED 
(
	[idCuota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Noticias]    Script Date: 20/11/2020 16:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Noticias](
	[idNoticia] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [nvarchar](100) NOT NULL,
	[noticia] [nvarchar](200) NOT NULL,
	[fecha] [nvarchar](50) NULL,
	[idActividad] [int] NULL,
	[visible] [int] NULL,
 CONSTRAINT [PK_Noticias] PRIMARY KEY CLUSTERED 
(
	[idNoticia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 20/11/2020 16:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[idPago] [int] IDENTITY(1,1) NOT NULL,
	[idSocio] [int] NOT NULL,
	[fecha] [date] NOT NULL,
	[monto] [float] NOT NULL,
 CONSTRAINT [PK_Pagos] PRIMARY KEY CLUSTERED 
(
	[idPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Socios]    Script Date: 20/11/2020 16:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Socios](
	[idSocio] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[apellido] [nvarchar](50) NULL,
	[dni] [nvarchar](50) NULL,
	[telefono] [nvarchar](50) NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_Socios] PRIMARY KEY CLUSTERED 
(
	[idSocio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Actividades] ON 

INSERT [dbo].[Actividades] ([idActividad], [actividad], [precio]) VALUES (1, N'Natacion', 1200)
INSERT [dbo].[Actividades] ([idActividad], [actividad], [precio]) VALUES (2, N'Futbol', 950)
INSERT [dbo].[Actividades] ([idActividad], [actividad], [precio]) VALUES (4, N'Yoga', 850)
INSERT [dbo].[Actividades] ([idActividad], [actividad], [precio]) VALUES (5, N'Tenis', 1300)
INSERT [dbo].[Actividades] ([idActividad], [actividad], [precio]) VALUES (7, N'Rugby', 1200)
INSERT [dbo].[Actividades] ([idActividad], [actividad], [precio]) VALUES (8, N'Basquet', 760)
SET IDENTITY_INSERT [dbo].[Actividades] OFF
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([idAdmin], [usuario], [contrasena]) VALUES (1, N'admin', N'12345')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Cuotas] ON 

INSERT [dbo].[Cuotas] ([idCuota], [idSocio], [idActividad]) VALUES (1, 2, 2)
INSERT [dbo].[Cuotas] ([idCuota], [idSocio], [idActividad]) VALUES (2, 3, 5)
INSERT [dbo].[Cuotas] ([idCuota], [idSocio], [idActividad]) VALUES (5, 1, 4)
INSERT [dbo].[Cuotas] ([idCuota], [idSocio], [idActividad]) VALUES (6, 1, 7)
INSERT [dbo].[Cuotas] ([idCuota], [idSocio], [idActividad]) VALUES (10, 15, 1)
INSERT [dbo].[Cuotas] ([idCuota], [idSocio], [idActividad]) VALUES (11, 14, 5)
INSERT [dbo].[Cuotas] ([idCuota], [idSocio], [idActividad]) VALUES (12, 16, 4)
SET IDENTITY_INSERT [dbo].[Cuotas] OFF
GO
SET IDENTITY_INSERT [dbo].[Noticias] ON 

INSERT [dbo].[Noticias] ([idNoticia], [titulo], [noticia], [fecha], [idActividad], [visible]) VALUES (5, N'Nadia Podoroska volvio a ganar', N' La rosarina clasifico a la siguiente instancia del Torneo de Linz. ', N'28-09-2020', 5, 1)
INSERT [dbo].[Noticias] ([idNoticia], [titulo], [noticia], [fecha], [idActividad], [visible]) VALUES (6, N'Se conocieron las fechas para el Mundial de Clubes', N' Los unicos clasificados hasta el momentos son el Bayern de Munich aleman y el Al Duhail de Qatar', N'27-11-2020', 2, 1)
INSERT [dbo].[Noticias] ([idNoticia], [titulo], [noticia], [fecha], [idActividad], [visible]) VALUES (7, N'Dominic Thiem supero a Rafael Nadal por la segunda fecha del ATP Finals', N'El austriaco quedo como primero en su grupo que comparte con Stefanos Tsitsipas y Andrey Rublev', N'12- 10-2020', 5, 1)
INSERT [dbo].[Noticias] ([idNoticia], [titulo], [noticia], [fecha], [idActividad], [visible]) VALUES (8, N'Se viene una maraton de Yoga virtual en la Argentina', N' En tiempos de aislamiento social se aproxima un nuevo de realiza esta actividad conectarse con uno mismo', N'25-09-2020', 4, 1)
INSERT [dbo].[Noticias] ([idNoticia], [titulo], [noticia], [fecha], [idActividad], [visible]) VALUES (9, N'Es oficial: vuelve la Liga Nacional', N' Despues de dias de incertidumbre, se autorizo el inicio de la competencia, que comenzara este miercoles', N'15-07-2020', 8, 1)
INSERT [dbo].[Noticias] ([idNoticia], [titulo], [noticia], [fecha], [idActividad], [visible]) VALUES (10, N'Los Pumas y una caricia para el rugby', N'Un deporte que se habia ganado el reconocimiento de la gente por sus valores, retrocedio con la violencia fuera de las canchas', N'23-10-2020', 7, 1)
SET IDENTITY_INSERT [dbo].[Noticias] OFF
GO
SET IDENTITY_INSERT [dbo].[Pagos] ON 

INSERT [dbo].[Pagos] ([idPago], [idSocio], [fecha], [monto]) VALUES (1, 3, CAST(N'2020-11-27' AS Date), 1300)
INSERT [dbo].[Pagos] ([idPago], [idSocio], [fecha], [monto]) VALUES (2, 2, CAST(N'2020-10-12' AS Date), 950)
INSERT [dbo].[Pagos] ([idPago], [idSocio], [fecha], [monto]) VALUES (3, 15, CAST(N'2020-11-23' AS Date), 1200)
INSERT [dbo].[Pagos] ([idPago], [idSocio], [fecha], [monto]) VALUES (4, 2, CAST(N'2020-09-28' AS Date), 950)
INSERT [dbo].[Pagos] ([idPago], [idSocio], [fecha], [monto]) VALUES (5, 3, CAST(N'2020-12-15' AS Date), 1300)
INSERT [dbo].[Pagos] ([idPago], [idSocio], [fecha], [monto]) VALUES (6, 1, CAST(N'2020-07-15' AS Date), 2050)
INSERT [dbo].[Pagos] ([idPago], [idSocio], [fecha], [monto]) VALUES (8, 14, CAST(N'2020-11-12' AS Date), 1300)
INSERT [dbo].[Pagos] ([idPago], [idSocio], [fecha], [monto]) VALUES (9, 16, CAST(N'2020-10-28' AS Date), 850)
INSERT [dbo].[Pagos] ([idPago], [idSocio], [fecha], [monto]) VALUES (10, 15, CAST(N'2020-11-14' AS Date), 1200)
INSERT [dbo].[Pagos] ([idPago], [idSocio], [fecha], [monto]) VALUES (11, 15, CAST(N'2020-10-22' AS Date), 1200)
SET IDENTITY_INSERT [dbo].[Pagos] OFF
GO
SET IDENTITY_INSERT [dbo].[Socios] ON 

INSERT [dbo].[Socios] ([idSocio], [nombre], [apellido], [dni], [telefono], [estado]) VALUES (1, N'Lara', N'Lopez', N'24989203', N'351293405', 1)
INSERT [dbo].[Socios] ([idSocio], [nombre], [apellido], [dni], [telefono], [estado]) VALUES (2, N'Julio', N'Moreno', N'42380849', N'351293843', 1)
INSERT [dbo].[Socios] ([idSocio], [nombre], [apellido], [dni], [telefono], [estado]) VALUES (3, N'Micaela', N'Fernandez', N'31982038', N'351293482', 1)
INSERT [dbo].[Socios] ([idSocio], [nombre], [apellido], [dni], [telefono], [estado]) VALUES (10, N'Agustina', N'Giannico', N'42383022', N'3512289304', 1)
INSERT [dbo].[Socios] ([idSocio], [nombre], [apellido], [dni], [telefono], [estado]) VALUES (14, N'Juan', N'Diaz', N'27398084', N'351896345', 1)
INSERT [dbo].[Socios] ([idSocio], [nombre], [apellido], [dni], [telefono], [estado]) VALUES (15, N'Carla', N'Molina', N'34875943', N'351870234', 1)
INSERT [dbo].[Socios] ([idSocio], [nombre], [apellido], [dni], [telefono], [estado]) VALUES (16, N'Ana', N'Zarate', N'18975384', N'351983045', 1)
SET IDENTITY_INSERT [dbo].[Socios] OFF
GO
ALTER TABLE [dbo].[Cuotas]  WITH CHECK ADD  CONSTRAINT [FK_Cuotas_Actividades] FOREIGN KEY([idActividad])
REFERENCES [dbo].[Actividades] ([idActividad])
GO
ALTER TABLE [dbo].[Cuotas] CHECK CONSTRAINT [FK_Cuotas_Actividades]
GO
ALTER TABLE [dbo].[Cuotas]  WITH CHECK ADD  CONSTRAINT [FK_Cuotas_Socios] FOREIGN KEY([idSocio])
REFERENCES [dbo].[Socios] ([idSocio])
GO
ALTER TABLE [dbo].[Cuotas] CHECK CONSTRAINT [FK_Cuotas_Socios]
GO
ALTER TABLE [dbo].[Noticias]  WITH CHECK ADD  CONSTRAINT [FK_Noticias_Actividades] FOREIGN KEY([idActividad])
REFERENCES [dbo].[Actividades] ([idActividad])
GO
ALTER TABLE [dbo].[Noticias] CHECK CONSTRAINT [FK_Noticias_Actividades]
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_Socios] FOREIGN KEY([idSocio])
REFERENCES [dbo].[Socios] ([idSocio])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [FK_Pagos_Socios]
GO
USE [master]
GO
ALTER DATABASE [Club] SET  READ_WRITE 
GO
