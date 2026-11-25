# Capítulo VIII: Experiment-Driven Development

## 8.1. Experiment Planning

Para cerrar la brecha entre la entrega funcional de **Ferova** y la validación empírica con usuarios reales, el equipo de **SANUVI** adopta el ciclo **Experiment-Driven Product Development (XDPD)** (*premise → question → hypothesis → experiment → analysis → decision*), guiado por los principios *Simplest, Useful Thing*, *Strong opinions, loosely held* y *Be data informed*.

### 8.1.1. As-Is Summary

#### Estado técnico y funcional de la plataforma Ferova

Al cierre del Capítulo V y la configuración operativa del Capítulo VII, **Ferova** cuenta con una arquitectura distribuida de cuatro componentes en funcionamiento para combatir la anemia infantil en el Perú, tomando como referencia el umbral clínico de la **NTS N.° 213-MINSA/DGIESP-2024** (≥ 75 % de adherencia adecuada) y atendiendo a dos segmentos de usuarios: **Madres/cuidadores** (*User Persona: María López*) y **Personal de salud** (*User Persona: Carlos Rojas*):

| Componente | Tecnología y despliegue | Capacidades principales implementadas |
|---|---|---|
| **Landing Page** | Web estática desplegada en **GitHub Pages** | Presentación de la propuesta de valor de Ferova, contexto de anemia infantil y accesos de entrada para los segmentos objetivo. |
| **FerovaFamily** (App móvil) | **Kotlin + Jetpack Compose**, distribuida en **Firebase App Distribution** | Registro y confirmación de dosis (`/today-dose`), progreso y logros (`/achievement`), evolución de hemoglobina (`/hemoglobin-evolution`), mapa de postas cercanas y chat con personal de enfermería. |
| **FerovaClinic** (Portal web) | **Angular + TypeScript**, desplegada en **Azure Static Web Apps** | Panel clínico para personal de salud con mapa de calor de adherencia (`/heatmap`), resumen de riesgo (`/risk-overview`) y control de hemoglobina (`/hemoglobin-control`). |
| **Backend API & Persistencia** | **C# / .NET 9 + MongoDB** en **Docker**, desplegado en **Railway** | Exposición de endpoints REST para sincronización móvil/web, respaldado por pipelines CI/CD en GitHub Actions (`backend-ci.yml`, `frontend-ci.yml`) y monitoreo continuo (Capítulo VII). |

#### Áreas de incertidumbre que motivan la experimentación

Si bien la plataforma es funcionalmente operativa, el análisis del estado actual y de los resultados de verificación del Capítulo VI evidencia tres fuentes principales de incertidumbre que deben transformarse en preguntas investigables antes de diseñar nuevas funcionalidades:

1. **Suposiciones de Lean UX aún no validadas longitudinalmente (Capítulos I y III):** Las definiciones de *Business Outcomes*, *User Outcomes* y *Feature Assumptions* que dieron origen a las épicas `EP-01` a `EP-10` (recordatorios, gamificación por rachas, seguimiento del tratamiento y alertas clínicas) asumen cambios conductuales que todavía no han sido comprobados con datos de uso sostenido ni pruebas A/B sobre adherencia semanal, retención o conversión.
2. **Fricciones de usabilidad detectadas en inspección técnica y evaluaciones UX (Capítulo VI):** Aunque las pruebas funcionales y de API (BDD Gherkin, Selenium IDE y Postman) verifican flujos críticos y SonarQube aprueba el *Quality Gate* (con 0 % de cobertura automatizada reportada), las evaluaciones de interfaz identificaron hallazgos relevantes sin validación empírica de impacto:
   - **Evaluación Heurística (`6.3.3`):** **6 hallazgos** en *FerovaFamily* (severidad máxima **3**) y **10 hallazgos** en *FerovaClinic* (severidad máxima **4**).
   - **Auditoría UX — Aether System (`6.4.2`):** **20 hallazgos** distribuidos entre la Landing Page (`LP-01` a `LP-06`), *FerovaClinic* (`WEB-01` a `WEB-08`) y *FerovaFamily* (`MOB-01` a `MOB-06`), vinculados con jerarquía visual, claridad de métricas, prevención de errores en controles clínicos y diferenciación de accesos por rol.
3. **Asimetría en validación por segmento y ausencia de analítica de producto (Capítulos VI y VII):** En la sección `6.3.2`, el Segmento 1 cuenta con la entrevista de validación de **Alessandro Daniel Bravo Castillo** (13/11/2026), quien destacó la utilidad de la trazabilidad de dosis, el mapa de postas cercanas y el chat con enfermería, aunque manifestó indecisión personal al elegir médico y horario al agendar citas. En contraste, las entrevistas de validación del **Segmento 2 (Personal de salud)** siguen pendientes de ejecución, y actualmente no existe telemetría comportamental instrumentada para comparar tasas reales de confirmación, error clínico o conversión.

### 8.1.2. Raw Material: Assumptions, Knowledge Gaps, Ideas, Claims

Para estructurar la planificación experimental sin partir de soluciones preconcebidas, el equipo consolidó el material bruto proveniente de los Capítulos I–VII en cuatro categorías (*Ideas*, *Claims*, *Assumptions* y *Knowledge Gaps*).

**Ideas** — propuestas para resolver un problema o alcanzar un objetivo. El equipo prueba las premisas subyacentes a la idea, no la idea en sí.

