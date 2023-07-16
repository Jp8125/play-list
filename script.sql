USE [master]
GO
/****** Object:  Database [PlayListDemo]    Script Date: 15-07-2023 18:37:12 ******/
CREATE DATABASE [PlayListDemo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PlayListDemo', FILENAME = N'E:\sql\MSSQL16.MSSQLSERVER\MSSQL\DATA\PlayListDemo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PlayListDemo_log', FILENAME = N'E:\sql\MSSQL16.MSSQLSERVER\MSSQL\DATA\PlayListDemo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PlayListDemo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PlayListDemo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PlayListDemo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PlayListDemo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PlayListDemo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PlayListDemo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PlayListDemo] SET ARITHABORT OFF 
GO
ALTER DATABASE [PlayListDemo] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PlayListDemo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PlayListDemo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PlayListDemo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PlayListDemo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PlayListDemo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PlayListDemo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PlayListDemo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PlayListDemo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PlayListDemo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PlayListDemo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PlayListDemo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PlayListDemo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PlayListDemo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PlayListDemo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PlayListDemo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PlayListDemo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PlayListDemo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PlayListDemo] SET  MULTI_USER 
GO
ALTER DATABASE [PlayListDemo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PlayListDemo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PlayListDemo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PlayListDemo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PlayListDemo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PlayListDemo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PlayListDemo] SET QUERY_STORE = OFF
GO
USE [PlayListDemo]
GO
/****** Object:  Table [dbo].[Playlists]    Script Date: 15-07-2023 18:37:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Playlists](
	[ListId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ListId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VideoAndList]    Script Date: 15-07-2023 18:37:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VideoAndList](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VideoId] [int] NULL,
	[ListId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Videos]    Script Date: 15-07-2023 18:37:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Videos](
	[Vid] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](200) NULL,
	[src] [varchar](max) NULL,
	[thumbnailsrc] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Vid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Playlists] ON 

INSERT [dbo].[Playlists] ([ListId], [Name]) VALUES (2, N'Rest Api')
INSERT [dbo].[Playlists] ([ListId], [Name]) VALUES (3, N'Angular testing')
SET IDENTITY_INSERT [dbo].[Playlists] OFF
GO
SET IDENTITY_INSERT [dbo].[VideoAndList] ON 

INSERT [dbo].[VideoAndList] ([Id], [VideoId], [ListId]) VALUES (1, 1, 2)
INSERT [dbo].[VideoAndList] ([Id], [VideoId], [ListId]) VALUES (2, 2, 2)
INSERT [dbo].[VideoAndList] ([Id], [VideoId], [ListId]) VALUES (3, 3, 2)
INSERT [dbo].[VideoAndList] ([Id], [VideoId], [ListId]) VALUES (4, 4, 3)
INSERT [dbo].[VideoAndList] ([Id], [VideoId], [ListId]) VALUES (5, 5, 3)
INSERT [dbo].[VideoAndList] ([Id], [VideoId], [ListId]) VALUES (6, 6, 3)
SET IDENTITY_INSERT [dbo].[VideoAndList] OFF
GO
SET IDENTITY_INSERT [dbo].[Videos] ON 

INSERT [dbo].[Videos] ([Vid], [Title], [src], [thumbnailsrc]) VALUES (1, N'Rest Api 1', N'https://extra-task-playlist.s3.ap-south-1.amazonaws.com/Videos/15-07-2023 15:59:02learn restful api in asp.net core full course for beginners[tutorial] in hindi _ day-1 - copy.mp4', N'https://media.geeksforgeeks.org/wp-content/cdn-uploads/20230630120346/What-is-REST-API.png')
INSERT [dbo].[Videos] ([Vid], [Title], [src], [thumbnailsrc]) VALUES (2, N'Rest API 2', N'https://extra-task-playlist.s3.ap-south-1.amazonaws.com/Videos/15-07-2023+15%3A59%3A02learn+restful+api+in+asp.net+core+full+course+for+beginners%5Btutorial%5D+in+hindi+_+day-1+-+copy.mp4', N'https://media.geeksforgeeks.org/wp-content/cdn-uploads/20230630120346/What-is-REST-API.png')
INSERT [dbo].[Videos] ([Vid], [Title], [src], [thumbnailsrc]) VALUES (3, N'Rest API 3', N'https://extra-task-playlist.s3.ap-south-1.amazonaws.com/Videos/learn+restful+api+in+asp.net+core+full+course+for+beginners%5Btutorial%5D+in+hindi+_+day-1.mp4', N'https://media.geeksforgeeks.org/wp-content/cdn-uploads/20230630120346/What-is-REST-API.png')
INSERT [dbo].[Videos] ([Vid], [Title], [src], [thumbnailsrc]) VALUES (4, N'Angular Testing', N'https://extra-task-playlist.s3.ap-south-1.amazonaws.com/Videos/Part+1+++Introduction+of+Jasmine+%26+Karma++Angular+unit+test+case+Tutorials+with+Jasmine+%26+Karma.mp4', N'https://w7.pngwing.com/pngs/869/829/png-transparent-angularjs-protractor-software-testing-web-development-others-thumbnail.png')
INSERT [dbo].[Videos] ([Vid], [Title], [src], [thumbnailsrc]) VALUES (5, N'Angular Testing 1', N'https://extra-task-playlist.s3.ap-south-1.amazonaws.com/Videos/Part+2++How+Angular+Unit+test+case+Flow++Angular+unit+test+case+Tutorials+with+Jasmine+%26+Karma.mp4', N'https://w7.pngwing.com/pngs/869/829/png-transparent-angularjs-protractor-software-testing-web-development-others-thumbnail.png')
INSERT [dbo].[Videos] ([Vid], [Title], [src], [thumbnailsrc]) VALUES (6, N'Angular Testing 2', N'https://extra-task-playlist.s3.ap-south-1.amazonaws.com/Videos/Part+5-+First+Angular+Unit+test+case++Angular+unit+test+case+Tutorials+with+Jasmine+%26+Karma.mp4', N'https://w7.pngwing.com/pngs/869/829/png-transparent-angularjs-protractor-software-testing-web-development-others-thumbnail.png')
SET IDENTITY_INSERT [dbo].[Videos] OFF
GO
ALTER TABLE [dbo].[VideoAndList]  WITH CHECK ADD FOREIGN KEY([ListId])
REFERENCES [dbo].[Playlists] ([ListId])
GO
ALTER TABLE [dbo].[VideoAndList]  WITH CHECK ADD FOREIGN KEY([VideoId])
REFERENCES [dbo].[Videos] ([Vid])
GO
/****** Object:  StoredProcedure [dbo].[_sp_getList]    Script Date: 15-07-2023 18:37:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[_sp_getList]
AS
select v.Title,v.thumbnailsrc,v.src,v.Vid,list.ListId,list.[Name] from Videos as v join (select vl.VideoId,vl.ListId,p.[Name] from 
VideoAndList as vl join Playlists as p on vl.ListId=p.ListId) as list  on v.Vid=list.VideoId
GO
USE [master]
GO
ALTER DATABASE [PlayListDemo] SET  READ_WRITE 
GO
