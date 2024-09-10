SELECT [QUERY_HGENERAL].Docente AS Docente, [QUERY_HGENERAL].Curso AS Curso, [QUERY_HGENERAL].Seccion AS Seccion, [QUERY_HGENERAL].TipoClase AS TipoClase, [QUERY_HGENERAL].Dia AS Dia, Format(QUERY_HGENERAL.HoraInicio,"hh:nn") & "-" & Format(QUERY_HGENERAL.HoraFin,"hh:nn") AS Hora, [QUERY_HGENERAL].Aula AS Aula, [QUERY_HGENERAL].Escuela AS Escuela, [QUERY_HGENERAL].Modalidad AS Modalidad
FROM QUERY_HGENERAL
WHERE QUERY_HGENERAL.Dia=[Ingrese el Día de Consulta] And QUERY_HGENERAL.Escuela=[Ingrese la Escuela] And QUERY_HGENERAL.Modalidad In ("PRESENCIAL","SEMIPRESENCIAL");
