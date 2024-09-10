Arte_2024-2 = 
VAR DiasSemana = {"LUNES", "MARTES", "MIERCOLES", "JUEVES", "VIERNES", "SABADO", "DOMINGO"}
VAR TablaConCodigoDia =
    ADDCOLUMNS(
        FILTER(
            ARTE,
            ARTE[Día] IN DiasSemana
        ),
        "CodigoDia", 
        SWITCH(
            ARTE[Día],
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
        ARTE[Ciclo],
        ARTE[CodigoCurso],
        ARTE[Curso],
        ARTE[Sección],
        ARTE[Docente],
        ARTE[Día],
        ARTE[HoraInicio],
        ARTE[HoraFin],
        ARTE[Aula],
        [CodigoDia]
    )