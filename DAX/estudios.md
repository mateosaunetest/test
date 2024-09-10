EVALUATE
VAR DiasSemana = {"LUNES", "MARTES", "MIERCOLES", "JUEVES", "VIERNES", "SABADO", "DOMINGO"}
RETURN
    VAR TablaConCodigoDia = 
        ADDCOLUMNS(
            FILTER(
                ESTUDIOS,
                ESTUDIOS[Dia] IN DiasSemana
            ),
            "CodigoDia", 
            SWITCH(
                ESTUDIOS[Dia],
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
        "Ciclo", ESTUDIOS[Ciclo],
        "CodigoCurso", ESTUDIOS[CodigoCurso],
        "Curso", ESTUDIOS[Curso],
        "Seccion", ESTUDIOS[Seccion],
        "Docente", ESTUDIOS[Docente],
        "Dia", ESTUDIOS[Dia],
        "HoraInicio", ESTUDIOS[HoraInicio],
        "HoraFin", ESTUDIOS[HoraFin],
        "Aula", ESTUDIOS[Aula],
        "CodigoDia", [CodigoDia]
    )
ORDER BY
	[CodigoDia],                        -- Ordena primero por el código del día
    [Curso],     
	[Seccion],                          -- Luego por sección dentro de cada curso                       -- Luego por curso
	FORMAT([HoraInicio], "HH:mm"),      -- Ordena por la hora de inicio en formato corto
    FORMAT([HoraFin], "HH:mm"),         -- Ordena por la hora de fin en formato corto
    [Docente]                           -- Finalmente por el docente
