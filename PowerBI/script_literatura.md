Literatura_2024-2 = 
VAR DiasSemana = {"LUNES", "MARTES", "MIERCOLES", "JUEVES", "VIERNES", "SABADO", "DOMINGO"}
VAR TablaConCodigoDia =
    ADDCOLUMNS(
        FILTER(
            LITERATURA,
            LITERATURA[Día] IN DiasSemana
        ),
        "CodigoDia", 
        SWITCH(
            LITERATURA[Día],
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
        LITERATURA[Ciclo],
        LITERATURA[CodigoCurso],
        LITERATURA[Curso],
        LITERATURA[Sección],
        LITERATURA[Docente],
        LITERATURA[Día],
        LITERATURA[HoraInicio],
        LITERATURA[HoraFin],
        LITERATURA[Aula],
        [CodigoDia]
    )