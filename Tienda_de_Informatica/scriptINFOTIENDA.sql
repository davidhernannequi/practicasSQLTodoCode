USE [master]
GO
/****** Object:  Database [INFOTIENDA]    Script Date: 21/9/2024 11:22:08 ******/
CREATE DATABASE [INFOTIENDA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'INFOTIENDA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\INFOTIENDA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'INFOTIENDA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\INFOTIENDA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [INFOTIENDA] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [INFOTIENDA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [INFOTIENDA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [INFOTIENDA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [INFOTIENDA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [INFOTIENDA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [INFOTIENDA] SET ARITHABORT OFF 
GO
ALTER DATABASE [INFOTIENDA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [INFOTIENDA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [INFOTIENDA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [INFOTIENDA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [INFOTIENDA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [INFOTIENDA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [INFOTIENDA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [INFOTIENDA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [INFOTIENDA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [INFOTIENDA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [INFOTIENDA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [INFOTIENDA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [INFOTIENDA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [INFOTIENDA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [INFOTIENDA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [INFOTIENDA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [INFOTIENDA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [INFOTIENDA] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [INFOTIENDA] SET  MULTI_USER 
GO
ALTER DATABASE [INFOTIENDA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [INFOTIENDA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [INFOTIENDA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [INFOTIENDA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [INFOTIENDA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [INFOTIENDA] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [INFOTIENDA] SET QUERY_STORE = OFF
GO
USE [INFOTIENDA]
GO
/****** Object:  Table [dbo].[Fabricantes]    Script Date: 21/9/2024 11:22:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fabricantes](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Direccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Fabircantes] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 21/9/2024 11:22:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Precio] [money] NOT NULL,
	[Codigo_Fabricante] [int] NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Fabricantes] ON 

INSERT [dbo].[Fabricantes] ([Codigo], [Nombre], [Direccion]) VALUES (1, N'Sony', N'San Martin 1298')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre], [Direccion]) VALUES (2, N'Logitech', N'Jujuy 987')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre], [Direccion]) VALUES (3, N'Samsung', N'Catamarca 123')
INSERT [dbo].[Fabricantes] ([Codigo], [Nombre], [Direccion]) VALUES (4, N'Generico', N'')
SET IDENTITY_INSERT [dbo].[Fabricantes] OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([Codigo], [Nombre], [Precio], [Codigo_Fabricante]) VALUES (1, N'Mouse Gamer RGB', 20000.0000, 1)
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Precio], [Codigo_Fabricante]) VALUES (2, N'Play Station 5', 540000.0000, 1)
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Precio], [Codigo_Fabricante]) VALUES (4, N'A04', 200000.0000, 3)
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Precio], [Codigo_Fabricante]) VALUES (5, N'Tecaldo Gamer RGB', 55000.0000, 2)
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Precio], [Codigo_Fabricante]) VALUES (6, N'S20 FE', 255000.0000, 3)
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Precio], [Codigo_Fabricante]) VALUES (7, N'Auriculares Bluethoot', 45000.0000, 1)
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Precio], [Codigo_Fabricante]) VALUES (8, N'Cargador Samsung', 15000.0000, 3)
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Precio], [Codigo_Fabricante]) VALUES (9, N'Monitor 24', 245000.0000, 3)
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Precio], [Codigo_Fabricante]) VALUES (10, N'WebCam', 23000.0000, 4)
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Fabricantes] FOREIGN KEY([Codigo_Fabricante])
REFERENCES [dbo].[Fabricantes] ([Codigo])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Fabricantes]
GO
USE [master]
GO
ALTER DATABASE [INFOTIENDA] SET  READ_WRITE 
GO
