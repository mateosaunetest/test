Conservacion_2024-2 = 
VAR DiasSemana = {"LUNES", "MARTES", "MIERCOLES", "JUEVES", "VIERNES", "SABADO", "DOMINGO"}
VAR TablaConCodigoDia =
    ADDCOLUMNS(
        FILTER(
            CONSERVACION,
            CONSERVACION[Día] IN DiasSemana
        ),
        "CodigoDia", 
        SWITCH(
            CONSERVACION[Día],
            "LUNES", 1,
            "MARTES", 2,
            "MIERCOLES", 3,
            "JUEVES", 4,
            "VIERNES", 5,
            "SABADO", 6,
            "DOMINGO", 7,
            999 -- Valor por defecto si no coincide
        )
    )
RETURN
    SUMMARIZE(
        TablaConCodigoDia,
        CONSERVACION[Ciclo],
        CONSERVACION[CodigoCurso],
        CONSERVACION[Curso],
        CONSERVACION[Sección],
        CONSERVACION[Docente],
        CONSERVACION[Día],
        CONSERVACION[HoraInicio],
        CONSERVACION[HoraFin],
        CONSERVACION[Aula],
        [CodigoDia]
    )