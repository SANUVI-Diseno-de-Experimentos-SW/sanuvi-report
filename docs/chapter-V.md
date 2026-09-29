# Capítulo V: Product Implementation

## 5.1. Software Configuration Management

### 5.1.1. Software Development Environment Configuration

**Project Management:**

Para la gestión de nuestro proyecto, hemos utilizado como principal medio de comunicación WhatsApp, a través de un grupo en el cual planificamos reuniones y compartimos nuestras ideas sobre cada parte del trabajo. También utilizamos la aplicación de Discord, para realizar reuniones y conversar en modalidad virtual. Asimismo se utilizó Github el cual elaboramos un repositorio con todos los integrantes del grupo. En esta, hicimos la creación del documento para trabajar de manera colaborativa y también la documentación de las aplicaciones.

**Requirements Management:**

Para el registro de las historias de usuario, utilizamos la herramienta de Jira, en la cual se registró cada una de ellas y se ordenaron por prioridad en el Product Backlog.

**Product UX/UI Design:**

Se realizaron los productos de UX con la herramienta de UXPressia, así como las User Persona, Impact Mapping, entre otras. Por ello se pudo modelar de manera efectiva el diseño de la experiencia de usuario. Por otro lado, se realizaron los prototipos de la aplicación web utilizando la herramienta Figma, lo cual nos permitió realizae los Wireframes y Mock-ups para tener una mejor perspectiva de la aplicación.

**Software Development:**

-  **Entornos de Desarrollo (IDEs):** Para el desarrollo de la aplicación móvil FerovaFamily se utiliza Android Studio, trabajando con el lenguaje Kotlin. Para el desarrollo de la plataforma web FerovaClinic se utiliza WebStorm, debido a su integración con Angular. Para el desarrollo del backend se utiliza JetBrains Rider, como entorno de desarrollo para C# y .NET.

- **Tecnología de Desarrollo Móvil:** La aplicación FerovaFamily se desarrolla utilizando Kotlin y Android Studio, permitiendo implementar las funcionalidades orientadas a madres, padres y cuidadores.

- **Tecnologías Frontend Web:** La plataforma FerovaClinic se desarrolla utilizando Angular, junto con HTML, CSS y TypeScript para la construcción de interfaces web dinámicas y responsivas. WebStorm se utiliza como entorno principal para el desarrollo y gestión del código frontend.

- **Tecnologías Backend:** Los servicios backend de la solución se desarrollan utilizando C# y .NET, empleando JetBrains Rider como entorno principal de desarrollo. Esta tecnología permite implementar la lógica de negocio y los servicios necesarios para la comunicación con las aplicaciones del sistema.

- **Control de Versiones y Gestión:** Se utiliza GitHub como plataforma central para el alojamiento de repositorios, permitiendo un control detallado del historial de cambios y una colaboración eficiente mediante Git.

### 5.1.2. Source Code Management

Para la gestión de versiones, el proyecto adoptará el modelo GitFlow, utilizando GitHub como repositorio y plataforma principal. En las siguientes secciones se detallará la aplicación de este flujo de trabajo, además de proporcionar los enlace correspondiente de cada repositorio.

**Repositorios**

| Producto | URL |
|----------|-----|
| Report | https://github.com/SANUVI-Diseno-de-Experimentos-SW/sanuvi-report |
| Landing Page | [URL] |
| Frontend Web Application | [URL] |
| RESTful API / Backend | [URL] |
| Mobile Application | [URL] |

Flujo de trabajo GitFlow

El ciclo de desarrollo se gestionará implementando el modelo de ramas diseñado por Vincent Driessen en 'A successful Git branching model'.

<p align="center">
  <img src="" alt="flow diagram" width="800">
</p>

**Estructura de branches (Ramas):**

- **Main (Rama Principal):** Constituye el eje central del repositorio, reservada exclusivamente para versiones estables y productivas del software. El código alojado aquí debe haber superado rigurosos procesos de validación y pruebas previas en las ramas de funcionalidad y desarrollo.

- **Develop (Rama de Desarrollo):** Actúa como el entorno de integración continua para el equipo. Su función principal es centralizar el progreso diario del proyecto, sirviendo de base para la consolidación de nuevas características antes de su despliegue final.

