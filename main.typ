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

== Tabla: Niveles de Prueba y Especificaciones Técnicas

#figure({
  set text(size: 8pt)
  table(
    columns: (auto, 1fr, 1fr),
    inset: 8pt,
    align: (x, y) => if y == 0 { center + horizon } else { left + top },
    fill: (x, y) => if y == 0 { gray.lighten(60%) } else { none },

    [*Nivel de Prueba*], [*Objetivo / Definición*], [*Especificación Técnica y Herramientas*],

    [*Unidad* \ (Unit Testing)],
    [Evaluar módulos o componentes individuales de forma aislada para asegurar su corrección lógica interna.],
    [
      - *Caja Blanca:* Se basa en la estructura interna.
      - *Atomicidad:* Verificar un solo punto por caso.
      - *Herramientas:* Junit, NUnit, bibliotecas de aserción.
    ],

    [*Integración* \ (Integration)],
    [Verificar la interacción y las interfaces entre componentes o sistemas ya probados unitariamente.],
    [
      - *Interfaces y Flujos:* Comunicación entre módulos.
      - *Stubs/Drivers:* Para simular partes no disponibles.
    ],

    [*Sistema* \ (System Testing)],
    [Validar el comportamiento global del sistema integrado completo contra los requisitos especificados.],
    [
      - *Funcional y No Funcional.*
      - *ISO 25010:* Usabilidad, Seguridad, Rendimiento.
      - *Stress Tools:* Para medir concurrencia y volumen.
    ],

    [*Aceptación* \ (Acceptance)],
    [Validar si el sistema satisface las necesidades del usuario y está listo para despliegue (Alpha/Beta).],
    [
      - *Validación vs Verificación:* ¿Es el producto correcto?
      - *Prioridad:* Casos de prioridad Alta/Media suelen derivar aquí.
    ],
  )
})

== Tabla: Roles y Contextos por Nivel de Prueba

#figure({
  set text(size: 8pt)
  table(
    columns: (auto, 1fr, 1fr),
    inset: 8pt,
    align: (x, y) => if y == 0 { center + horizon } else { left + top },
    fill: (x, y) => if y == 0 { gray.lighten(60%) } else { none },

    [*Nivel de Prueba*], [*Roles / Responsables*], [*Contexto \ (Cuándo se realiza)*],

    [*Unidad* \ (Unit Testing)],
    [*Automation Developer / Desarrolladores:* Crean scripts técnicos (Java, .NET, JS) para validar el código.],
    [Durante el desarrollo, al finalizar de programar una función o clase, y antes de integrarla con otros módulos.],

    [*Integración* \ (Integration)],
    [*Technical Tester / Desarrollador:* Requiere conocimiento de arquitectura para entender el flujo de datos.],
    [Tras superar las pruebas unitarias y ensamblar los módulos, antes de probar el sistema de manera global.],

    [*Sistema* \ (System Testing)],
    [*Execution Tester / Technical Tester:* Identificación de cuellos de botella y ejecución metodológica.],
    [Una vez que el sistema está completamente integrado, en un entorno de pruebas lo más idéntico posible a producción.],

    [*Aceptación* \ (Acceptance)],
    [*Cliente / Usuario Final / Functional Analyst:* Simulación de uso real con conocimiento de negocio.],
    [Al final del ciclo de vida de pruebas, como validación final del cliente antes de liberar el software a usuarios.],
  )
})

#pagebreak()

= Tablas Comparativas de Pruebas de Software y Características
== Tabla: Técnicas de Prueba y Características

#figure({
  set text(size: 8pt)
  table(
    columns: (auto, auto, 1fr),
    inset: 8pt,
    align: (x, y) => if y == 0 { center + horizon } else { left + top },
    fill: (x, y) => if y == 0 { gray.lighten(60%) } else { none },

    [*Nivel*], [*Técnica*], [*Características*],

    [Unidad / General],
    [Caja Blanca \ (Camino Básico)],
    [Basada en asegurar que cada ruta lógica independiente posible se ejecute al menos una vez calculando su complejidad ciclomática.],

    [Unidad / General],
    [Caja Blanca \ (Otras: Bucles y Sentencias)],
    [Evalúa la validez de ciclos lógicos o asegura que cada línea (sentencia) de código se toque al menos una vez.],

    [Sistema], [Funcional \ (Caja Negra)], [Evalúa *qué* hace el sistema sin mirar código.],

    [Sistema], [No Funcional \ (ISO 25010)], [Evalúa *cómo* se comporta: Rendimiento, Seguridad, etc.],

    [Mantenimiento], [Regresión], [Asegurar que cambios no rompen lo existente.],

    [Aceptación], [Exploratoria], [Diseño y ejecución simultáneos, basado en experiencia.],

    [Transversal], [Shift-left \ (Desde Req.)], [Analizar requerimientos antes de codificar.],
  )
})

#pagebreak()

== Tabla: Aplicación y Ejemplos de las Técnicas de Prueba

#figure({
  set text(size: 8pt)
  table(
    columns: (auto, auto, 1fr, 1fr),
    inset: 8pt,
    align: (x, y) => if y == 0 { center + horizon } else { left + top },
    fill: (x, y) => if y == 0 { gray.lighten(60%) } else { none },

    [*Nivel*], [*Técnica*], [*Aplicación / ¿Cuándo usar?*], [*Ejemplos*],

    [Unidad / General],
    [Caja Blanca \ (Camino Básico)],
    [Cuando hay flujos de decisión críticos (ej. múltiples `if/else`) y necesitamos garantizar cobertura de ramificaciones (branch) e identificar código muerto.],
    [Diseñar casos de prueba para que un bloque `if` evalúe forzosamente tanto `true` como `false`.],

    [Unidad / General],
    [Caja Blanca \ (Otras: Bucles y Sentencias)],
    [("La otra") Cuando se tienen estructuras repetitivas complejas (`for`/`while`) o para validaciones rápidas donde prioriza la cobertura de sentencias sobre ruteos complejos.],
    [Verificar condiciones de término de bucles (0 iteraciones, 1 iteración, máx iteraciones).],

    [Sistema],
    [Funcional \ (Caja Negra)],
    [Manual o Automatizado (si >12 ejecuciones).],
    [Verificar que al hacer clic en "Guardar", el registro aparezca.],

    [Sistema],
    [No Funcional \ (ISO 25010)],
    [Crítico en alta demanda. Requiere herramientas de Stress.],
    [Simular 1000 usuarios concurrentes para medir tiempos.],

    [Mantenimiento],
    [Regresión],
    [Ideal para *Automatización* por ser repetitiva.],
    [Ejecutar suite automática tras un despliegue.],

    [Aceptación],
    [Exploratoria],
    [Complementa pruebas guionadas. Busca defectos no previstos.],
    [Navegar libremente intentando "romper" un flujo nuevo.],

    [Transversal],
    [Shift-left \ (Desde Req.)],
    [Prevenir defectos (~60% nacen aquí).],
    [Revisar documentación buscando ambigüedades.],
  )
})
