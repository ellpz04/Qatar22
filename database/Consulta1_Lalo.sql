SELECT  P.Id, Pa.Grupo, P.Local, Q.ML, Q.MV, P.Visitante
FROM
    partidos P,  paises Pa, quiniela Q
WHERE
    P.Local = Pa.nombre and 
    P.Id=Q.Id_partido and
    Q.Id_participante=374
ORDER BY 2 , 1;



SELECT  PU.Id,PA.Id_partido, PA.Id_participante, PU.ML,PA.ML,PU.MV,PA.MV
FROM    partidos AS PU
INNER JOIN quiniela AS PA ON PU.Id = PA.Id_partido
WHERE  PU.Estatus = 1 
ORDER BY PA.Id_participante;



--Real;

use `Qatar22_St-313930a60f`;

-- para grafica

SELECT PA.Alias,PU.Id_partido,PU.Total FROM puntos PU,participantes PA, folder F where PU.Id_participante = PA.Id_participante and PU.Id_participante = F.Id_participante and F.folder=2  order by PU.Id_partido;

SELECT  P.Id, Pa.Grupo, P.Local, P.ML, P.MV, P.Visitante
FROM
    partidos P,  paises Pa
WHERE
    P.Local = Pa.nombre
ORDER BY 2 , 1;



use `Qatar22_St-313930a60f`;

SELECT P.Id_participante,P.Puntos FROM participantes P, folder F where P.Id_participante = F.Id_participante and F.folder=2 ORDER BY P.Puntos DESC,P.Nivel DESC;


UPDATE `Qatar22_St-313930a60f`.`partidos` SET `Descripcion` = '-P-' WHERE (`Id` > '0');

SELECT concat_ws(Descripcion, Id,  Id) FROM `Qatar22_St-313930a60f`.partidos;


INSERT INTO `campeon` (`Id`, `Id_participante`, `Id_partido`, `Clave`, `Descripcion`, `Equipo`, `Estatus`) VALUES (NULL, '254', '65', 'SCH', 'Subcampeón', '', '0');

INSERT INTO `campeon` (`Id`, `Id_participante`, `Id_partido`, `Clave`, `Descripcion`, `Equipo`, `Estatus`) VALUES (NULL, '254', '66', 'CHA', 'Campeón', '', '0');


update `Qatar22_St-313930a60f`.quiniela
set Estatus=2
where Id_partido = 63;

update `Qatar22_St-313930a60f`.quiniela
set Estatus=8
where Id_partido = 63 and  Id_participante in (
514,
524,
534,
544);

SELECT * FROM `Qatar22_St-313930a60f`.puntos where Id_partido=59 and
Id_participante in (
514,
524,
534,
544);


SELECT PU.Id_participante,PA.Nombre,PU.Descripcion,PU.Equipo FROM `Qatar22_St-313930a60f`.campeon AS PU
INNER JOIN `Qatar22_St-313930a60f`.participantes AS PA ON PU.Id_participante = PA.Id_participante
WHERE  PU.Id_partido = 66
ORDER BY PU.Equipo;


delete FROM `Qatar22_St-313930a60f`.puntos where Id>0 and Id_partido=63;

delete FROM `Qatar22_St-313930a60f`.quiniela
where Id>0 and Id_partido=63;

delete FROM `Qatar22_St-313930a60f`.quiniela
where Id>16225 and Id_partido=60 and estatus=4;


-----------------


SELECT * FROM `Qatar22_St-313930a60f`.quiniela;

SELECT * FROM `Qatar22_St-313930a60f`.quiniela
where Id_partido = 63;

SELECT * FROM `Qatar22_St-313930a60f`.quiniela
where Id_partido > 56 and  Id_participante in (
514,
524,
534,
544);

update `Qatar22_St-313930a60f`.quiniela
set Estatus=8
where Id_partido = 60 and  Id_participante in (
514,
524,
534,
544);



SELECT * FROM `Qatar22_St-313930a60f`.quiniela where Id_participante=374 and Id_partido=63 order by 1;

SELECT count(*) FROM `Qatar22_St-313930a60f`.quiniela where Id_partido=64 and  Id_participante=234;

---------------------

SELECT * FROM `Qatar22_St-313930a60f`.puntos;

SELECT * FROM `Qatar22_St-313930a60f`.puntos where Id_partido=60 and  Id_participante=374;

SELECT count(*) FROM `Qatar22_St-313930a60f`.puntos where Id_partido=59 and  Id_participante=374;


SELECT * FROM `Qatar22_St-313930a60f`.puntos where Id_partido=60 and Local is null order by 1;

SELECT * FROM `Qatar22_St-313930a60f`.puntos where Id>15730 and Id_partido=58 order by 1,2;

SELECT * FROM `Qatar22_St-313930a60f`.puntos where Id>15735 and Id_partido=60 order by 1;


SELECT * FROM `Qatar22_St-313930a60f`.puntos where Id_partido=66 order by 1;

delete FROM `Qatar22_St-313930a60f`.puntos where Id>15700 and Id_partido=60 and Local is null;


