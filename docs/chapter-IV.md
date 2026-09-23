# Capítulo IV: Product Design

## 4.1. Style Guidelines

### 4.1.1. General Style Guidelines

> Branding, tipografía, paleta de colores, tono de voz (Four Dimensions of Tone of Voice), espaciado y principios de diseño inclusivo.

**Branding**

<!-- COMPLETAR -->

**Typography**

<!-- COMPLETAR -->

**Colors**

<!-- COMPLETAR -->

**Spacing**

<!-- COMPLETAR -->

**Tone of Voice**

<!-- COMPLETAR -->

### 4.1.2. Web Style Guidelines

<!-- COMPLETAR -->

### 4.1.3. Mobile Style Guidelines

<!-- COMPLETAR -->

#### 4.1.3.1. iOS Mobile Style Guidelines

> Aplicación de las Apple Human Interface Guidelines.

<!-- COMPLETAR -->

#### 4.1.3.2. Android Mobile Style Guidelines

> Aplicación de Material Design.

<!-- COMPLETAR -->

## 4.2. Information Architecture

### 4.2.1. Organization Systems

<!-- COMPLETAR -->

### 4.2.2. Labeling Systems

<!-- COMPLETAR -->

### 4.2.3. SEO Tags and Meta Tags

| Página | Title | Description | Keywords | Author |
|--------|-------|-------------|----------|--------|
| Landing Page | | | | |

<!-- COMPLETAR -->

### 4.2.4. Searching Systems

<!-- COMPLETAR -->

### 4.2.5. Navigation Systems

<!-- COMPLETAR -->

## 4.3. Landing Page UI Design

### 4.3.1. Landing Page Wireframe

<img src="../assets/img/chapter-IV/landing-wireframe.png" alt="Landing Page Wireframe">

<!-- COMPLETAR -->

### 4.3.2. Landing Page Mock-up

<img src="../assets/img/chapter-IV/landing-mockup.png" alt="Landing Page Mock-up">

<!-- COMPLETAR -->

## 4.4. Mobile Applications UX/UI Design

### 4.4.1. Mobile Applications Wireframes

<img src="../assets/img/chapter-IV/mobile-wireframes.png" alt="Mobile Wireframes">

<!-- COMPLETAR -->

### 4.4.2. Mobile Applications Wireflow Diagrams

> Un Wireflow por cada User Goal, considerando los User Persona.

**User Goal 1:** [enunciado]

<img src="../assets/img/chapter-IV/mobile-wireflow-01.png" alt="Mobile Wireflow 1">

<!-- COMPLETAR -->

### 4.4.3. Mobile Applications Mock-ups

<img src="../assets/img/chapter-IV/mobile-mockups.png" alt="Mobile Mock-ups">

<!-- COMPLETAR -->

### 4.4.4. Mobile Applications User Flow Diagrams

> Un User Flow por cada User Goal, consistente con los Wireflows. Incluir happy path y unhappy paths.

**User Goal 1:** [enunciado]

<img src="../assets/img/chapter-IV/mobile-userflow-01.png" alt="Mobile User Flow 1">

<!-- COMPLETAR -->

## 4.5. Mobile Applications Prototyping

> Introducción con los principales criterios para las decisiones de interacción y su relación con la arquitectura de información.

<!-- COMPLETAR -->

### 4.5.1. Android Mobile Applications Prototyping

<img src="../assets/img/chapter-IV/android-prototype.png" alt="Android Prototype">

**Enlace del video:** [URL de Microsoft Stream]

### 4.5.2. iOS Mobile Applications Prototyping

<img src="../assets/img/chapter-IV/ios-prototype.png" alt="iOS Prototype">

**Enlace del video:** [URL de Microsoft Stream]

## 4.6. Web Applications UX/UI Design

### 4.6.1. Web Applications Wireframes

<img src="../assets/img/chapter-IV/web-wireframes.png" alt="Web Wireframes">

<!-- COMPLETAR -->

### 4.6.2. Web Applications Wireflow Diagrams

**User Goal 1:** [enunciado]

