USE [master]
GO
/****** Object:  Database [TORNEO_DB]    Script Date: 21/9/2024 11:23:51 ******/
CREATE DATABASE [TORNEO_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TORNEO_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TORNEO_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TORNEO_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TORNEO_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TORNEO_DB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TORNEO_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TORNEO_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TORNEO_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TORNEO_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TORNEO_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TORNEO_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [TORNEO_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TORNEO_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TORNEO_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TORNEO_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TORNEO_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TORNEO_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TORNEO_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TORNEO_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TORNEO_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TORNEO_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TORNEO_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TORNEO_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TORNEO_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TORNEO_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TORNEO_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TORNEO_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TORNEO_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TORNEO_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TORNEO_DB] SET  MULTI_USER 
GO
ALTER DATABASE [TORNEO_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TORNEO_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TORNEO_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TORNEO_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TORNEO_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TORNEO_DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TORNEO_DB] SET QUERY_STORE = OFF
GO
USE [TORNEO_DB]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 21/9/2024 11:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[Id_Categoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Edad_Min] [int] NOT NULL,
	[Edad_Max] [int] NOT NULL,
	[Sexo] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[Id_Categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inscripciones]    Script Date: 21/9/2024 11:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inscripciones](
	[Num_Inscripcion] [int] IDENTITY(1,1) NOT NULL,
	[Fecha_Inscripcion] [date] NOT NULL,
	[Abono_Inscripcion] [bit] NOT NULL,
	[Fk_Categoria] [int] NULL,
	[Fk_Participante] [int] NULL,
 CONSTRAINT [PK_Inscripciones] PRIMARY KEY CLUSTERED 
(
	[Num_Inscripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Participantes]    Script Date: 21/9/2024 11:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Participantes](
	[Id_Participante] [int] IDENTITY(1,1) NOT NULL,
	[DNI_Participante] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellido] [nvarchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Telefono] [nvarchar](50) NULL,
	[Sexo] [nvarchar](50) NULL,
 CONSTRAINT [PK_Participantes] PRIMARY KEY CLUSTERED 
(
	[Id_Participante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([Id_Categoria], [Nombre], [Edad_Min], [Edad_Max], [Sexo]) VALUES (1, N'Damas A', 18, 34, N'Femenino  ')
INSERT [dbo].[Categorias] ([Id_Categoria], [Nombre], [Edad_Min], [Edad_Max], [Sexo]) VALUES (2, N'Damas B', 35, 45, N'Femenino  ')
INSERT [dbo].[Categorias] ([Id_Categoria], [Nombre], [Edad_Min], [Edad_Max], [Sexo]) VALUES (3, N'Damas C', 46, 100, N'Femenino  ')
INSERT [dbo].[Categorias] ([Id_Categoria], [Nombre], [Edad_Min], [Edad_Max], [Sexo]) VALUES (4, N'Caballeros A', 18, 34, N'Masculino ')
INSERT [dbo].[Categorias] ([Id_Categoria], [Nombre], [Edad_Min], [Edad_Max], [Sexo]) VALUES (5, N'Caballeros B', 35, 50, N'Masculino ')
INSERT [dbo].[Categorias] ([Id_Categoria], [Nombre], [Edad_Min], [Edad_Max], [Sexo]) VALUES (6, N'Caballeros C', 51, 100, N'Masculino ')
INSERT [dbo].[Categorias] ([Id_Categoria], [Nombre], [Edad_Min], [Edad_Max], [Sexo]) VALUES (7, N'Juveniles Mujeres', 13, 17, N'Femenino  ')
INSERT [dbo].[Categorias] ([Id_Categoria], [Nombre], [Edad_Min], [Edad_Max], [Sexo]) VALUES (8, N'Juveniles Varones', 13, 17, N'Masculino ')
SET IDENTITY_INSERT [dbo].[Categorias] OFF
GO
SET IDENTITY_INSERT [dbo].[Inscripciones] ON 

INSERT [dbo].[Inscripciones] ([Num_Inscripcion], [Fecha_Inscripcion], [Abono_Inscripcion], [Fk_Categoria], [Fk_Participante]) VALUES (1, CAST(N'2024-01-22' AS Date), 1, 1, 1)
INSERT [dbo].[Inscripciones] ([Num_Inscripcion], [Fecha_Inscripcion], [Abono_Inscripcion], [Fk_Categoria], [Fk_Participante]) VALUES (5, CAST(N'2024-01-22' AS Date), 1, 5, 2)
INSERT [dbo].[Inscripciones] ([Num_Inscripcion], [Fecha_Inscripcion], [Abono_Inscripcion], [Fk_Categoria], [Fk_Participante]) VALUES (7, CAST(N'2024-01-22' AS Date), 1, 1, 3)
INSERT [dbo].[Inscripciones] ([Num_Inscripcion], [Fecha_Inscripcion], [Abono_Inscripcion], [Fk_Categoria], [Fk_Participante]) VALUES (8, CAST(N'2024-01-22' AS Date), 1, 5, 4)
INSERT [dbo].[Inscripciones] ([Num_Inscripcion], [Fecha_Inscripcion], [Abono_Inscripcion], [Fk_Categoria], [Fk_Participante]) VALUES (9, CAST(N'2024-01-22' AS Date), 1, 1, 5)
INSERT [dbo].[Inscripciones] ([Num_Inscripcion], [Fecha_Inscripcion], [Abono_Inscripcion], [Fk_Categoria], [Fk_Participante]) VALUES (10, CAST(N'2024-01-22' AS Date), 1, 4, 6)
INSERT [dbo].[Inscripciones] ([Num_Inscripcion], [Fecha_Inscripcion], [Abono_Inscripcion], [Fk_Categoria], [Fk_Participante]) VALUES (11, CAST(N'2024-01-22' AS Date), 1, 1, 7)
INSERT [dbo].[Inscripciones] ([Num_Inscripcion], [Fecha_Inscripcion], [Abono_Inscripcion], [Fk_Categoria], [Fk_Participante]) VALUES (12, CAST(N'2024-01-22' AS Date), 1, 5, 8)
INSERT [dbo].[Inscripciones] ([Num_Inscripcion], [Fecha_Inscripcion], [Abono_Inscripcion], [Fk_Categoria], [Fk_Participante]) VALUES (13, CAST(N'2024-02-22' AS Date), 1, 1, 9)
INSERT [dbo].[Inscripciones] ([Num_Inscripcion], [Fecha_Inscripcion], [Abono_Inscripcion], [Fk_Categoria], [Fk_Participante]) VALUES (15, CAST(N'2024-02-22' AS Date), 1, 4, 10)
INSERT [dbo].[Inscripciones] ([Num_Inscripcion], [Fecha_Inscripcion], [Abono_Inscripcion], [Fk_Categoria], [Fk_Participante]) VALUES (16, CAST(N'2024-03-22' AS Date), 1, 1, 11)
INSERT [dbo].[Inscripciones] ([Num_Inscripcion], [Fecha_Inscripcion], [Abono_Inscripcion], [Fk_Categoria], [Fk_Participante]) VALUES (17, CAST(N'2024-03-22' AS Date), 1, 5, 12)
INSERT [dbo].[Inscripciones] ([Num_Inscripcion], [Fecha_Inscripcion], [Abono_Inscripcion], [Fk_Categoria], [Fk_Participante]) VALUES (18, CAST(N'2024-02-22' AS Date), 0, 1, 13)
INSERT [dbo].[Inscripciones] ([Num_Inscripcion], [Fecha_Inscripcion], [Abono_Inscripcion], [Fk_Categoria], [Fk_Participante]) VALUES (19, CAST(N'2024-02-22' AS Date), 0, 5, 14)
SET IDENTITY_INSERT [dbo].[Inscripciones] OFF
GO
SET IDENTITY_INSERT [dbo].[Participantes] ON 

INSERT [dbo].[Participantes] ([Id_Participante], [DNI_Participante], [Nombre], [Apellido], [Edad], [Telefono], [Sexo]) VALUES (1, 30123456, N'Lucía', N'Gómez', 28, N'155-123-4567', N'Femenino')
INSERT [dbo].[Participantes] ([Id_Participante], [DNI_Participante], [Nombre], [Apellido], [Edad], [Telefono], [Sexo]) VALUES (2, 40123457, N'Martín', N'López', 35, N'155-234-5678', N'Masculino')
INSERT [dbo].[Participantes] ([Id_Participante], [DNI_Participante], [Nombre], [Apellido], [Edad], [Telefono], [Sexo]) VALUES (3, 50123458, N'Sofía', N'Rodríguez', 22, N'155-345-6789', N'Femenino')
INSERT [dbo].[Participantes] ([Id_Participante], [DNI_Participante], [Nombre], [Apellido], [Edad], [Telefono], [Sexo]) VALUES (4, 60123459, N'Joaquín', N'Fernández', 40, N'155-456-7890', N'Masculino')
INSERT [dbo].[Participantes] ([Id_Participante], [DNI_Participante], [Nombre], [Apellido], [Edad], [Telefono], [Sexo]) VALUES (5, 70123450, N'Valentina', N'García', 19, N'155-567-8901', N'Femenino')
INSERT [dbo].[Participantes] ([Id_Participante], [DNI_Participante], [Nombre], [Apellido], [Edad], [Telefono], [Sexo]) VALUES (6, 80123451, N'Tomás', N'Martínez', 33, N'155-678-9012', N'Masculino')
INSERT [dbo].[Participantes] ([Id_Participante], [DNI_Participante], [Nombre], [Apellido], [Edad], [Telefono], [Sexo]) VALUES (7, 90123452, N'Isabella', N'Díaz', 26, N'155-789-0123', N'Femenino')
INSERT [dbo].[Participantes] ([Id_Participante], [DNI_Participante], [Nombre], [Apellido], [Edad], [Telefono], [Sexo]) VALUES (8, 10123453, N'Juan', N'Pérez', 45, N'155-890-1234', N'Masculino')
INSERT [dbo].[Participantes] ([Id_Participante], [DNI_Participante], [Nombre], [Apellido], [Edad], [Telefono], [Sexo]) VALUES (9, 20123454, N'Emma', N'Suárez', 29, N'155-901-2345', N'Femenino')
INSERT [dbo].[Participantes] ([Id_Participante], [DNI_Participante], [Nombre], [Apellido], [Edad], [Telefono], [Sexo]) VALUES (10, 90123455, N'Lautaro', N'Ramírez', 31, N'155-012-3456', N'Masculino')
INSERT [dbo].[Participantes] ([Id_Participante], [DNI_Participante], [Nombre], [Apellido], [Edad], [Telefono], [Sexo]) VALUES (11, 30123450, N'Renata', N'Torres', 23, N'155-111-2222', N'Femenino')
INSERT [dbo].[Participantes] ([Id_Participante], [DNI_Participante], [Nombre], [Apellido], [Edad], [Telefono], [Sexo]) VALUES (12, 40123451, N'Alejandro', N'Gutierrez', 38, N'155-222-3333', N'Masculino')
INSERT [dbo].[Participantes] ([Id_Participante], [DNI_Participante], [Nombre], [Apellido], [Edad], [Telefono], [Sexo]) VALUES (13, 50123452, N'Abril', N'Santos', 27, N'155-333-4444', N'Femenino')
INSERT [dbo].[Participantes] ([Id_Participante], [DNI_Participante], [Nombre], [Apellido], [Edad], [Telefono], [Sexo]) VALUES (14, 60123453, N'Facundo', N'Hernández', 42, N'155-444-5555', N'Masculino')
INSERT [dbo].[Participantes] ([Id_Participante], [DNI_Participante], [Nombre], [Apellido], [Edad], [Telefono], [Sexo]) VALUES (15, 70123454, N'Martina', N'Giménez', 20, N'155-555-6666', N'Femenino')
SET IDENTITY_INSERT [dbo].[Participantes] OFF
GO
ALTER TABLE [dbo].[Inscripciones]  WITH CHECK ADD  CONSTRAINT [FK_Inscripciones_Categorias] FOREIGN KEY([Fk_Categoria])
REFERENCES [dbo].[Categorias] ([Id_Categoria])
GO
ALTER TABLE [dbo].[Inscripciones] CHECK CONSTRAINT [FK_Inscripciones_Categorias]
GO
ALTER TABLE [dbo].[Inscripciones]  WITH CHECK ADD  CONSTRAINT [FK_Inscripciones_Participantes] FOREIGN KEY([Fk_Participante])
REFERENCES [dbo].[Participantes] ([Id_Participante])
GO
ALTER TABLE [dbo].[Inscripciones] CHECK CONSTRAINT [FK_Inscripciones_Participantes]
GO
USE [master]
GO
ALTER DATABASE [TORNEO_DB] SET  READ_WRITE 
GO
