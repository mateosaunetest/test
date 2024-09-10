Biblio_2024-2 = 
VAR DiasSemana = {"LUNES", "MARTES", "MIERCOLES", "JUEVES", "VIERNES", "SABADO", "DOMINGO"}
VAR TablaConCodigoDia =
    ADDCOLUMNS(
        FILTER(
            BIBLIO,
            BIBLIO[Día] IN DiasSemana
        ),
        "CodigoDia", 
        SWITCH(
            BIBLIO[Día],
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
        BIBLIO[Ciclo],
        BIBLIO[CodigoCurso],
        BIBLIO[Curso],
        BIBLIO[Sección],
        BIBLIO[Docente],
        BIBLIO[Día],
        BIBLIO[HoraInicio],
        BIBLIO[HoraFin],
        BIBLIO[Aula],
        [CodigoDia]
    )