- **Features (Ramas de Funcionalidad):** Se empleará una rama independiente para cada módulo o tarea específica. Una vez concluida y verificada la funcionalidad, esta se integrará a la rama Develop. Para mantener el orden, se aplicará una nomenclatura estandarizada bajo el patrón "feature/chapter-#".

### 5.1.3. Source Code Style Guide & Conventions

> Convenciones por lenguaje y tecnología utilizadas (HTML, CSS, JavaScript/TypeScript, Java/Kotlin, Dart, Gherkin, etc.), con referencia a la guía oficial adoptada.

<!-- COMPLETAR -->

### 5.1.4. Software Deployment Configuration

> Por cada producto: procedimiento de despliegue, servicio utilizado y evidencias de configuración.

<!-- COMPLETAR -->

## 5.2. Product Implementation & Deployment

### 5.2.1. Sprint Backlogs

#### Sprint n

**Sprint Planning n**

| Campo | Valor |
|-------|-------|
| Date | [YYYY-MM-DD] |
| Time | [HH:MM] |
| Location | [Lugar / plataforma] |
| Prepared By | [Nombre] |
| Attendees (to planning meeting) | [Nombres] |
| Sprint n – 1 Review Summary | [Resumen] |
| Sprint n – 1 Retrospective Summary | [Resumen] |
| Sprint n Goal | [Objetivo] |
| Sprint n Velocity | [Story Points] |
| Sum of Story Points | [Story Points] |

**Aspect Leaders and Collaborators**

| Team Member (Last Name, First Name) | GitHub Username | [Aspecto 1] | [Aspecto 2] | [Aspecto 3] |
|-------------------------------------|-----------------|-------------|-------------|-------------|
| [Apellidos, Nombres] | [usuario] | L / C | L / C | L / C |

*L = Leader, C = Collaborator*

**Sprint Backlog n**

| User Story ID | User Story Title | Work-Item / Task ID | Task Title | Description | Estimation (hours) | Assigned To | Status (To-do / In-Process / To-Review / Done) |
|---------------|------------------|---------------------|------------|-------------|--------------------|-------------|-----------------------------------------------|
| US01 | [Título] | T01 | [Título] | [Descripción] | [h] | [Nombre] | Done |

<!-- COMPLETAR: repetir el bloque por cada sprint -->

### 5.2.2. Implemented Landing Page Evidence

<img src="../assets/img/chapter-V/landing-evidence.png" alt="Landing Page implementada">

**Commits**

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
|------------|--------|-----------|----------------|---------------------|---------------------|
| [repo] | [branch] | [sha] | [mensaje] | [cuerpo] | [fecha] |

<!-- COMPLETAR -->

### 5.2.3. Implemented Frontend-Web Application Evidence

<!-- COMPLETAR -->

### 5.2.4. Acuerdo de Servicio - SaaS

> Derechos, obligaciones y restricciones aplicables a los usuarios de la plataforma. Debe estar publicado en la sección *Terms and Conditions* del website.

**Enlace público:** [URL]

<!-- COMPLETAR -->

### 5.2.5. Implemented Native-Mobile Application Evidence

<!-- COMPLETAR -->

### 5.2.6. Implemented RESTful API and/or Serverless Backend Evidence

<!-- COMPLETAR -->

### 5.2.7. RESTful API documentation

> Documentación OpenAPI/Swagger de los endpoints por Bounded Context.

**Enlace:** [URL de la documentación desplegada]

<!-- COMPLETAR -->

### 5.2.8. Team Collaboration Insights

> Capturas de los analíticos de colaboración y commits en GitHub para los repositorios de producto.

<img src="../assets/img/chapter-V/collaboration-insights.png" alt="Team Collaboration Insights">

<!-- COMPLETAR -->

## 5.3. Video About-the-Product

| Campo | Dato |
|-------|------|
| Enlace del video | [URL de Microsoft Stream] |
| Duración | [mm:ss] |

<img src="../assets/img/chapter-V/video-about-the-product.png" alt="Captura del video About-the-Product">

<!-- COMPLETAR -->
