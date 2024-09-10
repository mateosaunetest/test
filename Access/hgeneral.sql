SELECT Tabla, Escuela, Ciclo, CodigoCurso, Curso, Seccion, Docente, Modalidad, TipoClase, Dia, HoraInicio, HoraFin, Aula, Tope, Matriculados, Observacion
FROM (SELECT 'ARTE' AS Tabla, Escuela, Ciclo, CodigoCurso, Curso, Seccion, Docente, Modalidad, TipoClase, Dia, HoraInicio, HoraFin, Aula, Tope, Matriculados, Observacion FROM ARTE
     UNION ALL
     SELECT 'BIBLIO' AS Tabla, Escuela, Ciclo, CodigoCurso, Curso, Seccion, Docente, Modalidad, TipoClase, Dia, HoraInicio, HoraFin, Aula, Tope, Matriculados, Observacion FROM BIBLIO
     UNION ALL
     SELECT 'COMUNICACION' AS Tabla, Escuela, Ciclo, CodigoCurso, Curso, Seccion, Docente, Modalidad, TipoClase, Dia, HoraInicio, HoraFin, Aula, Tope, Matriculados, Observacion FROM COMUNICACION
     UNION ALL
     SELECT 'CONSERVACION' AS Tabla, Escuela, Ciclo, CodigoCurso, Curso, Seccion, Docente, Modalidad, TipoClase, Dia, HoraInicio, HoraFin, Aula, Tope, Matriculados, Observacion FROM CONSERVACION
     UNION ALL
     SELECT 'DANZA' AS Tabla, Escuela, Ciclo, CodigoCurso, Curso, Seccion, Docente, Modalidad, TipoClase, Dia, HoraInicio, HoraFin, Aula, Tope, Matriculados, Observacion FROM DANZA
     UNION ALL
     SELECT 'ESTUDIOS' AS Tabla, Escuela, Ciclo, CodigoCurso, Curso, Seccion, Docente, Modalidad, TipoClase, Dia, HoraInicio, HoraFin, Aula, Tope, Matriculados, Observacion FROM ESTUDIOS
     UNION ALL
     SELECT 'FILOSOFIA' AS Tabla, Escuela, Ciclo, CodigoCurso, Curso, Seccion, Docente, Modalidad, TipoClase, Dia, HoraInicio, HoraFin, Aula, Tope, Matriculados, Observacion FROM FILOSOFIA
     UNION ALL
     SELECT 'LENGUA' AS Tabla, Escuela, Ciclo, CodigoCurso, Curso, Seccion, Docente, Modalidad, TipoClase, Dia, HoraInicio, HoraFin, Aula, Tope, Matriculados, Observacion FROM LENGUA
     UNION ALL
     SELECT 'LINGUISTICA' AS Tabla, Escuela, Ciclo, CodigoCurso, Curso, Seccion, Docente, Modalidad, TipoClase, Dia, HoraInicio, HoraFin, Aula, Tope, Matriculados, Observacion FROM LINGUISTICA
     UNION ALL
     SELECT 'LITERATURA' AS Tabla, Escuela, Ciclo, CodigoCurso, Curso, Seccion, Docente, Modalidad, TipoClase, Dia, HoraInicio, HoraFin, Aula, Tope, Matriculados, Observacion FROM LITERATURA
    )  AS Horario
WHERE Escuela IS NOT NULL;
