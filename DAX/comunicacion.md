EVALUATE
VAR DiasSemana = {"LUNES", "MARTES", "MIERCOLES", "JUEVES", "VIERNES", "SABADO", "DOMINGO"}
RETURN
    VAR TablaConCodigoDia = 
        ADDCOLUMNS(
            FILTER(
                COMUNICACION,
                COMUNICACION[Dia] IN DiasSemana
            ),
            "CodigoDia", 
            SWITCH(
                COMUNICACION[Dia],
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
    SELECTCOLUMNS(
        TablaConCodigoDia,
        "Ciclo", COMUNICACION[Ciclo],
        "CodigoCurso", COMUNICACION[CodigoCurso],
        "Curso", COMUNICACION[Curso],
        "Seccion", COMUNICACION[Seccion],
        "Docente", COMUNICACION[Docente],
        "Dia", COMUNICACION[Dia],
        "HoraInicio", FORMAT(COMUNICACION[HoraInicio], "HH:mm"), -- Formato de hora corto
        "HoraFin", FORMAT(COMUNICACION[HoraFin], "HH:mm"),       -- Formato de hora corto
        "Aula", COMUNICACION[Aula],
        "CodigoDia", [CodigoDia]
    )
ORDER BY
    [CodigoDia],                        -- Ordena por el código del día
    [HoraInicio], 						-- Ordena por la hora de inicio en formato corto
    [HoraFin],   						-- Ordena por la hora de fin en formato corto
    [Curso],                            -- Luego por curso
    [Docente],                          -- Luego por docente
    [Seccion]                           -- Finalmente por sección