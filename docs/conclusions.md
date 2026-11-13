# Conclusiones

## Conclusiones y recomendaciones

<div class ="chapter">

A lo largo del presente proyecto, el equipo de Sanuvi ha desarrollado un proceso de ingeniería de software orientado a abordar la problemática del seguimiento y adherencia al tratamiento de la anemia, considerando las necesidades tanto de los apoderados como del personal de salud. El trabajo comprendió el análisis de la problemática, la investigación de los usuarios, la aplicación de Lean UX, la definición de requerimientos, el diseño de la solución, la elaboración de prototipos y el diseño de la arquitectura de software de Ferova. A continuación, se presentan las principales conclusiones obtenidas a partir del trabajo realizado.

**Sobre el Problem Statement y el contexto de la problemática**

El análisis realizado permitió identificar que el seguimiento del tratamiento de la anemia presenta dificultades relacionadas con la continuidad del tratamiento, el cumplimiento de las indicaciones, la organización de la información y la comunicación entre los apoderados y el personal de salud. Las entrevistas realizadas permitieron reconocer que los apoderados pueden presentar dificultades para mantener un seguimiento constante de las dosis, las citas y la alimentación, mientras que el personal de salud requiere información organizada para realizar el seguimiento de sus pacientes.

A partir de estos hallazgos, se identificó que la problemática no se limita únicamente al cumplimiento de una indicación médica, sino que involucra diferentes actividades que forman parte del proceso de seguimiento. Por ello, Ferova plantea una solución que integra el registro de dosis, seguimiento del tratamiento, controles de hemoglobina, gestión de citas, registro nutricional y comunicación entre los usuarios involucrados.

**Sobre los segmentos objetivo y las necesidades identificadas**

El análisis de los segmentos permitió reconocer dos grupos principales relacionados con la solución: los apoderados, responsables de acompañar el tratamiento de sus pacientes, y el personal de salud, encargado de realizar su seguimiento. Para los apoderados, las necesidades identificadas se relacionan principalmente con disponer de información organizada sobre el tratamiento, registrar las dosis, consultar la evolución, gestionar citas y registrar los alimentos consumidos. Para el personal de salud, las necesidades se concentran en organizar la información clínica, registrar controles, realizar el seguimiento de los niveles de hemoglobina, gestionar citas y mantener comunicación con las familias.

Estos hallazgos sirvieron como base para definir las funcionalidades de FerovaFamily y FerovaClinic, procurando que cada plataforma responda al contexto y responsabilidades de su respectivo usuario.

**Sobre el proceso Lean UX y las hipótesis planteadas**

La aplicación de Lean UX permitió estructurar el problema mediante el Problem Statement, los supuestos, las hipótesis y el Lean UX Canvas. Este proceso permitió relacionar las necesidades identificadas durante la investigación con las funcionalidades propuestas para la solución.

Entre las hipótesis planteadas se encuentran el uso de un registro de dosis diarias, una interfaz sencilla y fácil de utilizar, la comunicación con el personal de salud y el registro de controles de hemoglobina como elementos que podrían contribuir al seguimiento del tratamiento.

Sin embargo, los resultados definitivos de estas hipótesis requieren una validación posterior con usuarios reales y mediante los experimentos correspondientes. Por ello, las hipótesis planteadas deben considerarse como criterios de validación del producto y no como resultados cuantitativos ya comprobados.

**Sobre el diseño de la solución Ferova**

El diseño de Ferova permitió transformar los hallazgos de la investigación en una propuesta digital compuesta por FerovaFamily, orientada a los apoderados, y FerovaClinic, orientada al personal de salud. La solución contempla diferentes funcionalidades relacionadas con el seguimiento del tratamiento, como el registro y consulta de dosis, seguimiento de la evolución, registro nutricional, gestión de citas, consulta de postas de salud y comunicación con el personal de salud.

En el caso de FerovaFamily, la navegación se organizó mediante secciones como Inicio, Diario, Citas y Consultas, mientras que FerovaClinic organiza sus funcionalidades mediante secciones como Inicio, Pacientes, Consultas e Historial. Esta organización busca facilitar el acceso a las funciones principales según las actividades que realiza cada tipo de usuario.

**Sobre el diseño UI/UX de Ferova**

El proceso de diseño UI/UX permitió representar los principales flujos de interacción mediante wireframes, user flows, wireflows y prototipos. La organización de las interfaces consideró las responsabilidades de cada segmento, procurando facilitar el acceso a las funcionalidades principales de FerovaFamily y FerovaClinic.

Esta etapa permitió establecer una estructura de navegación coherente con las actividades de los apoderados y del personal de salud, proporcionando una base para la implementación de las aplicaciones.

**Sobre la arquitectura y el desarrollo de software**

La definición de la arquitectura permitió organizar Ferova mediante componentes y contextos delimitados según las responsabilidades funcionales de la plataforma. Asimismo, la implementación de los servicios REST permitió integrar las operaciones necesarias para la gestión de pacientes, seguimiento del tratamiento, controles de hemoglobina, comunicación y generación de indicadores.

