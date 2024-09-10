EVALUATE
VAR DiasSemana = {"LUNES", "MARTES", "MIERCOLES", "JUEVES", "VIERNES", "SABADO", "DOMINGO"}
RETURN
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
    SELECTCOLUMNS(
        TablaConCodigoDia,
        "Ciclo", ARTE[Ciclo],
        "CodigoCurso", ARTE[CodigoCurso],
        "Curso", ARTE[Curso],
        "Seccion", ARTE[Sección],
        "Docente", ARTE[Docente],
        "Dia", ARTE[Día],
        "HoraInicio", ARTE[HoraInicio],
        "HoraFin", ARTE[HoraFin],
        "Aula", ARTE[Aula],
        "CodigoDia", [CodigoDia] -- Asegúrate de que CodigoDia esté disponible para el ordenamiento
    )
ORDER BY
    [CodigoDia],                        -- Ordena por el código del día
    FORMAT([HoraInicio], "HH:mm"),      -- Ordena por la hora de inicio en formato corto
    FORMAT([HoraFin], "HH:mm"),		    -- Ordena por la hora de fin en formato corto
	[Curso],                            -- Finalmente por el curso
	[Docente],                          -- Luego por el docente
	[Seccion]							-- Luego por sección