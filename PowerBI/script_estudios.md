Estudios_2024-2 = 
VAR DiasSemana = {"LUNES", "MARTES", "MIERCOLES", "JUEVES", "VIERNES", "SABADO", "DOMINGO"}
VAR TablaConCodigoDia =
    ADDCOLUMNS(
        FILTER(
            ESTUDIOS,
            ESTUDIOS[Día] IN DiasSemana
        ),
        "CodigoDia", 
        SWITCH(
            ESTUDIOS[Día],
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
        ESTUDIOS[Ciclo],
        ESTUDIOS[CodigoCurso],
        ESTUDIOS[Curso],
        ESTUDIOS[Sección],
        ESTUDIOS[Docente],
        ESTUDIOS[Día],
        ESTUDIOS[HoraInicio],
        ESTUDIOS[HoraFin],
        ESTUDIOS[Aula],
        [CodigoDia]
    )