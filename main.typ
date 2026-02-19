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

#outline(
  title: "Índice",
  indent: auto,
)

#pagebreak()
#set par(justify: true, leading: 1.4em)
#set heading(numbering: "1.")
#set list(indent: 1.5em)
#v(1cm)

#title("INVESTIGACIÓN: MODELO DE CALIDAD ISO/IEC 25010")
#set align(left)

= ¿Qué es el modelo de calidad ISO/IEC 25010?
La norma *ISO/IEC 25010* es un estándar internacional que forma parte de la serie *SQuaRE (Systems and Software Quality Requirements and Evaluation)*, específicamente de la familia ISO/IEC 25000. Este modelo define un marco de referencia exhaustivo para evaluar la calidad del software, reemplazando a la antigua norma ISO/IEC 9126.

Su propósito fundamental es proporcionar un lenguaje común y estructurado para describir, medir y evaluar la calidad de un producto de software. La calidad se define aquí como el grado en el que un sistema satisface las necesidades explícitas e implícitas de sus diversos *stakeholders* (usuarios, desarrolladores, administradores). Al establecer este modelo, las organizaciones pueden identificar brechas entre lo esperado y lo entregado, asegurando que el producto no solo funcione correctamente, sino que aporte valor real en términos de usabilidad, seguridad y eficiencia.

= Las 9 Características de Calidad
El modelo de calidad del producto se desglosa en nueve características principales, cada una compuesta por un conjunto de subcaracterísticas que permiten una evaluación detallada y granular.

== Adecuación Funcional
Esta característica evalúa si las funciones del software son apropiadas para las tareas especificadas por el usuario. No se trata solo de que "haga cosas", sino de que haga lo correcto.
- *Completitud funcional*: Grado en el que el conjunto de funcionalidades cubre todas las tareas y objetivos especificados por el usuario. Un software incompleto deja al usuario sin herramientas para terminar su trabajo.
- *Corrección funcional*: Capacidad del sistema para proveer resultados precisos y correctos con el grado de exactitud requerido. Por ejemplo, un sistema contable debe calcular impuestos sin errores de redondeo.
- *Pertinencia funcional*: Grado en el que las funciones facilitan el logro de tareas y objetivos específicos del usuario. Se enfoca en la utilidad real de cada función implementada.

== Eficiencia de Desempeño
Mide el rendimiento del software en relación con la cantidad de recursos utilizados bajo condiciones establecidas. Es crucial para la escalabilidad y la satisfacción del usuario en entornos de alta demanda.
- *Comportamiento temporal*: Evalúa los tiempos de respuesta y de procesamiento, así como las tasas de rendimiento (throughput) al ejecutar sus funciones. Un sistema eficiente responde instantáneamente a las interacciones del usuario.
- *Utilización de recursos*: Cantidad y tipo de recursos (CPU, memoria, almacenamiento, ancho de banda) utilizados por el software para llevar a cabo sus funciones. Se busca minimizar el consumo sin sacrificar el rendimiento.
- *Capacidad*: Grado en el que los límites máximos del sistema (número de usuarios simultáneos, volumen de transacciones, tamaño de base de datos) cumplen con los requisitos esperados.

== Compatibilidad
Refleja la capacidad del software para intercambiar información y operar en un entorno compartido con otros sistemas. En un ecosistema tecnológico interconectado, el aislamiento ya no es viable.
- *Coexistencia*: Capacidad del producto para realizar sus funciones de manera eficiente mientras comparte un entorno y recursos comunes con otros productos, sin interferir negativamente en ellos.
- *Interoperabilidad*: Capacidad de dos o más sistemas para intercambiar información y utilizar la información intercambiada de forma efectiva. Es la base de la integración de sistemas empresariales.

== Capacidad de Interacción (Usabilidad)
Se refiere a la facilidad con la que usuarios específicos pueden utilizar el sistema para alcanzar objetivos definidos con efectividad, eficiencia y satisfacción en un contexto de uso específico.
- *Aprendizabilidad*: Facilidad con la que el usuario puede entender cómo utilizar el sistema para lograr sus objetivos. Un buen diseño reduce la curva de aprendizaje.
- *Operabilidad*: Capacidad del sistema para ser fácil de operar y controlar. Incluye la consistencia en la interfaz, la personalización y la gestión de errores.
- *Protección contra errores de usuario*: Grado en el que el sistema protege a los usuarios de cometer errores y minimiza las consecuencias de los mismos (por ejemplo, confirmaciones antes de borrar datos críticos).
- *Inclusividad (Accesibilidad)*: Capacidad del sistema para ser utilizado por personas con una amplia gama de características y capacidades, incluyendo aquellas con discapacidades visuales, auditivas o motoras.
- *Estética de la interfaz de usuario*: Grado en el que la interfaz de usuario es agradable y satisfactoria para la interacción del usuario.

== Fiabilidad
Capacidad del sistema para realizar sus funciones especificadas bajo condiciones establecidas durante un período de tiempo determinado. Es sinónimo de estabilidad y confianza.
- *Madurez*: Grado en el que el sistema satisface las necesidades de fiabilidad bajo una operación normal, habiendo superado fallos iniciales y alcanzado un estado estable.
- *Disponibilidad*: Medida en la que el sistema está operativo y accesible para su uso cuando se requiere.
- *Tolerancia a fallos*: Capacidad del sistema para mantener un nivel especificado de rendimiento en caso de fallos de software o infracciones de su interfaz especificada.
- *Capacidad de recuperación*: Capacidad del sistema para recuperar datos directamente afectados y restablecer el estado del sistema en caso de una interrupción o fallo.

