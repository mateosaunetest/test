Danza_2024-2 = 
VAR DiasSemana = {"LUNES", "MARTES", "MIERCOLES", "JUEVES", "VIERNES", "SABADO", "DOMINGO"}
VAR TablaConCodigoDia =
    ADDCOLUMNS(
        FILTER(
            DANZA,
            DANZA[Día] IN DiasSemana
        ),
        "CodigoDia", 
        SWITCH(
            DANZA[Día],
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
        DANZA[Ciclo],
        DANZA[CodigoCurso],
        DANZA[Curso],
        DANZA[Sección],
        DANZA[Docente],
        DANZA[Día],
        DANZA[HoraInicio],
        DANZA[HoraFin],
        DANZA[Aula],
        [CodigoDia]
    )