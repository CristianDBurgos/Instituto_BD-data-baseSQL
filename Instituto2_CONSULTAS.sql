SELECT * FROM instituto2.Alumnos;
SELECT * FROM instituto2.Docentes;
SELECT * FROM instituto2.Cursos;

#Listado de alumnos del curso Programación
SELECT A.idAlumno, A.alumnoNombre, A.alumnoApellido
FROM instituto2.Alumnos A
INNER JOIN Alumno_Curso AC ON A.idAlumno = AC.idAlumno
WHERE AC.idCurso = 1;

#Cantidad de cursos del alumno Id 13
SELECT A.alumnoNombre, A.alumnoApellido, COUNT(*) AS cantidad_cursos
FROM instituto2.Alumno_Curso AC
INNER JOIN Alumnos A ON A.idAlumno = AC.idAlumno
WHERE AC.idAlumno = 13;

#Cursos del alumno con Id 15
SELECT C.idCurso, C.cursoNombre, A.alumnoApellido
FROM instituto2.Cursos C
INNER JOIN Alumno_Curso AC ON C.idCurso = AC.idCurso
INNER JOIN Alumnos A ON AC.idAlumno = A.idAlumno
WHERE AC.idAlumno = 15;

#Curso del docente con DNI 95959595
SELECT C.idCurso, C.cursoNombre, D.docenteApellido
FROM instituto2.Cursos C
INNER JOIN Docente_Curso DC ON C.idCurso = DC.idCurso
INNER JOIN Docentes D ON DC.idDocente = D.idDocente
WHERE D.docenteDNI = '95959595';

#Datos de un alumno filtrado por DNI
SELECT A.alumnoNombre, A.alumnoApellido, A.alumnoFechaDeIngreso, C.cursoNombre
FROM instituto2.Alumnos A
INNER JOIN Alumno_Curso AC ON A.idAlumno = AC.idAlumno
INNER JOIN Cursos C ON AC.idCurso = C.idCurso
WHERE A.alumnoDNI = '22222222';
