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
| Report | https://github.com/SANUVI-Diseno-de-Experimentos-SW/sanuvi-report/tree/main |
| Landing Page | https://github.com/SANUVI-Diseno-de-Experimentos-SW/ferova-landing-page |
| Frontend Web Application | [URL] |
| RESTful API / Backend | https://github.com/SANUVI-Diseno-de-Experimentos-SW/WebApplication1 |
| Mobile Application | https://github.com/SANUVI-Diseno-de-Experimentos-SW/ferova-mobile-android |

Flujo de trabajo GitFlow

El ciclo de desarrollo se gestionará implementando el modelo de ramas diseñado por Vincent Driessen en 'A successful Git branching model'.

<p align="center">
  <img src="../assets/img/chapter-V/gitflow.png" alt="flow diagram" width="800">
</p>

**Estructura de branches (Ramas):**

- **Main (Rama Principal):** Constituye el eje central del repositorio, reservada exclusivamente para versiones estables y productivas del software. El código alojado aquí debe haber superado rigurosos procesos de validación y pruebas previas en las ramas de funcionalidad y desarrollo.

- **Develop (Rama de Desarrollo):** Actúa como el entorno de integración continua para el equipo. Su función principal es centralizar el progreso diario del proyecto, sirviendo de base para la consolidación de nuevas características antes de su despliegue final.

- **Features (Ramas de Funcionalidad):** Se empleará una rama independiente para cada módulo o tarea específica. Una vez concluida y verificada la funcionalidad, esta se integrará a la rama Develop. Para mantener el orden, se aplicará una nomenclatura estandarizada bajo el patrón "feature/chapter-#".

### 5.1.3. Source Code Style Guide & Conventions

#### Frontend Web App — FerovaClinic (Angular + TypeScript)

##### Convenciones generales:

- **Idioma:** Código, nombres de clases, funciones y variables completamente en inglés.
- **Estructura de carpetas:** Organización por módulos, componentes, servicios e interfaces.
- **Indentación:** 2 espacios.
- **Formato de archivos:** `.ts`, `.html`, `.scss`.
- **Componentización:** Las interfaces deben dividirse en componentes reutilizables y mantener una única responsabilidad.

##### Estilo de código adoptado:

- **Angular Style Guide:** Convenciones oficiales de Angular para estructura, componentes, servicios y organización del código. https://angular.io/guide/styleguide
- **TypeScript Style Guide:** Convenciones para escritura consistente y mantenible de código TypeScript. https://google.github.io/styleguide/tsguide.html

##### Estilo de código adoptado:

- **Componentes:** `PascalCase` — Ej.: `PatientListComponent`, `TreatmentTrackingComponent`.
- **Servicios:** `PascalCase` + sufijo `Service` — Ej.: `PatientService`, `AppointmentService`.
- **Interfaces:** `PascalCase` — Ej.: `Patient`, `Treatment`, `Appointment`.
- **Archivos:** `kebab-case` — Ej.: `patient-list.component.ts`, `treatment.service.ts`.
- **Variables y funciones:** `camelCase` — Ej.: `patientId`, `getPatientDetails()`.
- **Constantes:** `UPPER_SNAKE_CASE` — Ej.: `MAX_PATIENTS`.

---

####  Mobile Frontend — FerovaFamily (Kotlin + Android Studio + Jetpack Compose)

##### Convenciones generales:

- **Idioma:** Todo el código, nombres de clases, funciones y variables en inglés.
- **Indentación:** 4 espacios.
- **Formato de archivos:** `.kt`.
- **Arquitectura:** Separación de responsabilidades entre UI, lógica de presentación y acceso a datos.
- **Interfaz:** Las pantallas serán desarrolladas utilizando Jetpack Compose.

##### Estilo de código adoptado:

