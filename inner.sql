-- ubicaciones y cursos. Hay una ubicacion que no tiene asignada ningun curso, la 5
select u.ubicacion, c.idubicacion, c.curso from ubicaciones u 
left join cursos c on u.idubicacion = c.idUbicacion;

-- si le damos la vuelta y lo transformamos en un right join, quedaria asi;
select c.curso, c.horas, c.idUbicacion, u.ubicacion from cursos c 
right join ubicaciones u on u.idUbicacion = c.idUbicacion;

select u.ubicacion, c.idUbicacion, c.curo from ubicaciones u
inner join cursos c on u.idUbicacion = c.idUbicacion;






<?php require_once '.includes/conexion.php'; ?>