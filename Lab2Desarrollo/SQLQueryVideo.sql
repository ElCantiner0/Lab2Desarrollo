create table video
(
idVideo int primary key not null,
titulo varchar(100),
repro int,
url varchar (100)
)

create procedure sp_video_insert
@idVideo int,
@titulo varchar (100),
@repro int,
@url varchar(100)
as 
begin
insert into video values (@idVideo, @titulo, @repro, @url)
end