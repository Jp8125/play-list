--Create database PlayListDemo
Create Table Videos (
Vid int primary key identity(1,1),
Title varchar(200),
src varchar(max),
thumbnailsrc varchar(max)
)
create table Playlists(
ListId int primary key identity(1,1),
[Name] varchar(200),
)
Create Table VideoAndList(
Id int primary key identity(1,1),
VideoId int foreign key references Videos(Vid),
ListId int Foreign key references Playlists(ListId)
)

SELECT TOP (1000) [ListId]
      ,[Name]
  FROM [PlayListDemo].[dbo].[Playlists]

SELECT TOP (1000) [Vid]
      ,[Title]
      ,[src]
      ,[thumbnailsrc]
  FROM [PlayListDemo].[dbo].[Videos]
--Insert into VideoAndList(VideoId,ListId) values(1,2),(2,2),(3,2),(4,3),(5,3),(6,3)

GO
CREATE PROCEDURE _sp_getList
AS
select v.Title,v.thumbnailsrc,v.src,v.Vid,list.ListId,list.[Name] from Videos as v join (select vl.VideoId,vl.ListId,p.[Name] from 
VideoAndList as vl join Playlists as p on vl.ListId=p.ListId) as list  on v.Vid=list.VideoId
GO;
