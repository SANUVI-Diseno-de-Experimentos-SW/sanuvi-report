# Capítulo VIII: Experiment-Driven Development

## 8.1. Experiment Planning

> Esta fase toma material bruto (ideas, suposiciones, afirmaciones) para descubrir las premisas subyacentes, preparar preguntas listas para el experimento, establecer la motivación para buscar una respuesta y organizar un backlog priorizado de preguntas.

### 8.1.1. As-Is Summary

> Recolección inicial del material bruto que constituye el punto de partida del trabajo, enfocada en **generar preguntas**, no en generar soluciones. Resume el estado actual de la plataforma Ferova al cierre del Capítulo V.

<!-- COMPLETAR -->

### 8.1.2. Raw Material: Assumptions, Knowledge Gaps, Ideas, Claims

**Ideas** — propuestas para resolver un problema o alcanzar un objetivo. El equipo prueba las premisas subyacentes a la idea, no la idea en sí.

| ID | Idea | Premisa subyacente | Origen |
|----|------|--------------------|--------|
| ID-01 | [Idea] | [Premisa] | [Origen] |

**Claims (Afirmaciones)** — declaraciones hechas sobre el producto por stakeholders o usuarios.

| ID | Afirmación | Quién la formuló | Origen |
|----|------------|------------------|--------|
| CL-01 | [Afirmación] | [Stakeholder / usuario] | [Entrevista, review, etc.] |

**Assumptions (Suposiciones)** — creencias preexistentes sobre la audiencia o el producto que deben ser probadas mediante experimentación.

| ID | Suposición | Base de la creencia | Riesgo si es falsa |
|----|------------|---------------------|--------------------|
| AS-01 | [Suposición] | [Base] | [Riesgo] |

**Knowledge Gaps (Brechas de conocimiento)** — áreas donde el equipo reconoce que carece de información.

| ID | Brecha de conocimiento | Por qué importa |
|----|------------------------|-----------------|
| KG-01 | [Brecha] | [Motivo] |

<!-- COMPLETAR -->

### 8.1.3. Experiment-Ready Questions

> Dos tipos: **Belief-led** (prueban una creencia o premisa) y **Exploratorias** (recopilan conocimiento donde no hay creencias previas). Se aplica la técnica de las *Cinco W's y una H* para descubrir premisas ocultas o crear nuevas preguntas exploratorias.

| ID | Pregunta | Tipo (Belief-led / Exploratoria) | Material bruto de origen | Premisa oculta descubierta (5W1H) |
|----|----------|----------------------------------|--------------------------|-----------------------------------|
| Q-01 | [Pregunta] | [Tipo] | [AS-01 / CL-01 / …] | [Premisa] |

<!-- COMPLETAR -->

### 8.1.4. Question Backlog

> Lista **priorizada de preguntas** para la investigación, no de características o soluciones. Cada pregunta captura su motivación ("por qué") y se puntúa según **Confianza, Riesgo, Impacto e Interés**. En caso de empate, se prioriza la pregunta con **mayor Riesgo**.

**Estructura del backlog:** [ ] Broad · [ ] Deep — *justificar la elección.*

| Prioridad | ID | Pregunta | Why (motivación) | Confianza (1-5) | Riesgo (1-5) | Impacto (1-5) | Interés (1-5) | Puntaje total |
|-----------|----|----------|------------------|-----------------|--------------|---------------|---------------|---------------|
| 1 | Q-01 | [Pregunta] | [Motivación] | | | | | |

<!-- COMPLETAR -->

### 8.1.5. Experiment Cards

> Artefacto clave que sustenta el proceso XDPD. Solo puede referenciar métricas definidas en la sección **8.2.2 Domain Business Metrics**.

**Experiment Card EC-01**

*Lado frontal*

| Campo | Contenido |
|-------|-----------|
| Question | [Pregunta del backlog] |
| Why | [Motivación] |
| Hypothesis (si aplica) | [Hipótesis de trabajo] |
| What — Simplest Useful Thing | [La cosa más simple y útil a construir/hacer] |

*Lado posterior*

| Campo | Contenido |
|-------|-----------|
| Measures | [Métricas de 8.2.2 referenciadas] |
| Conditions | Experimental: [descripción] · Control: [descripción] |
| Scale | [Tamaño de muestra, duración] |

<!-- COMPLETAR: repetir por cada experimento -->

## 8.2. Experiment Design

### 8.2.1. Hypotheses

> Cada hipótesis debe ser **falsificable, testeable y medible**, y emparejarse con una **Hipótesis Nula**. Las hipótesis se **prueban** (tested), no se "validan" ni se demuestran verdaderas.

| ID | Experiment Card | Hipótesis de trabajo (H₁) | Hipótesis nula (H₀) | Medidas esperadas |
|----|-----------------|---------------------------|---------------------|-------------------|
| H-01 | EC-01 | [Si … entonces …] | [No habrá diferencia …] | [Métrica y magnitud esperada] |

<!-- COMPLETAR -->

### 8.2.2. Domain Business Metrics

> Todas las métricas relevantes del dominio de negocio que serán utilizadas para evaluar los experimentos. **No se permiten métricas ad-hoc o no definidas previamente en esta sección.**

| ID | Métrica | Objetivo de negocio asociado | Fórmula de cálculo | Técnica de recolección | Meta deseada |
|----|---------|------------------------------|--------------------|------------------------|--------------|
| M-01 | [Métrica] | [Objetivo] | [Fórmula] | [Evento de tracking / consulta] | [Meta] |

<!-- COMPLETAR -->

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

<!-- COMPLETAR -->

### 8.3.4. To-Be Validation Interviews

#### 8.3.4.1. Diseño de Entrevistas

<!-- COMPLETAR -->

#### 8.3.4.2. Registro de Entrevistas

| Campo | Dato |
|-------|------|
| Nombres y apellidos | [Nombre] |
| Edad | [Edad] |
| Distrito | [Distrito] |
| Fecha | [DD/MM/AAAA] |
| Timing | [inicio] — duración [mm:ss] |
| Enlace del video | [URL] |

*Resumen:* <!-- COMPLETAR -->

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