El desarrollo de FerovaClinic y FerovaFamily permitió trasladar los requerimientos definidos durante las etapas de análisis y diseño a aplicaciones funcionales dirigidas a sus respectivos usuarios. La integración entre las aplicaciones y el backend constituye una parte fundamental de la solución, ya que permite centralizar y consultar la información relacionada con el seguimiento de los pacientes.

**Sobre el producto desarrollado**

El trabajo realizado permitió establecer una solución digital que integra las necesidades de los dos segmentos identificados dentro de una misma plataforma. FerovaFamily proporciona herramientas para que los apoderados puedan registrar y consultar información relacionada con sus pacientes, mientras que FerovaClinic proporciona al personal de salud funcionalidades orientadas a la gestión y seguimiento de los pacientes.

En conjunto, la solución busca centralizar información relacionada con el tratamiento, facilitar el seguimiento de las actividades asociadas y mejorar la comunicación entre los apoderados y el personal de salud. De esta manera, el producto propuesto responde a las necesidades identificadas durante las etapas de investigación y análisis, manteniendo como eje principal el seguimiento del tratamiento de la anemia.

**Sobre el análisis estático y la calidad del código**

La incorporación de SonarQube permitió realizar análisis estáticos del código fuente del backend y frontend, identificando problemas relacionados con seguridad, confiabilidad y mantenibilidad. Los resultados obtenidos facilitaron la identificación de aspectos que requieren atención y proporcionaron indicadores para evaluar el estado del código desarrollado.

Ambos proyectos alcanzaron el estado de Quality Gate Passed en los análisis realizados. Sin embargo, los resultados también evidenciaron oportunidades de mejora, especialmente en los problemas de confiabilidad y en la ausencia de cobertura de pruebas reportada. Por ello, el análisis estático constituye una herramienta de apoyo para mantener y mejorar progresivamente la calidad del software.

**Sobre la implementación de prácticas DevOps**

La implementación de prácticas DevOps permitió organizar los procesos de integración, entrega, despliegue y monitoreo de los componentes de Ferova. Mediante GitHub Actions se establecieron workflows para automatizar actividades de compilación y validación del código, mientras que las plataformas de alojamiento permitieron publicar los componentes de la solución.

El backend se desplegó en Railway, mientras que FerovaClinic se publicó mediante Azure Static Web Apps. Por su parte, FerovaFamily utiliza Firebase App Distribution para compartir versiones de prueba con testers autorizados. Esta distribución de responsabilidades permitió establecer mecanismos diferenciados para la publicación y validación de cada componente.

**Sobre Continuous Integration y Continuous Delivery**

Las prácticas de Continuous Integration permitieron automatizar la compilación de los proyectos y detectar errores durante el proceso de integración. Asimismo, Continuous Delivery permitió organizar la preparación de versiones y los procesos de despliegue hacia los entornos correspondientes.

La separación de estos procesos contribuyó a mejorar la trazabilidad de los cambios y a establecer una secuencia de trabajo más ordenada para la publicación de nuevas versiones. Además, el uso de workflows permitió consultar los resultados de las ejecuciones y reconocer los procesos que requieren correcciones.

**Sobre Continuous Deployment y Continuous Monitoring**

La automatización de los despliegues permitió establecer mecanismos para publicar las versiones de los componentes de Ferova en sus respectivos entornos productivos. Complementariamente, las prácticas de Continuous Monitoring permitieron verificar la disponibilidad de los servicios, revisar los registros de ejecución y consultar los resultados de los workflows.

La incorporación de verificaciones de disponibilidad, revisión de logs y seguimiento de eventos proporciona mecanismos para identificar posibles fallos posteriores al despliegue. Asimismo, la distribución de versiones móviles mediante Firebase App Distribution facilita la validación de FerovaFamily por parte de testers autorizados.

**Sobre la gestión de alertas y notificaciones**

La definición de componentes de alertas y notificaciones permitió organizar los eventos relevantes según su origen, tipo, canal y destinatario. Se identificaron mecanismos para consultar los fallos de GitHub Actions, revisar los eventos del backend en Railway, verificar las implementaciones de Azure y distribuir versiones móviles mediante Firebase App Distribution.

Esta organización facilita la identificación y seguimiento de incidencias técnicas y permite diferenciar los eventos dirigidos al equipo de desarrollo de aquellos relacionados con la validación de versiones por parte de los testers. La consolidación de mecanismos de comunicación y seguimiento constituye una oportunidad para fortalecer la respuesta ante incidentes.

</div>

## Video App Validation

| Campo | Dato |
|-------|------|
| Enlace del video | [URL de Microsoft Stream] |
| Duración | [mm:ss] |

<img src="../assets/img/conclusions/video-app-validation.png" alt="Captura del video App Validation">

<!-- COMPLETAR -->

## Video About-the-Team

| Campo | Dato |
|-------|------|
| Enlace del video | [URL de Microsoft Stream] |
| Duración | [mm:ss] |

<img src="../assets/img/conclusions/video-about-the-team.png" alt="Captura del video About-the-Team">

> El video incluye los testimonios de cada integrante sobre cómo el trabajo desarrollado contribuyó al **ABET - EAC - Student Outcome 4**.

<!-- COMPLETAR -->