SELECT count(*) FROM `Qatar22_St-313930a60f`.puntos where Id_partido=63 and  Id_participante=374;

SELECT * FROM `Qatar22_St-313930a60f`.puntos where Id_partido=66 order by 1;

SELECT * FROM `Qatar22_St-313930a60f`.puntos where  Id_partido=67 order by 1;

delete FROM `Qatar22_St-313930a60f`.puntos where Id>15733 and Id_partido=67;

------------

SELECT * FROM `Qatar22_St-313930a60f`.participantes;

SELECT * FROM `Qatar22_St-313930a60f`.participantes
where Id_participante in (
514,
524,
534,
544);
--------

SELECT * FROM `Qatar22_St-313930a60f`.campeon;

SELECT * FROM `Qatar22_St-313930a60f`.campeon
where Id_participante=494 and Id_partido>60;



SELECT Q.Id, concat_ws(P.Descripcion, P.Id,  P.Id)  Id_P ,R.Alias,L.clave ClaveL,P.Local,Q.ML,Q.MV,P.Visitante,V.Clave ClaveV       
FROM partidos as P, paises as L, paises as V, quiniela as Q, participantes R, folder F        
WHERE P.Visitante = V.nombre and P.Local = L.nombre and P.Id = Q.Id_partido and Q.Id_participante=R.Id_participante and Q.Id_participante=F.Id_participante and F.folder = 2
union all
SELECT Q.Id,concat_ws(P.Descripcion, P.Id,  P.Id)  Id_P ,R.Alias,Q.clave ClaveL,P.Local,null,null,Q.equipo,V.Clave ClaveV FROM partidos as P, paises as V, campeon as Q, participantes R, folder F  WHERE P.Id > 48 and Q.equipo = V.nombre and P.Id = Q.Id_partido 
and Q.Id_participante=R.Id_participante and Q.Id_participante=F.Id_participante and F.folder = 2 
order by 1,2;

SELECT Q.Id, concat_ws(P.Descripcion, P.Id,  P.Id)  Id_P ,R.Alias,L.clave ClaveL,P.Local,Q.ML,Q.MV,P.Visitante,V.Clave ClaveV       
FROM partidos as P, paises as L, paises as V, quiniela as Q, participantes R, folder F        
WHERE P.Visitante = V.nombre and P.Local = L.nombre and P.Id = Q.Id_partido and Q.Id_participante=R.Id_participante and Q.Id_participante=F.Id_participante and Id_partido=62

Sub Arg 6;

SELECT * FROM `Qatar22_St-313930a60f`.puntos where Id_partido=65 
and  Id_participante in ('384','414','364','354','334');


camp  fra 10;

SELECT * FROM `Qatar22_St-313930a60f`.puntos where Id_partido=66 
and  Id_participante in ('484','474','234','364','334','304','274','254')



Sub fra 6;

SELECT * FROM `Qatar22_St-313930a60f`.puntos where Id_partido=65 
and  Id_participante in ('244','554','394','324','424','314');

camp  arg 10;

SELECT * FROM `Qatar22_St-313930a60f`.puntos where Id_partido=66 
and  Id_participante in ('344','394','264','294','284');


desarrollo;

use qatar22;

2 puntos
;

update puntos
set Total=2
where Id_partido=67
and  Id_participante in ('344', '394', '264', '294', '284', '484', '474', '234', '364', '334', '304', '274', '254' );


SELECT * FROM puntos where Id_partido=67
and  Id_participante in ('344', '394', '264', '294', '284', '484', '474', '234', '364', '334', '304', '274', '254' ) order by 2 ;

update puntos
set Total=Total+2
where Id_partido=67
and  Id_participante in ('384', '414', '364', '354', '334', '244', '554', '394', '324', '424', '314' );


SELECT * FROM puntos where Id_partido=67
and  Id_participante in ('384', '414', '364', '354', '334', '244', '554', '394', '324', '424', '314' );


Sub Arg 6;

SELECT * FROM puntos where Id_partido=65 
and  Id_participante in ('384','414','364','354','334');

update puntos
set Total=6
where Id_partido=65 
and  Id_participante in ('384','414','364','354','334');

camp  fra 10;

SELECT * FROM puntos where Id_partido=66 
and  Id_participante in ('484','474','234','364','334','304','274','254');

update puntos
set Total=10
 where Id_partido=66 
and  Id_participante in ('484','474','234','364','334','304','274','254');

Sub fra 6;

SELECT * FROM puntos where Id_partido=65 
and  Id_participante in ('244','554','394','324','424','314');

update puntos
set Total=6
where Id_partido=65 
and  Id_participante in ('244','554','394','324','424','314');

camp  arg 10;

SELECT * FROM puntos where Id_partido=66 
and  Id_participante in ('344','394','264','294','284');

update puntos
set Total=10
where Id_partido=66 
and  Id_participante in ('344','394','264','294','284');


SELECT * FROM puntos where  Id_partido=65 order by 1;

delete FROM puntos where Id>15980 and Id_partido=65;