| ID | Idea | Premisa subyacente | Origen |
|----|------|--------------------|--------|
| ID-01 | Mostrar en la vista principal de *FerovaFamily* (`/today-dose` y `/achievement`) la racha activa, el avance porcentual hacia la meta de ≥ 75 % (NTS N.° 213-MINSA/DGIESP-2024) y el último valor de hemoglobina (`/hemoglobin-evolution`). | Visibilizar la meta clínica y la racha en el flujo diario reduce la fricción cognitiva y motiva al cuidador a confirmar la toma diaria de sulfato ferroso. | Cap. I (Lean UX), Cap. III (`EP-01`–`EP-10`), Cap. VI (`6.3.3`, `MOB-01`–`MOB-06`) |
| ID-02 | Incorporar porcentajes explícitos, etiqueta `"Sin datos"` en `/heatmap` y alertas preventivas ante valores atípicos de edad o hemoglobina en *FerovaClinic* (`/hemoglobin-control`, `/risk-overview`). | Sin lectura numérica directa ni validaciones de entrada en tiempo real, el personal de salud demora más en detectar pacientes de alto riesgo o comete errores de registro clínico. | Cap. V (*FerovaClinic*), Cap. VI (`6.3.3` sev. máx. 4; `6.4.2` `WEB-01`–`WEB-08`) |
| ID-03 | Añadir una leyenda de disponibilidad en el calendario de citas de *FerovaFamily* y una guía contextual de asignación de enfermera/horario. | La indecisión reportada al reservar citas responde a falta de claridad sobre horarios y asignación de personal, más que a desinterés en el control médico. | Cap. VI (`6.3.2` entrevista a Alessandro Daniel Bravo Castillo; `6.4.2` `MOB-01`–`MOB-06`) |
| ID-04 | Incluir cifras citadas del INS/MINSA y botones *CTA* diferenciados por rol (*FerovaFamily* y *FerovaClinic*) en la Landing Page. | Respaldar la propuesta con fuentes sanitarias oficiales y separar los accesos por segmento incrementa la confianza y evita redirecciones erróneas. | Cap. I (Segmentos 1 y 2), Cap. V (Landing Page), Cap. VI (`6.4.2` `LP-01`–`LP-06`) |

**Claims (Afirmaciones)** — declaraciones hechas sobre el producto por stakeholders o usuarios.

| ID | Afirmación | Quién la formuló | Origen |
|----|------------|------------------|--------|
| CL-01 | La trazabilidad de confirmación de dosis, el mapa de postas cercanas y el chat con enfermería resultan útiles para organizar el seguimiento diario. | Alessandro Daniel Bravo Castillo (cuidador — Segmento 1) | Entrevista de validación, Cap. VI (`6.3.2`, 13/11/2026) |
| CL-02 | Al momento de reservar una cita médica desde la aplicación móvil surge indecisión personal para escoger doctor y horario disponible. | Alessandro Daniel Bravo Castillo (cuidador — Segmento 1) | Entrevista de validación, Cap. VI (`6.3.2`, 13/11/2026) |
| CL-03 | Las soluciones existentes orientadas solo a alarmas de medicamentos (*Medisafe*, *MyTherapy*) o información estática (*App ALMA MINSA*) no integran seguimiento de la adherencia y monitoreo clínico continuo. | Equipo SANUVI (análisis competitivo) | Cap. I (Lean UX) y Cap. II (Matriz CAME) |
| CL-04 | El seguimiento manual en establecimientos de salud dificulta detectar oportunamente abandonos de tratamiento y controles de hemoglobina atrasados. | Gladys Echegaray (68 años) y Dr. Hugo Rojas (72 años) — Segmento 2 | Entrevistas iniciales, Cap. II |

**Assumptions (Suposiciones)** — creencias preexistentes sobre la audiencia o el producto que deben ser probadas mediante experimentación.

| ID | Suposición | Base de la creencia | Riesgo si es falsa |
|----|------------|---------------------|--------------------|
| AS-01 | Mostrar la racha activa, el progreso hacia ≥ 75 % y la última hemoglobina en el inicio de *FerovaFamily* aumenta la tasa diaria de confirmación de dosis frente a la vista simple actual. | *Feature Assumptions* (Cap. I) y entrevistas iniciales a Milagros, Paola y Alessandro (Cap. II). | Sobrecarga visual en móvil sin impacto real en la adherencia semanal ni cumplimiento de la NTS N.° 213-MINSA/DGIESP-2024. |
| AS-02 | La codificación cromática del mapa de calor (`/heatmap`) y los campos actuales de hemoglobina en *FerovaClinic* permiten al personal de salud identificar riesgo y registrar controles sin ambigüedades. | Diseño base de *FerovaClinic* en los Capítulos IV y V. | Errores de interpretación entre `"Sin datos"` y baja adherencia, retrasos en triaje y errores de digitación clínica (Cap. VI `6.3.3` sev. 4). |
| AS-03 | Los puntos y medallas del módulo de logros (`/achievement`) sostienen por sí solos la retención semanal de los cuidadores después de las dos primeras semanas de uso. | *Business y User Outcomes* de Lean UX (Cap. I) e historias de gamificación (Cap. III). | Abandono abrupto tras la fase inicial de novedad si no se percibe valor clínico directo ni acompañamiento del personal de salud. |
| AS-04 | Mostrar una leyenda visual de disponibilidad y guía de enfermera en el calendario reduce la duda al reservar citas en *FerovaFamily* y mejora la finalización de reservas. | Evidencia cualitativa de Alessandro Daniel Bravo Castillo en `6.3.2` y hallazgos `MOB-01`–`MOB-06`. | Deserción en el flujo de citas y sobrecarga operativa del chat de enfermería para coordinar horarios manualmente. |

**Knowledge Gaps (Brechas de conocimiento)** — áreas donde el equipo reconoce que carece de información.

| ID | Brecha de conocimiento | Por qué importa |
|----|------------------------|-----------------|
| KG-01 | En qué puntos exactos del flujo clínico de *FerovaClinic* (registro del paciente, control de hemoglobina o actualización del esquema) enfrenta mayores cuellos de botella el personal de salud, al estar pendientes las entrevistas de validación del Segmento 2 (`6.3.2`). | Sin evidencia directa del Segmento 2 (*Carlos Rojas*), el equipo no conoce las causas operativas reales detrás de los 10 hallazgos heurísticos ni cómo priorizar mejoras clínicas. |
| KG-02 | En qué franjas del día y por qué motivos reales (olvido, malestar gástrico del suplemento, desabastecimiento o carga laboral/doméstica) se omiten dosis diarias de sulfato ferroso. | Permite diseñar intervenciones basadas en evidencia real de adherencia y no asumir que todo incumplimiento se resuelve con más notificaciones. |

