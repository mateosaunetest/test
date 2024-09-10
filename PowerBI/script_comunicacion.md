Comunicacion_2024-2 = 
VAR DiasSemana = {"LUNES", "MARTES", "MIERCOLES", "JUEVES", "VIERNES", "SABADO", "DOMINGO"}
VAR TablaConCodigoDia =
    ADDCOLUMNS(
        FILTER(
            COMUNICACION,
            COMUNICACION[Día] IN DiasSemana
        ),
        "CodigoDia", 
        SWITCH(
            COMUNICACION[Día],
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
        COMUNICACION[Ciclo],
        COMUNICACION[CodigoCurso],
        COMUNICACION[Curso],
        COMUNICACION[Sección],
        COMUNICACION[Docente],
        COMUNICACION[Día],
        COMUNICACION[HoraInicio],
        COMUNICACION[HoraFin],
        COMUNICACION[Aula],
        [CodigoDia]
    )