<img src="../assets/img/chapter-IV/web-wireflow-01.png" alt="Web Wireflow 1">

<!-- COMPLETAR -->

### 4.6.3. Web Applications Mock-ups

<img src="../assets/img/chapter-IV/web-mockups.png" alt="Web Mock-ups">

<!-- COMPLETAR -->

### 4.6.4. Web Applications User Flow Diagrams

**User Goal 1:** [enunciado]

<img src="../assets/img/chapter-IV/web-userflow-01.png" alt="Web User Flow 1">

<!-- COMPLETAR -->

## 4.7. Web Applications Prototyping

<img src="../assets/img/chapter-IV/web-prototype.png" alt="Web Prototype">

**Enlace del video:** [URL de Microsoft Stream]

<!-- COMPLETAR -->

## 4.8. Domain-Driven Software Architecture

La arquitectura de software de Ferova Platform se organiza mediante un enfoque orientado al dominio, utilizando el modelo C4 para representar progresivamente la estructura de la solución. Esta representación permite visualizar el sistema desde una perspectiva general hasta el detalle de sus componentes internos.

La arquitectura considera como actores principales al Apoderado y al Personal de Salud, quienes interactúan con la plataforma mediante diferentes aplicaciones. La solución está compuesta por una aplicación web para el personal de salud, una aplicación móvil para los apoderados y una API que centraliza la lógica de negocio y el acceso a los datos.

Asimismo, Ferova Platform integra servicios externos como Resend, utilizado para el envío de correos electrónicos, y Google Maps API, utilizado para consultar información relacionada con la ubicación de las postas de salud.

Para representar esta arquitectura se emplearon tres niveles del modelo C4: Contexto, Contenedores y Componentes, desarrollados mediante Structurizr.


### 4.8.1. Software Architecture Context Diagram

El Context Diagram presenta una visión general de Ferova Platform y permite identificar los principales actores y sistemas externos que interactúan con la solución.

<div align ="center">
  <img src="../assets/img/chapter-IV/1.png">
</div>

En el centro del contexto se encuentra Ferova Platform, que proporciona las funcionalidades necesarias para que los apoderados realicen el seguimiento del tratamiento de sus pacientes y para que el personal de salud gestione y supervise su atención.

Los principales actores identificados son:

- **Apoderado:** madre, padre o cuidador responsable del paciente, quien utiliza la plataforma para gestionar la información del paciente, realizar el seguimiento del tratamiento, consultar su evolución, gestionar citas y comunicarse con el personal de salud.

- **Personal de Salud:** profesionales responsables de gestionar y realizar el seguimiento de los pacientes, así como atender las consultas de los apoderados.

Además, Ferova Platform mantiene comunicación con servicios externos. Resend permite gestionar el envío de correos electrónicos, particularmente aquellos relacionados con procesos como la recuperación de contraseña. Google Maps API permite consultar información de ubicación asociada a las postas de salud.

### 4.8.2. Software Architecture Container Diagrams

El Container Diagram descompone Ferova Platform en los principales contenedores que conforman la solución y muestra cómo estos interactúan entre sí.

<div align ="center">
  <img src="../assets/img/chapter-IV/2.png">
</div>

La plataforma está organizada principalmente en los siguientes contenedores:

- **Web Site:** sitio web público que presenta información sobre Ferova y permite a los usuarios acceder a la aplicación web o descargar la aplicación móvil.
- **Web Application:** aplicación web destinada al personal de salud, mediante la cual puede gestionar pacientes y realizar el seguimiento de tratamientos, controles y citas.
- **Mobile Application:** aplicación móvil destinada a los apoderados, que permite gestionar pacientes, registrar y consultar información relacionada con el tratamiento, consultar citas y mantener comunicación con el personal de salud.
- **API Application:** backend principal de la plataforma, responsable de centralizar la lógica de negocio, autenticación, gestión de pacientes, tratamientos, citas, seguimiento y comunicación.
- **Base de datos:** contenedor encargado de almacenar la información operativa de la plataforma, incluyendo usuarios, pacientes, tratamientos, citas, controles y demás información requerida por los módulos funcionales.