### 8.1.3. Experiment-Ready Questions

Para transformar el material bruto de `8.1.2` en preguntas investigables, el equipo aplicó la técnica **5W+H** (*What, Who, When, Where, Why, How*): en preguntas **Belief-led** permitió explicitar premisas ocultas detrás de cada suposición antes de formular hipótesis, mientras que en preguntas **Exploratorias** acotó quién, cuándo, dónde y cómo observar fenómenos sin supuestos previos.

| ID | Pregunta | Tipo (Belief-led / Exploratoria) | Material bruto de origen | Premisa oculta descubierta (5W1H) |
|----|----------|----------------------------------|--------------------------|-----------------------------------|
| Q-01 | ¿Mostrar en el inicio de *FerovaFamily* la racha diaria, el avance porcentual hacia ≥ 75 % y la última hemoglobina incrementa la tasa diaria de confirmación de dosis y la adherencia semanal frente a la pantalla actual? | Belief-led | ID-01, CL-01, AS-01 | *Who / What / Why / How:* Se asume que las madres/cuidadores comprenden de inmediato el umbral clínico ≥ 75 % y que ver su progreso continuo modifica el hábito diario sin generar sobrecarga visual (`MOB-01`–`MOB-06`). |
| Q-02 | ¿Incorporar porcentajes explícitos, etiqueta `"Sin datos"` en `/heatmap` y alertas por valores atípicos de edad/hemoglobina en *FerovaClinic* reduce el tiempo de identificación de pacientes de alto riesgo y la tasa de error en el control clínico frente a la vista actual? | Belief-led | ID-02, CL-04, AS-02 | *Who / What / Where / How:* Se asume que el personal de salud confunde casillas vacías con baja adherencia cuando falta texto explícito y que las alertas de rango previenen errores de digitación sin frenar la consulta (`6.3.3` sev. 4; `WEB-01`–`WEB-08`). |
| Q-03 | ¿Presentar cifras citadas de INS/MINSA y botones *CTA* diferenciados por rol (*FerovaFamily* vs. *FerovaClinic*) en la Landing Page incrementa la tasa de clics (*CTR*) y la redirección correcta según el segmento? | Belief-led | ID-04, CL-03 | *Who / Why / Where / How:* Se asume que cuidadores y profesionales desconfían de datos sin fuente oficial y se confunden sobre qué enlace seguir cuando los llamados a la acción no separan ambos roles (`LP-01`–`LP-06`). |
| Q-05 | ¿Incluir una leyenda visual de disponibilidad en el calendario y una guía breve de asignación de enfermera/horario en *FerovaFamily* disminuye la indecisión percibida y aumenta la tasa de finalización al reservar citas? | Belief-led | ID-03, CL-02, AS-04 | *When / Where / Why / How:* Se asume que la indecisión reportada por Alessandro Daniel Bravo Castillo (`6.3.2`) al elegir doctor y horario se debe a falta de contexto visual en el calendario y no a restricciones externas de horario del centro de salud. |
| Q-06 | ¿En qué franjas del día y por qué motivos reales del entorno familiar omiten los cuidadores las dosis diarias de sulfato ferroso durante el tratamiento? | Exploratoria | KG-02, AS-01 | *When / Why / Who:* Enmarque exploratorio para descubrir si la omisión obedece a olvido por horario, intolerancia digestiva del menor, falta de suplemento o dinámicas laborales antes de intervenir con más recordatorios. |
| Q-07 | ¿Dónde se concentran los principales cuellos de botella operativos que enfrenta el personal de salud al ejecutar de extremo a extremo el registro de paciente, control de hemoglobina y seguimiento en *FerovaClinic*? | Exploratoria | CL-04, AS-02, KG-02 | *Who / Where / How:* Enmarque exploratorio necesario tras estar pendientes las entrevistas de validación del Segmento 2 (`6.3.2`), para identificar qué vistas o pasos concretos concentran la fricción clínica. |
| Q-08 | ¿Los puntos y medallas de gamificación en `/achievement` logran por sí solos sostener la retención semanal de las madres/cuidadores más allá de las dos primeras semanas de uso? | Belief-led | ID-01, AS-03 | *When / Why / Who:* Se asume que los incentivos lúdicos mantienen el compromiso familiar tras la semana 2 de tratamiento, incluso sin intervención directa o refuerzo clínico de enfermería. |

### 8.1.4. Question Backlog

**Estructura del backlog:** [x] Broad · [ ] Deep — **Justificación:** Ferova se encuentra en una etapa inicial de validación empírica con incertidumbre distribuida en sus cuatro componentes y en ambos segmentos de usuarios (adherencia diaria y seguimiento del tratamiento en *FerovaFamily*, interpretación clínica y validaciones en *FerovaClinic*, y confianza/enrutamiento en la *Landing Page*). Una estructura **Broad** permite reducir simultáneamente los riesgos más altos en todo el ecosistema antes de profundizar (*Deep*) en un único flujo en ciclos posteriores.

**Criterio de puntuación:** cada dimensión se califica de **1 a 5**. En **Confianza**, un puntaje bajo representa mayor desconocimiento y suma más prioridad mediante `(6 − Confianza)`. La fórmula aplicada es `Puntaje total = (6 − Confianza) + Riesgo + Impacto + Interés`. Las **3 primeras preguntas** (`Q-01`, `Q-02` y `Q-03`) pasan directamente a formalización mediante *Experiment Cards* en la sección `8.1.5`.

