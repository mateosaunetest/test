Filosofia_2024-2 = 
VAR DiasSemana = {"LUNES", "MARTES", "MIERCOLES", "JUEVES", "VIERNES", "SABADO", "DOMINGO"}
VAR TablaConCodigoDia =
    ADDCOLUMNS(
        FILTER(
            FILOSOFIA,
            FILOSOFIA[Día] IN DiasSemana
        ),
        "CodigoDia", 
        SWITCH(
            FILOSOFIA[Día],
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
        FILOSOFIA[Ciclo],
        FILOSOFIA[CodigoCurso],
        FILOSOFIA[Curso],
        FILOSOFIA[Sección],
        FILOSOFIA[Docente],
        FILOSOFIA[Día],
        FILOSOFIA[HoraInicio],
        FILOSOFIA[HoraFin],
        FILOSOFIA[Aula],
        [CodigoDia]
    )