La Web Application y la Mobile Application utilizan la API Application mediante comunicaciones HTTP/HTTPS para consultar y registrar información. A su vez, la API utiliza la base de datos para leer y escribir la información necesaria para la operación de la plataforma.

En este nivel también se representan las integraciones externas. La plataforma utiliza Resend para el envío de correos electrónicos y Google Maps API para consultar información de ubicación de las postas de salud.

De esta manera, el diagrama permite observar la separación entre las interfaces utilizadas por los usuarios, la capa encargada de la lógica de negocio y la persistencia de información.

### 4.8.3. Software Architecture Components Diagrams

El Component Diagram presenta una descomposición interna de los contenedores principales de Ferova Platform, permitiendo identificar las responsabilidades funcionales que conforman cada aplicación.

**Web Application**

La aplicación web utilizada por el personal de salud se organiza en componentes orientados a las principales funcionalidades de gestión y seguimiento:

<div align ="center">
  <img src="../assets/img/chapter-IV/3.png">
</div>

- **Identity and Management:** gestiona la autenticación, autorización y administración de los usuarios del personal de salud.
- **Patient Management:** permite gestionar la información de los pacientes y su asignación al personal de salud.
- **Treatment Tracking:** gestiona el seguimiento de tratamientos, controles y estado de los pacientes.
- **Health Facility:** permite consultar y gestionar información relacionada con las postas de salud.
- **Communication:** gestiona las comunicaciones y consultas entre el personal de salud y los apoderados.
- **Analytics Reporting:** permite consultar métricas e indicadores para analizar información relacionada con el seguimiento de los pacientes.

Estos componentes mantienen relaciones funcionales entre sí y utilizan la API Application para acceder a las funcionalidades y datos proporcionados por el backend.

**API Application**

La API Application concentra la lógica de negocio de Ferova Platform y se encuentra organizada en componentes funcionales que representan las principales responsabilidades del backend:

<div align ="center">
  <img src="../assets/img/chapter-IV/4.png">
</div>

- **Identity and Management:** gestiona autenticación, autorización y administración de usuarios.
- **Patient Management:** gestiona la información de los pacientes y su relación con el personal de salud.
- **Treatment Tracking:** gestiona tratamientos, controles y seguimiento de los pacientes.
- **Health Facility:** administra la información relacionada con las postas de salud y su ubicación.
- **Communication Management:** gestiona las comunicaciones entre apoderados y personal de salud.
- **Analytics Reporting:** genera métricas e indicadores a partir de la información disponible en la plataforma.
- **Achievements & Rewards:** gestiona logros, puntos y recompensas relacionados con el seguimiento del tratamiento.
- **Nutritional Diary:** gestiona el registro y seguimiento de información nutricional de los pacientes.

Los componentes del backend mantienen relaciones entre sí para intercambiar información necesaria para ejecutar las funcionalidades del sistema. Por ejemplo, Patient Management proporciona información utilizada por Treatment Tracking, mientras que los datos de tratamientos y controles son utilizados por Analytics Reporting y Achievements & Rewards.

La API también mantiene comunicación con servicios externos. El componente Identity and Management utiliza Resend para el envío de códigos de verificación relacionados con la recuperación de contraseña, mientras que Health Facility utiliza Google Maps API para consultar información de ubicación de las postas de salud.

Finalmente, los componentes del backend interactúan con la base de datos MongoDB para almacenar y recuperar la información necesaria para la operación de la plataforma.



## 4.9. Software Object-Oriented Design

### 4.9.1. Class Diagrams

<img src="../assets/img/chapter-IV/class-diagram.png" alt="Class Diagram">

<!-- COMPLETAR -->

### 4.9.2. Class Dictionary

| Clase | Atributo / Método | Tipo | Descripción |
|-------|-------------------|------|-------------|
| [Clase] | [atributo] | [tipo] | [descripción] |

<!-- COMPLETAR -->

## 4.10. Database Design

### 4.10.1. Relational/Non-Relational Database Diagram

<img src="../assets/img/chapter-IV/database-diagram.png" alt="Database Diagram">

<!-- COMPLETAR -->