| Prioridad | ID | Pregunta | Why (motivación) | Confianza (1-5) | Riesgo (1-5) | Impacto (1-5) | Interés (1-5) | Puntaje total |
|-----------|----|----------|------------------|-----------------|--------------|---------------|---------------|---------------|
| 1 | Q-01 | ¿Mostrar en el inicio de *FerovaFamily* la racha diaria, el avance porcentual hacia ≥ 75 % y la última hemoglobina incrementa la tasa diaria de confirmación de dosis y la adherencia semanal frente a la pantalla actual? | Valida la propuesta de valor central de Ferova sobre cumplimiento de la NTS N.° 213-MINSA/DGIESP-2024 (≥ 75 %) en madres/cuidadores antes de ampliar funciones móviles. | 2 | 5 | 5 | 5 | 19 |
| 2 | Q-02 | ¿Incorporar porcentajes explícitos, etiqueta `"Sin datos"` en `/heatmap` y alertas por valores atípicos de edad/hemoglobina en *FerovaClinic* reduce el tiempo de identificación de pacientes de alto riesgo y la tasa de error en el control clínico frente a la vista actual? | Mitiga el riesgo clínico y los hallazgos de severidad 4 en *FerovaClinic* (`6.3.3`, `WEB-01`–`WEB-08`), evitando errores de triaje y de registro asistencial. | 2 | 5 | 5 | 4 | 18 |
| 3 | Q-03 | ¿Presentar cifras citadas de INS/MINSA y botones *CTA* diferenciados por rol (*FerovaFamily* vs. *FerovaClinic*) en la Landing Page incrementa la tasa de clics (*CTR*) y la redirección correcta según el segmento? | Ataca los hallazgos `LP-01`–`LP-06` de la puerta de entrada del producto para validar credibilidad sanitaria y evitar abandono o ingreso al portal incorrecto. | 2 | 4 | 4 | 4 | 16 |
| 4 | Q-05 | ¿Incluir una leyenda visual de disponibilidad en el calendario y una guía breve de asignación de enfermera/horario en *FerovaFamily* disminuye la indecisión percibida y aumenta la tasa de finalización al reservar citas? | Responde directamente al hallazgo de validación de Alessandro Daniel Bravo Castillo (`6.3.2`) para destrabar el flujo de reserva de citas médicas. | 3 | 4 | 4 | 4 | 15 |
| 5 | Q-07 | ¿Dónde se concentran los principales cuellos de botella operativos que enfrenta el personal de salud al ejecutar de extremo a extremo el registro de paciente, control de hemoglobina y seguimiento en *FerovaClinic*? | Compensa la ausencia de entrevistas de validación ejecutadas en el Segmento 2 (`6.3.2`, `KG-01`) identificando fricciones reales del flujo clínico. | 2 | 3 | 4 | 3 | 14 |
| 6 | Q-06 | ¿En qué franjas del día y por qué motivos reales del entorno familiar omiten los cuidadores las dosis diarias de sulfato ferroso durante el tratamiento? | Aporta evidencia contextual sobre la causa raíz de olvidos u omisiones (`KG-02`) antes de proponer nuevas reglas de notificación. | 1 | 2 | 3 | 3 | 13 |
| 7 | Q-08 | ¿Los puntos y medallas de gamificación en `/achievement` logran por sí solos sostener la retención semanal de las madres/cuidadores más allá de las dos primeras semanas de uso? | Verifica si la gamificación genera retención sostenible tras la novedad inicial (`AS-03`) o requiere refuerzo clínico de enfermería. | 3 | 3 | 3 | 3 | 12 |

### 8.1.5. Experiment Cards

A continuación se documentan las **3 Experiment Cards (`EC-01` a `EC-03`)** correspondientes a las preguntas priorizadas del backlog (`8.1.4`), alineadas con el principio *Simplest, Useful Thing* y con los identificadores de métricas `M-01` a `M-08` que se formalizan en la sección **8.2.2 Domain Business Metrics**.

#### Experiment Card EC-01

*Lado frontal*

| Campo | Contenido |
|-------|-----------|
| Question | `Q-01`: ¿Mostrar en el inicio de *FerovaFamily* la racha diaria, el avance porcentual hacia ≥ 75 % y la última hemoglobina incrementa la tasa diaria de confirmación de dosis y la adherencia semanal frente a la pantalla actual? |
| Why | Validar la propuesta de valor central de adherencia terapéutica alineada con la NTS N.° 213-MINSA/DGIESP-2024 (≥ 75 %) en cuidadores reales antes de ampliar funciones móviles (`ID-01`, `AS-01`). |
| Hypothesis (si aplica) | Las madres/cuidadores que visualizan en el inicio de *FerovaFamily* su racha activa, el avance porcentual hacia ≥ 75 % y el último registro de hemoglobina alcanzarán una mayor tasa diaria de confirmación de dosis (`M-01`) y una mayor tasa de adherencia adecuada semanal (`M-02`) frente a la vista actual sin dichos indicadores. |
| What — Simplest Useful Thing | Tarjeta resumen liviana en el inicio de *FerovaFamily* consumiendo los endpoints existentes (`/today-dose`, `/achievement`, `/hemoglobin-evolution`) para mostrar únicamente días de racha activa, porcentaje hacia la meta del 75 % y última hemoglobina registrada. |

*Lado posterior*

| Campo | Contenido |
|-------|-----------|
| Measures | `M-01` (*Daily Dose Confirmation Rate*, métrica primaria) y `M-02` (*Weekly Adequate Adherence Rate ≥ 75 %*, métrica secundaria) — definidas en `8.2.2`. |
| Conditions | Experimental: *FerovaFamily* con tarjeta resumen visible en el inicio (racha activa, avance hacia 75 % y última hemoglobina) · Control: versión actual de *FerovaFamily* con registro estándar de dosis diaria sin tarjeta de progreso ni hemoglobina en el inicio. |
| Scale | 20 madres/cuidadores del Segmento 1 (*María López*), asignados equitativamente (10 Experimental / 10 Control), durante 14 días continuos. |

#### Experiment Card EC-02

*Lado frontal*

