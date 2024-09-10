Linguistica_2024-2 = 
VAR DiasSemana = {"LUNES", "MARTES", "MIERCOLES", "JUEVES", "VIERNES", "SABADO", "DOMINGO"}
VAR TablaConCodigoDia =
    ADDCOLUMNS(
        FILTER(
            LINGUISTICA,
            LINGUISTICA[Día] IN DiasSemana
        ),
        "CodigoDia", 
        SWITCH(
            LINGUISTICA[Día],
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
        LINGUISTICA[Ciclo],
        LINGUISTICA[CodigoCurso],
        LINGUISTICA[Curso],
        LINGUISTICA[Sección],
        LINGUISTICA[Docente],
        LINGUISTICA[Día],
        LINGUISTICA[HoraInicio],
        LINGUISTICA[HoraFin],
        LINGUISTICA[Aula],
        [CodigoDia]
    )