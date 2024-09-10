Lengua_2024-2 = 
VAR DiasSemana = {"LUNES", "MARTES", "MIERCOLES", "JUEVES", "VIERNES", "SABADO", "DOMINGO"}
VAR TablaConCodigoDia =
    ADDCOLUMNS(
        FILTER(
            LENGUA,
            LENGUA[Día] IN DiasSemana
        ),
        "CodigoDia", 
        SWITCH(
            LENGUA[Día],
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
        LENGUA[Ciclo],
        LENGUA[CodigoCurso],
        LENGUA[Curso],
        LENGUA[Sección],
        LENGUA[Docente],
        LENGUA[Día],
        LENGUA[HoraInicio],
        LENGUA[HoraFin],
        LENGUA[Aula],
        [CodigoDia]
    )