| Campo | Contenido |
|-------|-----------|
| Question | `Q-02`: ¿Incorporar porcentajes explícitos, etiqueta `"Sin datos"` en `/heatmap` y alertas por valores atípicos de edad/hemoglobina en *FerovaClinic* reduce el tiempo de identificación de pacientes de alto riesgo y la tasa de error en el control clínico frente a la vista actual? |
| Why | Mitigar el riesgo clínico y los hallazgos heurísticos de severidad máxima 4 y de auditoría UX (`6.3.3`, `WEB-01`–`WEB-08`) en *FerovaClinic*, evitando demoras en triaje y errores de registro asistencial (`ID-02`, `AS-02`). |
| Hypothesis (si aplica) | El personal/evaluadores clínicos que trabajen sobre *FerovaClinic* con porcentajes explícitos, etiqueta `"Sin datos"` en `/heatmap` y alertas no bloqueantes ante valores atípicos de edad o hemoglobina reducirán el tiempo para identificar pacientes de alto riesgo (`M-03`) y la tasa de error al ingresar controles clínicos (`M-04`) frente a la vista actual. |
| What — Simplest Useful Thing | Versión experimental acotada sobre `/heatmap`, `/risk-overview` y `/hemoglobin-control` en *FerovaClinic* añadiendo etiquetas numéricas `%` / `"Sin datos"` en las celdas del mapa de calor y advertencias visuales inmediatas ante rangos clínicos atípicos de edad o hemoglobina. |

*Lado posterior*

| Campo | Contenido |
|-------|-----------|
| Measures | `M-03` (*High-Risk Patient Identification Time*, métrica co-primaria) y `M-04` (*Clinical Control Entry Error Rate*, métrica co-primaria) — definidas en `8.2.2`. |
| Conditions | Experimental: *FerovaClinic* con porcentajes explícitos, etiqueta `"Sin datos"` en `/heatmap` y alertas preventivas por valores atípicos en `/hemoglobin-control` · Control: versión actual de *FerovaClinic* con codificación únicamente por color y formulario sin alertas de rango atípico. |
| Scale | 12 evaluadores de salud/clínicos del Segmento 2 (*Carlos Rojas*), divididos en 6 Experimental / 6 Control, realizando 5 tareas clínicas estandarizadas cada uno en un periodo de 7 días. |

#### Experiment Card EC-03

*Lado frontal*

| Campo | Contenido |
|-------|-----------|
| Question | `Q-03`: ¿Presentar cifras citadas de INS/MINSA y botones *CTA* diferenciados por rol (*FerovaFamily* vs. *FerovaClinic*) en la Landing Page incrementa la tasa de clics (*CTR*) y la redirección correcta según el segmento? |
| Why | Atender los hallazgos `LP-01`–`LP-06` (Cap. VI `6.4.2`) en la puerta de entrada pública de Ferova para validar credibilidad institucional y evitar que madres y personal de salud ingresen al portal incorrecto (`ID-04`, `CL-03`). |
| Hypothesis (si aplica) | Los visitantes que acceden a la Landing Page con cifras epidemiológicas citadas del INS/MINSA y botones *CTA* diferenciados por rol obtendrán un mayor *CTR* en los llamados a la acción (`M-07`) y una mayor tasa de redirección correcta según su segmento (`M-08`) en comparación con la Landing Page actual. |
| What — Simplest Useful Thing | Variante B ligera de la sección principal de la Landing Page desplegada en GitHub Pages, incorporando únicamente las fuentes oficiales citadas (INS/MINSA) y dos *CTAs* explícitos por segmento (*FerovaFamily* vs. *FerovaClinic*) con medición de clics. |

*Lado posterior*

| Campo | Contenido |
|-------|-----------|
| Measures | `M-07` (*Landing Page CTA Click-Through Rate — CTR*, métrica primaria) y `M-08` (*Role-Specific Access Redirection Rate*, métrica secundaria) — definidas en `8.2.2`. |
| Conditions | Experimental (Variante B): Landing Page con cifras citadas de INS/MINSA y *CTAs* diferenciados por rol · Control (Variante A): Landing Page actual sin respaldo estadístico citado ni diferenciación explícita de rol en el llamado a la acción. |
| Scale | Mínimo 100 sesiones únicas distribuidas al 50/50 entre Variante A (Control) y Variante B (Experimental), durante 10 días. |

## 8.2. Experiment Design

### 8.2.1. Hypotheses

En esta fase se transforman las premisas identificadas durante la planificación experimental en declaraciones específicas, comprobables y medibles. Siguiendo el método científico aplicado al desarrollo de software, cada experimento presenta una **Hipótesis de Trabajo (H1)**, que plantea el resultado esperado al implementar una mejora, y una **Hipótesis Nula (H0)**, que establece que dicha intervención no generará cambios significativos en los resultados observados.

**Experimento 01: Impacto de los Indicadores de Progreso en la Adherencia Terapéutica**

- **Hipótesis de Trabajo (H1):** Creemos que mostrar una tarjeta resumen en la pantalla principal de FerovaFamily, que incluya la racha activa, el avance porcentual hacia la meta de adherencia del 75 % y el último valor de hemoglobina registrado, permitirá incrementar la participación de las madres y cuidadores en el seguimiento del tratamiento. Esta mejora se evidenciará mediante un aumento en la tasa diaria de confirmación de dosis (M-01) y en la tasa de adherencia semanal adecuada igual o superior al 75 % (M-02), en comparación con la versión actual de la aplicación, bajo condiciones de uso durante 14 días por parte de 20 madres/cuidadores distribuidos en dos grupos: experimental y control.

- **Hipótesis Nula (H0):** La incorporación de la tarjeta resumen con indicadores de progreso en FerovaFamily no producirá diferencias significativas en la tasa diaria de confirmación de dosis (M-01) ni en la tasa de adherencia semanal adecuada (M-02). Los resultados observados se mantendrán similares a los obtenidos con la versión actual de la aplicación, sin que la intervención genere una mejora medible en el seguimiento del tratamiento.

**Experimento 02: Efectividad de las Mejoras Visuales y Alertas Preventivas en FerovaClinic**

