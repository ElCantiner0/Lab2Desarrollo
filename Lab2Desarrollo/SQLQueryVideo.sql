create table video
(
idVideo int primary key not null,
titulo varchar(100),
repro int,
url varchar (100)
)

/*create procedure sp_video_insert
@idVideo int,
@titulo varchar (100),
@repro int,
@url varchar(100)
as 
begin
insert into video values (@idVideo, @titulo, @repro, @url)
end*/


create procedure sp_agregar_video_auto_plus
@idVideo Int,
@titulo varchar(100),
@repro int,
@url varchar(100)
as
if exists (select*from video where idVideo=@idVideo)
begin 
print ('Ya existe este id ')
return
end
begin
insert into Video values (@idVideo, @titulo, @repro, @url)
print ('Registro completado')
end
--Agregar video--

				create procedure sp_delete_video
				@idVideo int
				as				 
				if exists (select*from video where idVideo=@idVideo)
				begin
				delete from video where idVideo=@idVideo
				print ('Registro eliminado')
				end
				begin
				print ('No existe registro a eliminar')
				end
				--Eliminar video--
				create procedure sp_update_video_auto
				@idVideo int,
				@titulo varchar(100),
				@repro int,
				@url varchar(100)
				as				
				if exists (select*from video where idVideo=@idVideo)
				begin
				update video set titulo=@titulo, repro=@repro, url=@url where idVideo=@idVideo
				print ('Registro actualizado')
				end
				begin
				print('No es posible actualizar registro')
				end				 


