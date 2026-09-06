# Capítulo V: Product Implementation

## 5.1. Software Configuration Management

### 5.1.1. Software Development Environment Configuration

> Por cada actividad del ciclo de vida (Project Management, Requirements Management, Product UX/UI Design, Software Development, Software Testing, Software Deployment, Software Documentation), indicar el producto de software, su propósito y la ruta de descarga o acceso.

| Actividad | Producto de software | Propósito | Ruta de acceso / descarga |
|-----------|----------------------|-----------|---------------------------|
| Project Management | | | |
| Requirements Management | | | |
| Product UX/UI Design | | | |
| Software Development | | | |
| Software Testing | | | |
| Software Deployment | | | |
| Software Documentation | | | |

<!-- COMPLETAR -->

### 5.1.2. Source Code Management

> Repositorios en la organización de GitHub y modelo de ramas **GitFlow**, con la convención de **Conventional Commits**.

**Repositorios**

| Producto | URL |
|----------|-----|
| Report | https://github.com/SANUVI-Diseno-de-Experimentos-SW/sanuvi-report |
| Landing Page | [URL] |
| Frontend Web Application | [URL] |
| RESTful API / Backend | [URL] |
| Mobile Application | [URL] |

**GitFlow**

| Rama | Propósito | Convención de nombre |
|------|-----------|----------------------|
| `main` | Versiones liberadas en producción | `main` |
| `develop` | Integración de features | `develop` |
| `feature/*` | Nueva funcionalidad | `feature/<nombre>` |
| `release/*` | Preparación de release | `release/<x.y.z>` |
| `hotfix/*` | Corrección urgente en producción | `hotfix/<nombre>` |

**Conventional Commits**

```
<type>[optional scope]: <description>

[optional body]
[optional footer(s)]
```

<!-- COMPLETAR: tipos usados (feat, fix, docs, style, refactor, test, chore) y ejemplos reales del equipo -->

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