- **Hipótesis de Trabajo (H1):** Creemos que incorporar porcentajes explícitos y la etiqueta "Sin datos" en el mapa de calor, junto con alertas preventivas ante valores atípicos de edad o hemoglobina, permitirá al personal de salud identificar con mayor rapidez a los pacientes de alto riesgo y reducir los errores durante el registro de controles clínicos. Esta mejora se evidenciará mediante una reducción del tiempo de identificación de pacientes de alto riesgo (M-03) y de la tasa de errores en el registro de controles clínicos (M-04), en comparación con la versión actual de FerovaClinic, bajo condiciones de evaluación con 12 participantes del segmento de personal de salud, quienes realizarán cinco tareas clínicas estandarizadas durante un periodo de siete días.

- **Hipótesis Nula (H0):** La incorporación de porcentajes explícitos, etiquetas de datos faltantes y alertas preventivas en FerovaClinic no producirá diferencias significativas en el tiempo de identificación de pacientes de alto riesgo (M-03) ni en la tasa de errores de registro clínico (M-04). El desempeño de los participantes se mantendrá similar al obtenido con la versión actual del portal, sin mejoras medibles atribuibles a los cambios implementados.

**Experimento 03: Influencia de la Información Sanitaria y los Accesos Diferenciados en la Landing Page**

- **Hipótesis de Trabajo (H1):** Creemos que incorporar cifras epidemiológicas respaldadas por fuentes oficiales del INS/MINSA y botones de acceso diferenciados para madres/cuidadores y personal de salud en la Landing Page incrementará la interacción de los visitantes y facilitará su ingreso al componente correspondiente según su segmento. Esta mejora se evidenciará mediante un aumento en la tasa de clics de los botones de acceso (M-07) y en la tasa de redirección correcta según el perfil del usuario (M-08), en comparación con la versión actual de la Landing Page, bajo condiciones de evaluación con un mínimo de 100 sesiones únicas distribuidas equitativamente entre la variante experimental y la variante de control durante 10 días.

- **Hipótesis Nula (H0):** La incorporación de cifras epidemiológicas oficiales y botones de acceso diferenciados por segmento en la Landing Page no producirá diferencias significativas en la tasa de clics de los botones de acceso (M-07) ni en la tasa de redirección correcta según el perfil del usuario (M-08). El comportamiento de los visitantes se mantendrá similar al registrado con la versión actual de la Landing Page, sin mejoras medibles atribuibles a la intervención.

### 8.2.2. Domain Business Metrics

El objetivo de esta sección es establecer métricas de negocio concretas, estandarizadas y medibles que permitan evaluar los resultados de los experimentos de Ferova. Cada métrica se encuentra vinculada directamente con las hipótesis planteadas en la sección 8.2.1 y con las medidas definidas en las *Experiment Cards* de la sección 8.1.5.

Estas métricas permitirán comparar los resultados obtenidos entre los grupos experimentales y de control, identificando si las mejoras propuestas generan cambios en la adherencia terapéutica, la eficiencia del seguimiento clínico y la interacción de los usuarios con la plataforma. De esta manera, se evita utilizar indicadores aislados que no contribuyan a la toma de decisiones del equipo SANUVI.

**1. Tasa de Confirmación Diaria de Dosis (Daily Dose Confirmation Rate - DDCR)**

- **Descripción:** Mide el porcentaje de dosis programadas que son confirmadas diariamente por las madres o cuidadores en FerovaFamily. Permite evaluar si la visualización de la racha activa, el progreso porcentual y el último registro de hemoglobina favorece el cumplimiento del tratamiento.
- **Fórmula de cálculo:**

  \[
  M\text{-}01 = \frac{\text{Dosis confirmadas}}{\text{Total de dosis programadas}} \times 100
  \]

- **Técnica de recolección:** Registro de las confirmaciones de dosis realizadas en FerovaFamily, mediante los datos almacenados por el backend y asociados a cada usuario durante el periodo experimental.
- **Meta deseada:** Obtener una tasa de confirmación diaria superior en el grupo experimental respecto al grupo de control durante los 14 días de evaluación.

**2. Tasa de Adherencia Semanal Adecuada (Weekly Adequate Adherence Rate - WAAR)**

- **Descripción:** Mide el porcentaje de madres o cuidadores que alcanzan una adherencia igual o superior al 75 % durante el periodo semanal de tratamiento, tomando como referencia la NTS N.° 213-MINSA/DGIESP-2024.
- **Fórmula de cálculo:**

  \[
  M\text{-}02 = \frac{\text{Cuidadores con adherencia semanal } \geq 75\%}{\text{Total de cuidadores evaluados}} \times 100
  \]

- **Técnica de recolección:** Análisis de los registros de dosis programadas y confirmadas en FerovaFamily, calculando el porcentaje de adherencia semanal de cada participante.
- **Meta deseada:** Incrementar la proporción de cuidadores que alcanzan una adherencia semanal igual o superior al 75 % en el grupo experimental respecto al grupo de control.

**3. Tiempo de Identificación de Pacientes de Alto Riesgo (High-Risk Patient Identification Time - HRPIT)**

- **Descripción:** Mide el tiempo que necesita el personal de salud para identificar correctamente a un paciente de alto riesgo utilizando FerovaClinic. Permite evaluar si los porcentajes explícitos y la etiqueta "Sin datos" en el mapa de calor facilitan la interpretación de la información clínica.
- **Fórmula de cálculo:**

  \[
  M\text{-}03 = \frac{\text{Suma de tiempos de identificación}}{\text{Total de tareas evaluadas}}
  \]

- **Técnica de recolección:** Pruebas de usabilidad con tareas clínicas estandarizadas, registrando el tiempo transcurrido desde el inicio de cada tarea hasta la identificación correcta del paciente de alto riesgo.
- **Meta deseada:** Reducir el tiempo promedio de identificación de pacientes de alto riesgo en el grupo experimental respecto al grupo de control.

