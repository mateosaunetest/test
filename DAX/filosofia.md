EVALUATE
VAR DiasSemana = {"LUNES", "MARTES", "MIERCOLES", "JUEVES", "VIERNES", "SABADO", "DOMINGO"}
RETURN
    VAR TablaConCodigoDia = 
        ADDCOLUMNS(
            FILTER(
                FILOSOFIA,
                FILOSOFIA[Dia] IN DiasSemana
            ),
            "CodigoDia", 
            SWITCH(
                FILOSOFIA[Dia],
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
        "Ciclo", FILOSOFIA[Ciclo],
        "CodigoCurso", FILOSOFIA[CodigoCurso],
        "Curso", FILOSOFIA[Curso],
        "Seccion", FILOSOFIA[Seccion],
        "Docente", FILOSOFIA[Docente],
        "Dia", FILOSOFIA[Dia],
        "HoraInicio", FILOSOFIA[HoraInicio],
        "HoraFin", FILOSOFIA[HoraFin],
        "Aula", FILOSOFIA[Aula],
        "CodigoDia", [CodigoDia]
    )
ORDER BY
    [CodigoDia],                        -- Ordena por el código del día
    FORMAT([HoraInicio], "HH:mm"),      -- Ordena por la hora de inicio en formato corto
    FORMAT([HoraFin], "HH:mm"),		    -- Ordena por la hora de fin en formato corto
	[Curso],                            -- Finalmente por el curso
	[Docente],                          -- Luego por el docente
	[Seccion]							-- Luego por sección