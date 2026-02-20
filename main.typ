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

// Se configura el canvas para que se expanda auto-mágicamente
#set page(
  width: auto,
  height: auto, // También omitimos la altura para asegurarnos que la tabla quepa en una sola hoja gigante
  margin: 1cm,
)

= Tabla Comparativa General de Pruebas de Software

A continuación se presenta la tabla comparativa integral basada en la investigación de videos sobre niveles y tipos de pruebas de software, unificando las especificaciones, roles, actividades y contextos en un solo lienzo.

#figure({
  set text(size: 9pt)
  table(
    columns: (auto, auto, 200pt, 150pt, 130pt, 130pt, 150pt, 200pt, 150pt),
    inset: 8pt,
    align: (x, y) => if y == 0 { center + horizon } else { left + top },
    fill: (x, y) => if y == 0 { gray.lighten(60%) } else { none },

    [*Nivel de Prueba*],
    [*Técnica*],
    [*Objetivo / Características*],
    [*Especificación Técnica*],
    [*Herramientas*],
    [*Roles / Responsables*],
    [*Actividades / Responsabilidades*],
    [*Contexto / Aplicación*],
    [*Ejemplos*],

    [*Unidad* \ (Unit Testing)],
    [General],
    [Evaluar módulos o componentes individuales de forma aislada para asegurar su corrección lógica interna.],
    [
      - *Caja Blanca:* Se basa en la estructura interna.
      - *Atomicidad:* Verificar un solo punto por caso.
    ],
    [Junit, NUnit, bibliotecas de aserción.],
    [*Automation Developer / Desarrolladores*],
    [Crean scripts técnicos (Java, .NET, JS) para validar el código.],
    [Durante el desarrollo, al finalizar de programar una función o clase, y antes de integrarla con otros módulos.],
    [Validar cálculo matemático específico o el retorno esperado de un método individual.],

    [],
    [Caja Blanca \ (Camino Básico)],
    [Basada en asegurar que cada ruta lógica independiente posible se ejecute al menos una vez calculando su complejidad ciclomática.],
    [Diseño basado en el análisis de Sentencias y Ramas (Statement/Branch Coverage).],
    [JaCoCo, SonarQube, Cobertura.],
    [*Automation Developer / Desarrolladores*],
    [Análisis de grafos de flujo de control, diseño de pruebas para cubrir todos los caminos lógicos posibles.],
    [Cuando hay flujos de decisión críticos (ej. múltiples `if/else`) y necesitamos garantizar cobertura de ramificaciones (branch) e identificar código muerto.],
    [Diseñar casos de prueba para que un bloque `if` evalúe forzosamente tanto `true` como `false`.],

    [],
    [Caja Blanca \ (Otras: Bucles y Sentencias)],
    [Evalúa la validez de ciclos lógicos o asegura que cada línea (sentencia) de código se toque al menos una vez.],
    [Diseño basado en el análisis de Ciclos y Cobertura de Código (Loop/Statement Coverage).],
    [JaCoCo, SonarQube, herramientas de profiling de código.],
    [*Automation Developer / Desarrolladores*],
    [Diseño de casos límite para bucles, revisión y refactorización técnica de código iterativo.],
    [Cuando se tienen estructuras repetitivas complejas (`for`/`while`) o para validaciones rápidas donde prioriza la cobertura de sentencias sobre ruteos complejos.],
    [Verificar condiciones de término de bucles (0 iteraciones, 1 iteración, máx iteraciones).],

    [*Integración* \ (Integration)],
    [General],
    [Verificar la interacción y las interfaces entre componentes o sistemas ya probados unitariamente.],
    [
      - *Interfaces y Flujos:* Comunicación entre módulos.
      - *Stubs/Drivers:* Para simular partes no disponibles.
    ],
    [Postman, SoapUI, RestAssured, Jest (para integración frontend).],
    [*Technical Tester / Desarrollador*],
    [Requiere conocimiento de arquitectura para entender el flujo de datos.],
    [Tras superar las pruebas unitarias y ensamblar los módulos, antes de probar el sistema de manera global.],
    [Prueba de endpoints de API o validación de conexión entre el Backend y la Base de Datos.],

    [*Sistema* \ (System Testing)],
    [General],
    [Validar el comportamiento global del sistema integrado completo contra los requisitos especificados.],
    [
      - *Funcional y No Funcional.*
      - *ISO 25010:* Usabilidad, Seguridad, Rendimiento.
    ],
    [*Stress Tools:* Para medir concurrencia y volumen.],
    [*Execution Tester / Technical Tester*],
    [Identificación de cuellos de botella y ejecución metodológica.],
    [Una vez que el sistema está completamente integrado, en un entorno de pruebas lo más idéntico posible a producción.],
    [Prueba End-to-End de una compra online simulando un usuario final completo.],

    [],
    [Funcional \ (Caja Negra)],
    [Evalúa *qué* hace el sistema sin mirar código.],
    [Técnicas de partición de equivalencia, análisis de valores límite y tabla de decisiones.],
    [Selenium, Cypress, Playwright (automatizado), TestRail, Jira (gestión).],
    [*Functional Tester / QA Analyst*],
    [Diseño de casos a partir de Historias de Usuario, ejecución y reporte de defectos usando enfoques de Caja Negra.],
    [Manual o Automatizado (si >12 ejecuciones).],
    [Verificar que al hacer clic en "Guardar", el nuevo registro se persista y aparezca visualmente.],

    [],
    [No Funcional \ (ISO 25010)],
    [Evalúa *cómo* se comporta: Rendimiento, Seguridad, etc.],
    [Definición de SLAs de rendimiento (tiempos de respuesta), evaluación de vulnerabilidades según OWASP Top 10.],
    [JMeter, Gatling, LoadRunner (rendimiento); OWASP ZAP, Burp Suite (seguridad).],
    [*Performance Tester / Security Engineer*],
    [Diseño de escenarios de estrés/carga, análisis de tiempos de respuesta, escalabilidad y reportes de seguridad web.],
    [Crítico en alta demanda. Requiere herramientas de Stress especializadas.],
    [Simular 1000 usuarios concurrentes simultáneos para medir tiempos de degradación.],

    [*Aceptación* \ (Acceptance)],
    [General],
    [Validar si el sistema satisface las necesidades del usuario y está listo para despliegue (Alpha/Beta).],
    [
      - *Validación vs Verificación:* ¿Es el producto correcto?
      - *Prioridad:* Casos de prioridad Alta/Media suelen derivar aquí.
    ],
    [Entornos de UAT (User Acceptance Testing), encuestas, analíticas de adopción de uso.],
    [*Cliente / Usuario Final / Functional Analyst*],
    [Simulación de uso real en negocio validando de punta a punta si resuelve el problema inicial.],
    [Al final del ciclo de vida de pruebas, como validación final del cliente o product owner antes de liberar el software a usuarios.],
    [Pruebas Beta de una nueva funcionalidad con 50 usuarios reales para recolectar feedback previo a la versión oficial.],

    [],
    [Exploratoria],
    [Diseño y ejecución simultáneos, basado en experiencia.],
    [Heurísticas de prueba orientadas a negocio, Tour Testing, Charters para sesión de prueba exploratoria (Timeboxing).],
    [Mind maps (XMind), extensiones de captura de pantalla/video (Bug Magnet, Test/qTest Explorer).],
    [*Experienced QA Analyst / Test Engineer*],
    [Aprendizaje simultáneo del producto, ejecución adaptativa rápida guiada por intuición e investigación del sistema.],
    [Complementa pruebas guionadas tradicionales. Busca defectos y caminos alternativos (edge cases) no previstos originalmente.],
    [Navegar e interactuar libremente con la aplicación intentando "romper" un flujo nuevo asumiendo roles de usurio inusuales.],

    [*Mantenimiento*],
    [Regresión],
    [Asegurar que los nuevos cambios o refactorizaciones de código no rompen lo existente que funcionaba.],
    [Análisis transversal de impacto, selección de casos de prueba prioritarios extraídos de la suite de regresión base (P1, P2).],
    [Jenkins, GitLab CI/CD, herramientas potentes de automatización UI/API (Cypress, Selenium).],
    [*QA Automation Engineer / Release Manager*],
    [Mantenimiento y actualización constante de la suite automatizada, análisis de falsos positivos en los pipelines de CI/CD diarios.],
    [Ideal para *Automatización* mediante integración continua (CI) por ser inminentemente repetitiva a largo plazo.],
    [Ejecutar la suite completa automatizada cada noche (nightly build) o obligatoriamente tras cada mínimo despliegue en rama principal.],

    [*Transversal*],
    [Shift-left \ (Desde Req.)],
    [Analizar requerimientos exhaustivamente antes de codificar ninguna línea.],
    [Revisión estática de requerimientos, validación cruzada con modelos iniciales y prototipos de diseño UX/UI en fase de grooming.],
    [Confluence, Jira, Figma, herramientas de revisión y análisis estático de código (SonarQube) puestas en el pipeline local.],
    [*Product Owner / QA Analyst / Desarrollador*],
    [Refinamiento exhaustivo de Criterios de Aceptación (ej. escribiendo BDD 'Given/When/Then') y revisión cautelosa de wireframes.],
    [Prevenir aparición temprana de defectos (se calcula estadísticamente que ~60% o más de los defectos críticos nacen aquí).],
    [Revisar documentación y User Stories meticulosamente buscando ambigüedades técnicas, contradicciones u omisiones lógicas importantes.],
  )
})