**4. Tasa de Errores en el Registro de Controles Clínicos (Clinical Control Entry Error Rate - CCEER)**

- **Descripción:** Determina el porcentaje de errores cometidos durante el ingreso de controles clínicos en FerovaClinic, especialmente al registrar información relacionada con la edad y los valores de hemoglobina. Permite evaluar la utilidad de las alertas preventivas ante valores atípicos.
- **Fórmula de cálculo:**

  \[
  M\text{-}04 = \frac{\text{Registros con errores}}{\text{Total de registros realizados}} \times 100
  \]

- **Técnica de recolección:** Observación de las cinco tareas clínicas estandarizadas realizadas por cada participante, registrando los errores detectados durante el ingreso de controles de hemoglobina y otros datos clínicos evaluados.
- **Meta deseada:** Reducir la tasa de errores de registro clínico en el grupo experimental respecto al grupo de control.

**5. Tasa de Clics en los Botones de Acceso de la Landing Page (Landing Page CTA Click-Through Rate - CTR)**

- **Descripción:** Mide el porcentaje de sesiones únicas en las que los visitantes interactúan con alguno de los botones de acceso (*Call to Action* o CTA) de la Landing Page. Permite evaluar si la incorporación de cifras epidemiológicas respaldadas por fuentes oficiales del INS/MINSA y la diferenciación de accesos por segmento incrementan la interacción de los visitantes.
- **Fórmula de cálculo:**

  \[
  M\text{-}07 = \frac{\text{Sesiones únicas con al menos un clic en CTA}}{\text{Total de sesiones únicas}} \times 100
  \]

- **Técnica de recolección:** Registro de eventos de clic en los botones CTA de la Landing Page, diferenciando los accesos dirigidos a FerovaFamily y FerovaClinic durante la comparación entre la variante experimental y la variante de control.
- **Meta deseada:** Obtener una tasa de clics superior en la variante experimental respecto a la variante de control durante los 10 días de evaluación.

**6. Tasa de Redirección Correcta según el Segmento de Usuario (Role-Specific Access Redirection Rate - RSARR)**

- **Descripción:** Mide el porcentaje de visitantes que, después de seleccionar un botón de acceso en la Landing Page, son dirigidos correctamente al componente correspondiente a su segmento: FerovaFamily para madres/cuidadores y FerovaClinic para personal de salud.
- **Fórmula de cálculo:**

  \[
  M\text{-}08 = \frac{\text{Redirecciones correctas según el segmento}}{\text{Total de redirecciones realizadas}} \times 100
  \]

- **Técnica de recolección:** Registro de los clics en los botones CTA y verificación de las URL de destino, identificando si cada visitante accede al componente correspondiente al perfil seleccionado.
- **Meta deseada:** Incrementar la tasa de redirección correcta en la variante experimental respecto a la variante de control durante el periodo de evaluación.
### 8.2.3. Measures

> Criterios seleccionados para recopilar la evidencia que responderá la pregunta principal y detectará evidencia secundaria. Se usan **solo las medidas necesarias durante el tiempo justo**, para minimizar costos y riesgos.

| Experiment Card | Medida primaria | Medidas secundarias | Guardrail metrics | Ventana de medición |
|-----------------|-----------------|---------------------|-------------------|---------------------|
| EC-01 | [M-0x] | [M-0y, M-0z] | [M-0w] | [días] |

<!-- COMPLETAR -->

### 8.2.4. Conditions

> Para preguntas **belief-led**: condición **experimental** (busca evidencia a favor de la hipótesis alternativa) y condición de **control** (opera bajo la suposición de que la hipótesis nula es correcta). Para preguntas **exploratorias**: límites y características específicas del grupo a estudiar.

| Experiment Card | Condición de control | Condición experimental | Criterios de inclusión / exclusión | Asignación |
|-----------------|----------------------|------------------------|------------------------------------|------------|
| EC-01 | [Descripción] | [Descripción] | [Criterios] | [Aleatoria / por cohorte] |

<!-- COMPLETAR -->

### 8.2.5. Scale Calculations and Decisions

> La escala se basa en la **Certeza** (probabilidad de error aceptable) y la **Precisión** (granularidad del cambio a detectar). La certeza se define con el **Poder Estadístico** (evita errores Tipo II) y el **Nivel de Significación** (previene errores Tipo I); la precisión se representa con el **Efecto Mínimo Detectable (MDE)**.

| Experiment Card | Baseline | MDE | Nivel de significación (α) | Poder estadístico (1-β) | Tamaño de muestra por condición | Duración estimada |
|-----------------|----------|-----|----------------------------|-------------------------|--------------------------------|-------------------|
| EC-01 | [valor] | [%] | 0.05 | [0.80 – 0.95] | [n] | [días] |

**Cálculo y justificación**

<!-- COMPLETAR: mostrar el cálculo del tamaño de muestra, la herramienta utilizada y por qué los datos son representativos del grupo de interés -->

### 8.2.6. Methods Selection

> El método debe ser el **Simplest Useful Thing** para alcanzar el tamaño de muestra y las condiciones necesarias. Se distingue el **objeto de investigación** (la pregunta o hipótesis) del **método** (la técnica, por ejemplo una prueba A/B). No se ejecutan simultáneamente dos o más experimentos sobre el mismo tema que puedan exponer a un solo usuario a ambos, y se considera la ética de **no causar daño**.

| Experiment Card | Objeto de investigación | Método seleccionado | Justificación (Simplest Useful Thing) | Riesgo de solapamiento | Consideración ética |
|-----------------|-------------------------|---------------------|---------------------------------------|------------------------|---------------------|
| EC-01 | [Pregunta / hipótesis] | [A/B test, fake door, usability test, …] | [Justificación] | [Cómo se evita] | [Cómo se evita el daño] |

**Calendario de experimentos (evita solapamiento)**

| Experimento | Inicio | Fin | Segmento expuesto |
|-------------|--------|-----|-------------------|
| EC-01 | [fecha] | [fecha] | [segmento] |

