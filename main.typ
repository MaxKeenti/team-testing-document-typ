#import "@preview/subpar:0.2.2": *
#import "portada-template.typ": portada

#let integrantes = (
  "León Merino Ángel Mauricio",
  "Albarrán Soto Alexis Kevin",
  "Camacho Colín Camila Danaé",
  "Gonzalez Calzada Maximiliano",
  "Ramírez Lescas Eliu",
  "Ferrusca Pineda Mildred Arely",
  "Sosa Montoya Melanie Rubí",
)

#portada(
  "UNIDAD DE APRENDIZAJE",
  "PRÁCTICA",
  "FECHA",
  "SECUENCIA Y PERIODO",
  "INTEGRANTES",
  "PROFESOR",
  "FECHA DE ENTREGA",
  "Ingeniería de Pruebas",
  "Tarea 02",
  "13 de Febrero de 2026",
  "6NM61 2026-2",
  integrantes,
  "González Arroyo Lilia",
  "13 de Febrero de 2026",
)

#set text(
  font: "ITC Avant Garde Gothic",
  lang: "es",
  weight: "semibold",
)

#set page(
  paper: "us-letter",
  margin: (left: 3cm, top: 2.5cm, right: 2.5cm, bottom: 2.5cm),
  numbering: "1",
)

#pagebreak()
#set par(justify: true, leading: 1.4em)
#set heading(numbering: "1.")
#set list(indent: 1.5em)

= Tablas Comparativas de Pruebas de Software

A continuación se presentan las tablas comparativas basadas en la investigación de videos sobre niveles y tipos de pruebas de software.

== Tabla 1: Niveles de Prueba y Especificaciones Técnicas

#pagebreak()

#figure({
  set text(size: 9pt)
  table(
    columns: (auto, 1fr, 1fr, 1fr),
    inset: 8pt,
    align: (x, y) => if y == 0 { center + horizon } else { left + top },
    fill: (x, y) => if y == 0 { gray.lighten(60%) } else { none },

    [*Nivel de Prueba*], [*Objetivo / Definición*], [*Especificación Técnica y Herramientas*], [*Roles / Responsables*],

    [*Unidad* \ (Unit Testing)],
    [Evaluar módulos o componentes individuales de forma aislada para asegurar su corrección lógica interna.],
    [
      - *Caja Blanca:* Se basa en la estructura interna.
      - *Atomicidad:* Verificar un solo punto por caso.
      - *Herramientas:* Junit, NUnit, bibliotecas de aserción.
    ],
    [*Automation Developer / Desarrolladores:* Crean scripts técnicos (Java, .NET, JS) para validar el código.],

    [*Integración* \ (Integration)],
    [Verificar la interacción y las interfaces entre componentes o sistemas ya probados unitariamente.],
    [
      - *Interfaces y Flujos:* Comunicación entre módulos.
      - *Stubs/Drivers:* Para simular partes no disponibles.
    ],
    [*Technical Tester / Desarrollador:* Requiere conocimiento de arquitectura para entender el flujo de datos.],

    [*Sistema* \ (System Testing)],
    [Validar el comportamiento global del sistema integrado completo contra los requisitos especificados.],
    [
      - *Funcional y No Funcional.*
      - *ISO 25010:* Usabilidad, Seguridad, Rendimiento.
      - *Stress Tools:* Para medir concurrencia y volumen.
    ],
    [*Execution Tester / Technical Tester:* Identificación de cuellos de botella y ejecución metodológica.],

    [*Aceptación* \ (Acceptance)],
    [Validar si el sistema satisface las necesidades del usuario y está listo para despliegue (Alpha/Beta).],
    [
      - *Validación vs Verificación:* ¿Es el producto correcto?
      - *Prioridad:* Casos de prioridad Alta/Media suelen derivar aquí.
    ],
    [*Cliente / Usuario Final / Functional Analyst:* Simulación de uso real con conocimiento de negocio.],
  )
})

#pagebreak()

== Tabla 2: Técnicas de Prueba: Características y Aplicación

#figure({
  set text(size: 9pt)
  table(
    columns: (auto, auto, 1fr, 1fr, 1fr),
    inset: 8pt,
    align: (x, y) => if y == 0 { center + horizon } else { left + top },
    fill: (x, y) => if y == 0 { gray.lighten(60%) } else { none },

    [*Nivel*], [*Técnica*], [*Características*], [*Aplicación*], [*Ejemplos*],

    [Unidad / General],
    [Caja Blanca],
    [Basada en código fuente, bucles, caminos lógicos.],
    [Desarrollo temprano para lógica base.],
    [Verificar que un bucle `for` termina o una función retorna el valor exacto.],

    [Sistema],
    [Funcional \ (Caja Negra)],
    [Evalúa *qué* hace el sistema sin mirar código.],
    [Manual o Automatizado (si >12 ejecuciones).],
    [Verificar que al hacer clic en "Guardar", el registro aparezca.],

    [Sistema],
    [No Funcional \ (ISO 25010)],
    [Evalúa *cómo* se comporta: Rendimiento, Seguridad, etc.],
    [Crítico en alta demanda. Requiere herramientas de Stress.],
    [Simular 1000 usuarios concurrentes para medir tiempos.],

    [Mantenimiento],
    [Regresión],
    [Asegurar que cambios no rompen lo existente.],
    [Ideal para *Automatización* por ser repetitiva.],
    [Ejecutar suite automática tras un despliegue.],

    [Aceptación],
    [Exploratoria],
    [Diseño y ejecución simultáneos, basado en experiencia.],
    [Complementa pruebas guionadas. Busca defectos no previstos.],
    [Navegar libremente intentando "romper" un flujo nuevo.],

    [Transversal],
    [Shift-left \ (Desde Req.)],
    [Analizar requerimientos antes de codificar.],
    [Prevenir defectos (~60% nacen aquí).],
    [Revisar documentación buscando ambigüedades.],
  )
})
