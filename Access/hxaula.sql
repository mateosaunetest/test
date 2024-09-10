SELECT Format(CDate(QUERY_HGENERAL.HoraInicio),"HH:MM") AS FormattedHoraInicio, Format(CDate(QUERY_HGENERAL.HoraFin),"HH:MM") AS FormattedHoraFin, Format(CDate(QUERY_HGENERAL.HoraInicio),"HH:MM") & " - " & Format(CDate(QUERY_HGENERAL.HoraFin),"HH:MM") AS Rango_Horario, QUERY_HGENERAL.Escuela, QUERY_HGENERAL.Seccion, QUERY_HGENERAL.Docente, QUERY_HGENERAL.Curso, QUERY_HGENERAL.Dia, QUERY_HGENERAL.Aula, QUERY_HGENERAL.Ciclo, Switch(QUERY_HGENERAL.Dia="Lunes",1,QUERY_HGENERAL.Dia="Martes",2,QUERY_HGENERAL.Dia="Miercoles",3,QUERY_HGENERAL.Dia="Jueves",4,QUERY_HGENERAL.Dia="Viernes",5,QUERY_HGENERAL.Dia="Sabado",6,QUERY_HGENERAL.Dia="Domingo",7) AS DiaOrden
FROM QUERY_HGENERAL
WHERE QUERY_HGENERAL.Aula = [Ingrese el Nombre del Aula para la consulta]
ORDER BY QUERY_HGENERAL.Seccion;