<!-- COMPLETAR -->

### 8.2.7. Data Analytics: Goals, KPIs and Metrics Selection

> Preparación analítica basada en la selección de medidas, asegurando **economía en el rastreo de datos** y que las métricas elegidas permitan detectar diferencias o cambios precisos.

| Goal | KPI | Métrica (ID de 8.2.2) | Dimensión de análisis | Herramienta |
|------|-----|------------------------|-----------------------|-------------|
| [Goal] | [KPI] | [M-0x] | [segmento / plataforma] | [Herramienta] |

<!-- COMPLETAR -->

### 8.2.8. Web and Mobile Tracking Plan

> Plan de instrumentación de los componentes de recolección de datos en los productos que forman parte del alcance del experimento.

| Evento | Plataforma (Web / Mobile) | Trigger | Propiedades | Métrica que alimenta | Responsable |
|--------|---------------------------|---------|-------------|----------------------|-------------|
| `[event_name]` | [Web / Mobile] | [Cuándo se dispara] | [prop1, prop2] | [M-0x] | [Nombre] |

**Consideraciones de privacidad y consentimiento**

<!-- COMPLETAR -->

## 8.3. Experimentation

### 8.3.1. To-Be User Stories

| ID | Título | Descripción | Criterios de Aceptación | Epic ID | Experiment Card |
|----|--------|-------------|--------------------------|---------|-----------------|
| US-TB01 | [Título] | **Como** … **quiero** … **para** … | **Dado que** … **Cuando** … **Entonces** … | EP0x | EC-01 |

<!-- COMPLETAR -->

### 8.3.2. To-Be Product Backlog

| # Orden | User Story ID | Título | Descripción | Story Points |
|---------|---------------|--------|-------------|--------------|
| 1 | US-TB01 | [Título] | **Como** … **quiero** … **para** … | [SP] |

<!-- COMPLETAR -->

### 8.3.3. Pipeline-supported, Experiment-Driven To-Be Software Platform Lifecycle

> Ejecución de los experimentos aplicando el pipeline implementado en el Capítulo VII, incorporando los componentes de recolección de datos definidos en 8.2.8.

#### 8.3.3.1. To-Be Sprint Backlogs

**Sprint n**

| Campo | Valor |
|-------|-------|
| Date | [YYYY-MM-DD] |
| Sprint n Goal | [Objetivo, vinculado a un Experiment Card] |
| Sprint n Velocity | [Story Points] |
| Sum of Story Points | [Story Points] |

| User Story ID | Title | Task ID | Task Title | Description | Estimation (h) | Assigned To | Status |
|---------------|-------|---------|------------|-------------|----------------|-------------|--------|
| US-TB01 | [Título] | T01 | [Título] | [Descripción] | [h] | [Nombre] | Done |

<!-- COMPLETAR -->

#### 8.3.3.2. Implemented To-Be Landing Page Evidence

<!-- COMPLETAR -->

#### 8.3.3.3. Implemented To-Be Frontend-Web Application Evidence

<!-- COMPLETAR -->

#### 8.3.3.4. Implemented To-Be Native-Mobile Application Evidence

<!-- COMPLETAR -->

#### 8.3.3.5. Implemented To-Be RESTful API and/or Serverless Backend Evidence

<!-- COMPLETAR -->

#### 8.3.3.6. Team Collaboration Insights

<img src="../assets/img/chapter-VIII/collaboration-insights.png" alt="Team Collaboration Insights">


## 8.4. Experiment Aftermath & Analysis

### 8.4.1. Analysis and Interpretation of Results

> Resultados observados por experimento, contraste con la hipótesis nula, significancia alcanzada y decisión de producto (persevere / pivot / abandon).

| Experiment Card | Medida | Control | Experimental | Diferencia | p-value | ¿Se rechaza H₀? | Decisión |
|-----------------|--------|---------|--------------|------------|---------|-----------------|----------|
| EC-01 | [M-0x] | [valor] | [valor] | [Δ] | [p] | [Sí / No] | [Decisión] |

<img src="../assets/img/chapter-VIII/results-analysis.png" alt="Análisis de resultados">

**Interpretación y aprendizajes**

<!-- COMPLETAR -->

### 8.4.2. Re-scored and Re-prioritized Question Backlog

> Backlog de preguntas re-puntuado tras la evidencia obtenida, incluyendo nuevas preguntas surgidas de los experimentos.

| Prioridad | ID | Pregunta | Confianza | Riesgo | Impacto | Interés | Puntaje | Cambio vs. 8.1.4 | Motivo del cambio |
|-----------|----|----------|-----------|--------|---------|---------|---------|-------------------|-------------------|
| 1 | Q-0x | [Pregunta] | | | | | | [↑ / ↓ / nueva] | [Motivo] |

<!-- COMPLETAR -->

## 8.5. Continuous Learning

### 8.5.1. Shareback Session Artifacts: Learning Workflow

> Artefactos de la sesión de shareback: agenda, participantes, hallazgos compartidos, decisiones tomadas y flujo de aprendizaje del equipo.

| Campo | Dato |
|-------|------|
| Fecha | [DD/MM/AAAA] |
| Participantes | [Nombres] |
| Experimentos revisados | [EC-01, EC-02] |
| Decisiones tomadas | [Decisiones] |

<img src="../assets/img/chapter-VIII/shareback-session.png" alt="Shareback Session">

**Learning Workflow**

<!-- COMPLETAR -->

## 8.6. To-Be Software Platform Pre-launch

### 8.6.1. About-the-Product Intro Video

| Campo | Dato |
|-------|------|
| Enlace del video | [URL de Microsoft Stream] |
| Duración | [mm:ss] |

<img src="../assets/img/chapter-VIII/about-the-product-intro.png" alt="Captura del video intro">

### 8.6.2. Resumen usando Gees Framework

> Resumen del ciclo experimental aplicando el **Gees Framework**.

<!-- COMPLETAR -->