== Seguridad
Protección de la información y los datos, de manera que las personas u otros sistemas tengan el grado de acceso a los datos adecuado a sus tipos y niveles de autorización.
- *Confidencialidad*: Garantía de que la información no esté disponible ni sea revelada a individuos, entidades o procesos no autorizados.
- *Integridad*: Grado en el que se impide la modificación no autorizada o la destrucción de datos y programas.
- *No repudio*: Capacidad de probar que una acción o evento ha tenido lugar, de manera que dichos eventos o acciones no puedan ser repudiados posteriormente.
- *Responsabilidad (Traazabilidad)*: Capacidad de rastrear de forma inequívoca las acciones de una entidad.
- *Autenticidad*: Capacidad de demostrar que la identidad de un sujeto o recurso es la que se afirma.

== Mantenibilidad
Representa la efectividad y eficiencia con la que el producto puede ser modificado por los mantenedores previstos. Las modificaciones pueden incluir correcciones, mejoras o adaptaciones.
- *Modularidad*: Grado en el que el sistema está compuesto por componentes discretos, de tal manera que un cambio en un componente tiene un impacto mínimo en los demás.
- *Reusabilidad*: Capacidad de un activo para ser utilizado en más de un sistema o en la construcción de otros activos.
- *Analizabilidad*: Facilidad con la que es posible evaluar el impacto de un cambio previsto en el sistema, diagnosticar deficiencias o causas de fallos, o identificar partes a modificar.
- *Modificabilidad*: Grado en el que el sistema puede ser modificado de forma efectiva y eficiente sin introducir defectos o degradar la calidad existente.
- *Testabilidad*: Facilidad con la que se pueden establecer criterios de prueba para el sistema y realizar las pruebas para determinar si se cumplen esos criterios.

== Portabilidad
Capacidad del sistema para ser transferido de forma efectiva y eficiente de un entorno de hardware, software u operacional a otro.
- *Adaptabilidad*: Capacidad del sistema para ser adaptado eficazmente a diferentes entornos operacionales o de uso determinados.
- *Instalabilidad*: Facilidad con la que el sistema puede ser instalado o desinstalado en un entorno específico.
- *Reemplazabilidad*: Capacidad del producto para ser sustituido por otro producto de software especificado para el mismo propósito en el mismo entorno.

== Flexibilidad (Característica adicional)
En las actualizaciones recientes del modelo (como en la versión 2023), se destaca la flexibilidad como la capacidad del producto para adaptarse a cambios en los requisitos o contextos de uso no previstos inicialmente. Esto implica un diseño que no solo soporta el cambio (Mantenibilidad), sino que lo *anticipa* y permite la reconfiguración o extensión dinámica sin necesidad de reingeniería profunda.

= Importancia de la Norma
La adopción de la norma ISO/IEC 25010 es crucial para el desarrollo de software de alta calidad, ya que proporciona beneficios tangibles tanto para los equipos de desarrollo como para los clientes finales.

- *Estandarización del Lenguaje*: Ofrece un vocabulario común para desarrolladores, evaluadores (QA), gestores de proyecto y clientes. Al hablar el mismo idioma, se reducen las ambigüedades en la definición de requisitos no funcionales, evitando malentendidos costosos durante el ciclo de vida del desarrollo.
- *Certificación y Garantía de Calidad*: Como se menciona en diversas fuentes del sector, las empresas y universidades buscan certificar sus productos bajo esta norma para demostrar objetivamente la madurez y robustez de sus sistemas. Una certificación basada en ISO 25010 actúa como un sello de confianza, garantizando a los usuarios que el software es mantenible, seguro y eficiente.
- *Mejora Continua Dirigida*: El modelo permite realizar evaluaciones diagnósticas para identificar debilidades específicas en el software. Por ejemplo, si una auditoría revela una baja puntuación en "Seguridad", el equipo puede enfocar sus esfuerzos en mejorar la "Confidencialidad" o la "Integridad", en lugar de aplicar correcciones genéricas. Esto facilita una asignación de recursos más inteligente y efectiva.

#pagebreak()

= Tablas Comparativas de Pruebas de Software

A continuación se presentan las tablas comparativas basadas en la investigación de videos sobre niveles y tipos de pruebas de software.

== Tabla 1: Niveles de Prueba y Especificaciones Técnicas

#figure(
  {
    set text(size: 9pt)
    table(
      columns: (auto, 1fr, 1fr, 1fr),
    inset: 8pt,
    align: (x, y) => if y == 0 { center + horizon } else { left + top },
    fill: (x, y) => if y == 0 { gray.lighten(60%) } else { none },
    
    [*Nivel de Prueba*], 
    [*Objetivo / Definición*], 
    [*Especificación Técnica y Herramientas*], 
    [*Roles / Responsables*],

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
  },
  caption: [Comparativa de Niveles de Prueba, Especificaciones y Roles],
)

#pagebreak()

== Tabla 2: Técnicas de Prueba: Características y Aplicación

#figure(
  {
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
  },
  caption: [Técnicas de Prueba, Características y Ejemplos Prácticos],
)