- **Kotlin Coding Conventions:** Convenciones oficiales para el desarrollo en Kotlin.[Kotlin Coding Conventions](https://kotlinlang.org/docs/coding-conventions.html)

- **Android Kotlin Style Guide:** Convenciones recomendadas para proyectos Android desarrollados con Kotlin. Android Kotlin Style Guide [Android Kotlin Style Guide (Google)](https://developer.android.com/kotlin/style-guide)

##### Nomenclatura:

- **Clases y objetos:** `PascalCase` — Ej.: `PatientProfile`, `TreatmentScreen`.
- **Funciones y variables:** `camelCase` — Ej.: `getPatientData()`, `selectedPatient`.
- **Constantes:** `UPPER_SNAKE_CASE` — Ej.: `MAX_PATIENTS`, `DEFAULT_TIMEOUT`.
- **Paquetes:** minúsculas y separados por puntos — Ej.: `com.ferova.family.ui.patient`.
- **Funciones composables:** `PascalCase` — Ej.: `PatientCard()`, `TreatmentScreen()`.
- **Archivos Kotlin:** `PascalCase` cuando representan componentes principales — Ej.: `PatientScreen.kt`, `TreatmentViewModel.kt`.

---

#### Backend — C# + .NET

##### Convenciones generales:

- **Idioma:** Código y documentación interna en inglés.
- **Indentación:** 4 espacios.
- **Formato de archivos:** `.cs`.
- **Arquitectura:** Separación de responsabilidades entre las capas de presentación, aplicación, dominio e infraestructura.
- **Framework:** .NET para la implementación de la API y lógica de negocio.

##### Estilo de código adoptado:

- **Microsoft C# Coding Conventions:** Convenciones oficiales de Microsoft para el desarrollo en C#.
- **.NET Coding Guidelines:** Buenas prácticas para la construcción y organización de aplicaciones .NET.

##### Nomenclatura:

- **Clases:** `PascalCase` — Ej.: `PatientService`, `TreatmentController`.
- **Interfaces:** `IPascalCase` — Ej.: `IPatientRepository`, `ITreatmentService`.
- **Métodos:** `PascalCase` — Ej.: `GetPatientById()`, `RegisterTreatment()`.
- **Variables:** `camelCase` — Ej.: `patientId`, `treatmentData`.
- **Propiedades:** `PascalCase` — Ej.: `PatientId`, `TreatmentStatus`.
- **Constantes:** `PascalCase` — Ej.: `MaxPatients`.
- **Endpoints REST:** `kebab-case` — Ej.: `/api/patients`, `/api/treatments`.
- **Namespaces:** `PascalCase` separados por puntos — Ej.: `Ferova.Application.Patients`.

---

#### Database — MongoDB (NoSQL)

##### Convenciones generales:

- **Formato:** Documentos almacenados en formato JSON/BSON.
- **Indentación:** 2 espacios para documentos JSON.
- **Modelado:** Se utilizarán documentos orientados a las necesidades de consulta del sistema, evitando duplicación innecesaria de información.
- **Identificadores:** Se utilizará `ObjectId` como identificador de los documentos cuando corresponda.

##### Nomenclatura:

- **Colecciones:** `snake_case` y en plural — Ej.: `patients`, `treatments`, `daily_doses`.
- **Campos:** `camelCase` — Ej.: `patientId`, `createdAt`, `treatmentStatus`.
- **Índices:** `snake_case` descriptivo — Ej.: `patient_id_index`, `treatment_status_index`.
- **Referencias:** Los campos utilizados para relacionar documentos deberán utilizar nombres descriptivos y consistentes. Ej.: `patientId`, `nurseId`, `treatmentId`.


### 5.1.4. Software Deployment Configuration

##### 1. Landing Page — Ferova

**Tecnología Base:**

- **Tecnología:** HTML, CSS y JavaScript
- **Repositorio:** GitHub
- **Hosting:** GitHub Pages

**Configuración y Despliegue:**

- El código fuente de la Landing Page de Ferova se mantiene en un repositorio de GitHub.
- La Landing Page está orientada a presentar información general sobre Ferova, sus funcionalidades y la propuesta de la plataforma.
- El proyecto utiliza **GitHub Pages** como servicio de hosting para publicar la página web.
- La publicación se realiza directamente desde el repositorio configurado para GitHub Pages.
- Los cambios realizados en los archivos de la Landing Page pueden ser publicados nuevamente mediante las actualizaciones realizadas en el repositorio.
- GitHub Pages proporciona el acceso web a la Landing Page sin requerir un servidor backend propio para su funcionamiento.
- La Landing Page funciona de manera independiente de FerovaClinic, aunque puede proporcionar enlaces de acceso hacia los diferentes componentes de la plataforma.

---


##### 2. Frontend Web Application — FerovaClinic (Angular)

**Tecnología Base:**

- **Framework:** Angular
- **Lenguaje:** TypeScript
- **IDE:** WebStorm
- **Build Tool:** Angular CLI
- **Hosting:** Vercel
- **Repositorio:** GitHub

**Configuración y Despliegue:**

- El código fuente de FerovaClinic se mantiene en un repositorio de GitHub, donde se gestiona el control de versiones y las actualizaciones de la aplicación web.
- El desarrollo de la aplicación se realiza utilizando **WebStorm** como entorno de desarrollo integrado (IDE).
- La aplicación está desarrollada con **Angular** y **TypeScript**, utilizando Angular CLI para la ejecución y construcción del proyecto.
- Para generar la versión de producción se realiza el proceso de compilación mediante Angular CLI, generando los archivos optimizados de la aplicación.
- El proyecto de FerovaClinic se encuentra vinculado con **Vercel**, plataforma utilizada para el despliegue y alojamiento de la aplicación web.
- Vercel permite realizar la construcción y publicación de la aplicación a partir del repositorio de GitHub.
- Las actualizaciones realizadas en el repositorio pueden generar nuevos despliegues de la aplicación web en Vercel.
- Las variables de entorno utilizadas por el frontend permiten configurar la URL del backend y otros parámetros necesarios para la comunicación con los servicios REST.
- En el entorno de desarrollo, FerovaClinic se ejecuta localmente mediante Angular CLI y puede conectarse al backend configurado para pruebas.
- En el entorno de producción, FerovaClinic se encuentra desplegado en Vercel y consume los servicios REST del backend desplegado en Railway.
- La aplicación web utiliza solicitudes HTTP/HTTPS para acceder a los servicios proporcionados por el backend.

**Integración con el backend:**

FerovaClinic consume la API REST desarrollada con C# y .NET para realizar las operaciones correspondientes a la gestión de pacientes, controles, tratamientos, citas, seguimiento y demás funcionalidades destinadas al personal de salud.

---

##### 3. Backend — C# + .NET

**Tecnología Base:**

- **Lenguaje:** C#
- **Framework:** .NET
- **IDE:** JetBrains Rider
- **Contenedorización:** Docker
- **Hosting:** Railway
- **Documentación de API:** Swagger / OpenAPI
- **Repositorio:** GitHub

**Configuración y Despliegue:**

- El código fuente del backend se mantiene en un repositorio de GitHub para gestionar el control de versiones y las actualizaciones del servicio.
- El desarrollo del backend se realiza utilizando **JetBrains Rider** como entorno de desarrollo integrado (IDE).
- La aplicación backend está desarrollada utilizando **C# y .NET** y proporciona los servicios REST utilizados por FerovaClinic y FerovaFamily.
- Para la construcción y despliegue de la aplicación se utiliza un archivo `Dockerfile`, que contiene las instrucciones necesarias para preparar el entorno, compilar el proyecto y generar la imagen de la aplicación.
- El repositorio de GitHub se encuentra vinculado con **Railway**, plataforma utilizada para el alojamiento y despliegue del backend.
- Railway utiliza la configuración del proyecto y el `Dockerfile` para realizar la construcción de la aplicación y ejecutar el servicio.
- El backend desplegado en Railway expone la API REST mediante HTTP/HTTPS para permitir el acceso desde las aplicaciones cliente.
- Los endpoints de la API se documentan mediante **Swagger / OpenAPI**.
- **Swagger UI** permite visualizar y realizar pruebas de los endpoints disponibles, incluyendo sus métodos HTTP, parámetros y respuestas.
- La configuración del backend utiliza variables de entorno para administrar valores dependientes del entorno de ejecución.
- Los cambios realizados en el repositorio pueden generar una nueva construcción y despliegue del backend en Railway.
- El backend proporciona los servicios necesarios para la gestión de usuarios, pacientes, historias clínicas, controles de hemoglobina, tratamientos, citas, seguimiento y comunicación.

**Entornos diferenciados:**

- **Desarrollo:** El backend se ejecuta localmente desde Rider utilizando el entorno de desarrollo de .NET.
- **Producción:** El backend se ejecuta en Railway utilizando la imagen construida mediante Docker y se encuentra disponible para las aplicaciones cliente.

**Integración con las aplicaciones cliente:**

- **FerovaClinic:** Consume la API REST desde la aplicación web desarrollada con Angular.
- **FerovaFamily:** Consume la API REST desde la aplicación móvil desarrollada con Kotlin.
- Ambas aplicaciones utilizan solicitudes HTTP/HTTPS para acceder a los servicios proporcionados por el backend.

##### 4. Aplicación Móvil — FerovaFamily (Kotlin + Android)

**Tecnología Base:**

- **Lenguaje:** Kotlin
- **IDE:** Android Studio
- **Framework:** Jetpack Compose
- **Plataforma:** Android
- **Distribución:** APK
- **Hosting de pruebas:** Firebase App Distribution
- **Repositorio:** GitHub

**Configuración y Despliegue:**

- El código fuente de FerovaFamily se mantiene en un repositorio de GitHub para gestionar el control de versiones y las actualizaciones de la aplicación.
- El desarrollo de la aplicación móvil se realiza utilizando **Android Studio** como entorno de desarrollo integrado (IDE).
- La aplicación está desarrollada en **Kotlin** y utiliza **Jetpack Compose** para la construcción de las interfaces de usuario.
- Para generar una versión instalable de la aplicación se realiza la compilación del proyecto desde Android Studio.
- Para las versiones de prueba se genera un archivo **APK (Android Package)**.
- El archivo APK generado puede instalarse en dispositivos físicos o emuladores Android para verificar el funcionamiento de la aplicación.
- Las versiones de prueba de FerovaFamily se distribuyen mediante **Firebase App Distribution**, permitiendo realizar pruebas con usuarios y testers seleccionados.
- Firebase App Distribution permite gestionar las versiones de prueba y distribuirlas a los testers antes de una publicación oficial.
- Las nuevas versiones de la aplicación pueden ser compiladas y distribuidas nuevamente mediante Firebase App Distribution para incorporar cambios y obtener retroalimentación durante las pruebas.
- FerovaFamily consume los servicios REST proporcionados por el backend desplegado en Railway mediante solicitudes HTTP/HTTPS.

**Entornos diferenciados:**

- **Desarrollo:** FerovaFamily se ejecuta desde Android Studio utilizando un emulador o dispositivo físico Android.
- **Pruebas:** Se genera un APK desde Android Studio y se distribuye mediante Firebase App Distribution.
- **Producción:** La aplicación puede prepararse como una versión de lanzamiento para su posterior distribución en el canal correspondiente.

---

##### 5. Flujo general de despliegue

El despliegue de la plataforma Ferova se organiza en cuatro componentes principales:

1. **Landing Page:** El código fuente se mantiene en GitHub y se publica mediante **GitHub Pages**, proporcionando la página informativa de Ferova.

2. **FerovaClinic:** La aplicación web desarrollada con **Angular y TypeScript** se mantiene en GitHub, se construye mediante Angular CLI y se despliega en **Vercel**.

3. **Backend:** La API desarrollada con **C# y .NET** se mantiene en GitHub. El `Dockerfile` define el proceso de construcción de la aplicación y **Railway** se utiliza para el despliegue y ejecución del backend. La API REST se documenta y prueba mediante **Swagger UI**.

4. **FerovaFamily:** La aplicación móvil desarrollada con **Kotlin y Jetpack Compose** se mantiene en GitHub y se compila mediante **Android Studio** para generar el APK. Las versiones de prueba se distribuyen mediante **Firebase App Distribution**.

5. **Comunicación entre componentes:** FerovaClinic y FerovaFamily consumen los servicios REST proporcionados por el backend mediante solicitudes HTTP/HTTPS.

##### 6. Resumen de tecnologías de despliegue

| Componente | Tecnología | Herramienta de desarrollo | Construcción | Despliegue / Distribución |
|---|---|---|---|---|
| Landing Page | HTML + CSS + JavaScript | WebStorm | — | GitHub Pages |
| FerovaClinic | Angular + TypeScript | WebStorm | Angular CLI | Vercel |
| Backend | C# + .NET | JetBrains Rider | Docker / Dockerfile | Railway |
| FerovaFamily | Kotlin + Jetpack Compose | Android Studio | Gradle / Android Build | Firebase App Distribution |
| API | REST / OpenAPI | JetBrains Rider / Swagger UI | Docker | Railway |


## 5.2. Product Implementation & Deployment

### 5.2.1. Sprint Backlogs

#### Sprint n

**Sprint Backlog n**

| User Story ID | User Story Title | Work-Item / Task ID | Task Title | Description | Estimation (hours) | Assigned To | Status (To-do / In-Process / To-Review / Done) |
|---------------|------------------|---------------------|------------|-------------|--------------------|-------------|-----------------------------------------------|
| US01 | [Título] | T01 | [Título] | [Descripción] | [h] | [Nombre] | Done |


### 5.2.2. Implemented Landing Page Evidence

<img src="../assets/img/chapter-V/landing-evidence.png" alt="Landing Page implementada">

**Commits**

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
|------------|--------|-----------|----------------|---------------------|---------------------|
| [repo] | [branch] | [sha] | [mensaje] | [cuerpo] | [fecha] |


### 5.2.3. Implemented Frontend-Web Application Evidence


### 5.2.4. Acuerdo de Servicio - SaaS

> Derechos, obligaciones y restricciones aplicables a los usuarios de la plataforma. Debe estar publicado en la sección *Terms and Conditions* del website.

**Enlace público:** [URL]


### 5.2.5. Implemented Native-Mobile Application Evidence


### 5.2.6. Implemented RESTful API and/or Serverless Backend Evidence


### 5.2.7. RESTful API documentation

> Documentación OpenAPI/Swagger de los endpoints por Bounded Context.

**Enlace:** [URL de la documentación desplegada]


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

