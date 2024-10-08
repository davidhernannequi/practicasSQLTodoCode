USE [master]
GO
/****** Object:  Database [VETERINARIA_DB]    Script Date: 21/9/2024 11:24:55 ******/
CREATE DATABASE [VETERINARIA_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VETERINARIA_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\VETERINARIA_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VETERINARIA_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\VETERINARIA_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [VETERINARIA_DB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VETERINARIA_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VETERINARIA_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VETERINARIA_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VETERINARIA_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VETERINARIA_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VETERINARIA_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [VETERINARIA_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VETERINARIA_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VETERINARIA_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VETERINARIA_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VETERINARIA_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VETERINARIA_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VETERINARIA_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VETERINARIA_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VETERINARIA_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VETERINARIA_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [VETERINARIA_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VETERINARIA_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VETERINARIA_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VETERINARIA_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VETERINARIA_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VETERINARIA_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VETERINARIA_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VETERINARIA_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [VETERINARIA_DB] SET  MULTI_USER 
GO
ALTER DATABASE [VETERINARIA_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VETERINARIA_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VETERINARIA_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VETERINARIA_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [VETERINARIA_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [VETERINARIA_DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [VETERINARIA_DB] SET QUERY_STORE = OFF
GO
USE [VETERINARIA_DB]
GO
/****** Object:  Table [dbo].[Pacientes]    Script Date: 21/9/2024 11:24:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pacientes](
	[Id_Paciente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Paciente] [varchar](50) NOT NULL,
	[Fecha_Nacimiento] [date] NOT NULL,
	[Especie] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Pacientes] PRIMARY KEY CLUSTERED 
(
	[Id_Paciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tratamientos]    Script Date: 21/9/2024 11:24:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tratamientos](
	[Id_Tratamiento] [int] IDENTITY(1,1) NOT NULL,
	[Id_Paciente] [int] NOT NULL,
	[Tipo_Tratamiento] [nvarchar](50) NOT NULL,
	[Fecha_Tratamiento] [date] NOT NULL,
 CONSTRAINT [PK_Tratamientos] PRIMARY KEY CLUSTERED 
(
	[Id_Tratamiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Pacientes] ON 

INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (1, N'Pipo', CAST(N'2020-03-01' AS Date), N'Perro')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (2, N'Obama', CAST(N'2022-01-11' AS Date), N'Perro')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (3, N'Lilo', CAST(N'2021-02-22' AS Date), N'')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (4, N'Lolo', CAST(N'2023-03-03' AS Date), N'Perro')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (5, N'Luli', CAST(N'2020-01-01' AS Date), N'Gato')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (6, N'Charly', CAST(N'2021-03-01' AS Date), N'Perro')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (7, N'Paco', CAST(N'2022-01-03' AS Date), N'Loro')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (8, N'Nieves', CAST(N'2022-02-02' AS Date), N'Perro')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (9, N'Morita', CAST(N'2022-07-07' AS Date), N'Gato')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (10, N'Pepi', CAST(N'2017-01-01' AS Date), N'Loro')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (20, N'Pepi', CAST(N'2017-07-03' AS Date), N'Loro')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (21, N'Morita', CAST(N'2022-06-07' AS Date), N'Gato')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (22, N'Obama', CAST(N'2022-09-09' AS Date), N'Perro')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (23, N'Aris', CAST(N'2020-02-02' AS Date), N'Gato')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (24, N'Jack', CAST(N'2019-06-02' AS Date), N'Perro')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (25, N'Osito', CAST(N'2020-01-01' AS Date), N'Perro')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (26, N'Atos', CAST(N'2017-04-04' AS Date), N'Perro')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (27, N'Nieves', CAST(N'2023-01-02' AS Date), N'Perro')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (28, N'Luli', CAST(N'2018-04-09' AS Date), N'Gato')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (29, N'Pirata', CAST(N'2024-01-11' AS Date), N'Loro')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (30, N'Pepi', CAST(N'2017-07-03' AS Date), N'Loro')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (31, N'Morita', CAST(N'2022-06-07' AS Date), N'Gato')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (32, N'Obama', CAST(N'2022-09-09' AS Date), N'Perro')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (33, N'Aris', CAST(N'2020-02-02' AS Date), N'Gato')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (34, N'Jack', CAST(N'2019-06-02' AS Date), N'Perro')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (35, N'Osito', CAST(N'2020-01-01' AS Date), N'Perro')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (36, N'Atos', CAST(N'2017-04-04' AS Date), N'Perro')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (37, N'Nieves', CAST(N'2023-01-02' AS Date), N'Perro')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (38, N'Luli', CAST(N'2018-04-09' AS Date), N'Gato')
INSERT [dbo].[Pacientes] ([Id_Paciente], [Nombre_Paciente], [Fecha_Nacimiento], [Especie]) VALUES (39, N'Pirata', CAST(N'2024-01-11' AS Date), N'Loro')
SET IDENTITY_INSERT [dbo].[Pacientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Tratamientos] ON 

INSERT [dbo].[Tratamientos] ([Id_Tratamiento], [Id_Paciente], [Tipo_Tratamiento], [Fecha_Tratamiento]) VALUES (3, 1, N'Vacunacion', CAST(N'2018-07-03' AS Date))
INSERT [dbo].[Tratamientos] ([Id_Tratamiento], [Id_Paciente], [Tipo_Tratamiento], [Fecha_Tratamiento]) VALUES (4, 2, N'Desparacitacion', CAST(N'2023-06-07' AS Date))
INSERT [dbo].[Tratamientos] ([Id_Tratamiento], [Id_Paciente], [Tipo_Tratamiento], [Fecha_Tratamiento]) VALUES (5, 3, N'Chequeo General', CAST(N'2023-09-09' AS Date))
INSERT [dbo].[Tratamientos] ([Id_Tratamiento], [Id_Paciente], [Tipo_Tratamiento], [Fecha_Tratamiento]) VALUES (6, 4, N'Vacunacion', CAST(N'2021-02-02' AS Date))
INSERT [dbo].[Tratamientos] ([Id_Tratamiento], [Id_Paciente], [Tipo_Tratamiento], [Fecha_Tratamiento]) VALUES (7, 5, N'Desparacitacion', CAST(N'2020-06-02' AS Date))
INSERT [dbo].[Tratamientos] ([Id_Tratamiento], [Id_Paciente], [Tipo_Tratamiento], [Fecha_Tratamiento]) VALUES (8, 6, N'Chequeo General', CAST(N'2021-01-01' AS Date))
INSERT [dbo].[Tratamientos] ([Id_Tratamiento], [Id_Paciente], [Tipo_Tratamiento], [Fecha_Tratamiento]) VALUES (9, 2, N'Vacunacion', CAST(N'2022-02-02' AS Date))
SET IDENTITY_INSERT [dbo].[Tratamientos] OFF
GO
ALTER TABLE [dbo].[Tratamientos]  WITH CHECK ADD  CONSTRAINT [FK_Tratamientos_Pacientes] FOREIGN KEY([Id_Paciente])
REFERENCES [dbo].[Pacientes] ([Id_Paciente])
GO
ALTER TABLE [dbo].[Tratamientos] CHECK CONSTRAINT [FK_Tratamientos_Pacientes]
GO
USE [master]
GO
ALTER DATABASE [VETERINARIA_DB] SET  READ_WRITE 
GO
