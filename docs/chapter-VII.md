# Capítulo VII: DevOps Practices

## 7.1. Continuous Integration

La integración continua (CI) de FerovaClinic se implementó mediante GitHub Actions, configurando flujos de trabajo independientes para el backend y el frontend. Estos procesos permiten verificar automáticamente la compilación de cada aplicación cuando se realizan cambios en sus respectivos repositorios.

#### 7.1.1. Tools and Practices


Para implementar la integración continua se seleccionaron herramientas que permiten automatizar la validación del código fuente y verificar la compilación de los componentes de Ferova.

| Herramienta | Propósito | Justificación |
|---|---|---|
| GitHub Actions | Automatizar los procesos de integración continua. | Permite ejecutar workflows directamente desde los repositorios de GitHub. |
| .NET 9 SDK | Restaurar dependencias y compilar el backend. | Permite verificar la compilación de la solución ASP.NET Core. |
| Node.js 24 | Proporcionar el entorno de ejecución del frontend. | Es necesario para gestionar las dependencias y ejecutar Angular CLI. |
| npm | Gestionar las dependencias del frontend. | Permite instalar las dependencias de forma reproducible mediante npm ci. |
| Angular CLI | Compilar la aplicación frontend. | Permite verificar la generación de los archivos de compilación de Angular. |

##### Prácticas adoptadas

- **Automatización por eventos:** los workflows se ejecutan ante eventos `push` y `pull_request`.
- **Separación de pipelines:** se implementó un workflow independiente para cada repositorio.
- **Control de versiones:** los archivos de configuración se almacenan en la carpeta `.github/workflows`.
- **Validación de compilación:** cada ejecución verifica que las aplicaciones puedan compilarse correctamente.
- **Rama de trabajo:** se utilizó la rama `ci-pipeline` para incorporar y verificar las configuraciones de integración continua.


### 7.1.2. Build & Test Suite Pipeline Components

Se implementaron dos pipelines independientes para automatizar la validación de compilación de Ferova. Cada pipeline contiene un job con diferentes pasos de configuración, instalación o restauración de dependencias y compilación.


#### A. Backend CI Pipeline

El pipeline del backend se configuró mediante el archivo `backend-ci.yml`, ubicado en `.github/workflows` del repositorio WebApplication1.

##### Configuración del workflow

El siguiente código define los eventos que activan el pipeline, el entorno de ejecución y los pasos necesarios para compilar la solución backend.

```yaml
name: Ferova Backend CI

on:
  push:
  pull_request:

permissions:
  contents: read

jobs:
  build:
    name: Build Backend
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Setup .NET 9
        uses: actions/setup-dotnet@v4
        with:
          dotnet-version: '9.0.x'

      - name: Restore dependencies
        run: dotnet restore WebApplication1.sln

      - name: Build solution
        run: dotnet build WebApplication1.sln --configuration Release --no-restore
```


##### Componentes del pipeline

| Componente | Descripción | Trigger | Resultado esperado |
|---|---|---|---|
| Build Backend | Job encargado de compilar el backend. | push / pull_request | Compilación exitosa. |
| Checkout repository | Descarga el código fuente. | Inicio del job | Repositorio disponible. |
| Setup .NET 9 | Configura el entorno .NET 9. | Durante el job | SDK disponible. |
| Restore dependencies | Restaura las dependencias de la solución. | Durante el job | Dependencias restauradas. |
| Build solution | Compila la solución en configuración Release. | Durante el job | Compilación sin errores. |


##### Evidencias de ejecución del Backend CI

**Figura 7.1. Configuración del workflow Backend CI.**

<div align="center">
<img src="../assets/img/chapter-VII/CI pipeline/1.1 Backend.png" width=500>
</div>


**Figura 7.2. Workflow Backend CI registrado en GitHub Actions.**

<div align="center">
<img src="../assets/img/chapter-VII/CI pipeline/1.2 Backend.png" width=500>
</div>


**Figura 7.3. Resultado de ejecución del pipeline Backend CI.**

<div align="center">
<img src="../assets/img/chapter-VII/CI pipeline/1.3 Backend.png" width=500>
</div>


**Figura 7.4. Detalle de los pasos ejecutados en el Backend CI.**

<div align="center">
<img src="../assets/img/chapter-VII/CI pipeline/1.4 Backend.png" width=500>
</div>


#### B. Frontend CI Pipeline

El pipeline del frontend se configuró mediante el archivo `frontend-ci.yml`, ubicado en `.github/workflows` del repositorio ferova-clinic-web.

##### Configuración del workflow

El siguiente código establece los eventos que activan el pipeline, configura Node.js 24, instala las dependencias y ejecuta la compilación de la aplicación Angular.

```yaml
name: FerovaClinic Frontend CI

on:
  push:
  pull_request:

permissions:
  contents: read

jobs:
  build:
    name: Build Frontend
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Setup Node.js 24
        uses: actions/setup-node@v4
        with:
          node-version: '24'
          cache: 'npm'

      - name: Install dependencies
        run: npm ci

      - name: Build Angular application
        run: npm run build
```

##### Componentes del pipeline

| Componente | Descripción | Trigger | Resultado esperado |
|---|---|---|---|
| Build Frontend | Job encargado de compilar el frontend. | push / pull_request | Compilación exitosa. |
| Checkout repository | Descarga el código fuente. | Inicio del job | Repositorio disponible. |
| Setup Node.js 24 | Configura el entorno Node.js. | Durante el job | Entorno disponible. |
| Install dependencies | Instala las dependencias mediante npm ci. | Durante el job | Dependencias instaladas. |
| Build Angular application | Ejecuta npm run build. | Durante el job | Aplicación Angular compilada. |

##### Evidencias de ejecución del Frontend CI

**Figura 7.5. Configuración del workflow Frontend CI.**

<div align="center">
<img src="../assets/img/chapter-VII/CI pipeline/2.1 Frontend.png" width=500>
</div>


**Figura 7.6. Workflows registrados en GitHub Actions del frontend.**

<div align="center">
<img src="../assets/img/chapter-VII/CI pipeline/2.2 Frontend.png" width=500>
</div>


**Figura 7.7. Resultado de ejecución del pipeline Frontend CI.**

<div align="center">
<img src="../assets/img/chapter-VII/CI pipeline/2.3 Frontend.png" width=500>
</div>


**Figura 7.8. Detalle de los pasos ejecutados en el Frontend CI.**

<div align="center">
<img src="../assets/img/chapter-VII/CI pipeline/2.4 Frontend.png" width=500>
</div>


##### C. Criterios de ejecución y fallo

Los pipelines consideran los siguientes criterios para determinar el resultado de cada ejecución:

| Criterio | Condición | Resultado |
|---|---|---|
| Restauración de dependencias del backend | `dotnet restore` finaliza correctamente. | Continúa la compilación. |
| Compilación del backend | `dotnet build` termina sin errores. | Job exitoso. |
| Instalación de dependencias del frontend | `npm ci` finaliza correctamente. | Continúa la compilación. |
| Compilación del frontend | `npm run build` termina correctamente. | Job exitoso. |
| Error durante la ejecución | Un comando termina con un código de salida distinto de cero. | Job fallido. |

##### Resultado de la implementación

La implementación de los pipelines de integración continua permitió automatizar la validación de compilación de los componentes backend y frontend de Ferova. Las ejecuciones realizadas en GitHub Actions finalizaron satisfactoriamente en la rama `ci-pipeline`, verificando que ambas aplicaciones pueden compilarse correctamente en sus respectivos entornos de ejecución.


## 7.2. Continuous Delivery

La entrega continua (Continuous Delivery) de Ferova comprende los procesos utilizados para preparar, publicar y mantener disponibles sus componentes de software en entornos de producción. Para ello, se utilizan plataformas de despliegue independientes para el backend y el frontend, integradas con sus respectivos repositorios de GitHub.

El backend se despliega mediante Railway, utilizando Dockerfile como mecanismo de construcción de la aplicación. Por otro lado, el frontend se publica mediante Azure Static Web Apps, plataforma que utiliza un workflow de GitHub Actions para gestionar su construcción y despliegue.

### 7.2.1. Tools and Practices

##### Herramientas (Tools)

Para implementar la entrega continua de Ferova se utilizaron las siguientes herramientas:

| Herramienta | Propósito | Justificación |
|---|---|---|
| GitHub | Gestionar los repositorios y versiones del código fuente. | Permite mantener el código del backend y frontend integrado con las plataformas de despliegue. |
| Railway | Alojar y desplegar el backend de Ferova. | Proporciona infraestructura en la nube para ejecutar la API desarrollada con ASP.NET Core y .NET 9. |
| Docker | Construir y empaquetar el backend mediante un contenedor. | Permite definir el entorno de construcción y ejecución de la aplicación mediante un Dockerfile. |
| Azure Static Web Apps | Alojar y publicar el frontend. | Permite desplegar la aplicación web desarrollada con Angular y proporcionar una dirección pública de acceso. |
| GitHub Actions | Automatizar el workflow de despliegue del frontend. | Facilita la ejecución de los procesos de construcción y publicación mediante la integración con Azure Static Web Apps. |

##### Prácticas (Practices)


- **Separación de componentes (Independent Deployment):** el backend y frontend cuentan con repositorios y plataformas de despliegue independientes, permitiendo gestionar la publicación de cada componente por separado.

- **Construcción mediante contenedores (Containerized Build):** el backend utiliza un Dockerfile configurado en Railway para construir la aplicación antes de ejecutarla en la infraestructura de alojamiento.

- **Integración con repositorios (GitHub Integration):** Railway y Azure Static Web Apps se encuentran vinculados con sus respectivos repositorios de GitHub, permitiendo gestionar las implementaciones a partir del código versionado.

- **Gestión de variables de entorno (Environment Configuration):** Railway utiliza variables de entorno para configurar parámetros de ejecución del backend, incluyendo la conexión con MongoDB, autenticación JWT y el servicio de correo electrónico Resend.

- **Verificación de despliegue (Deployment Verification):** se comprueba que los servicios publicados se encuentren disponibles mediante sus respectivas direcciones públicas. En el backend, se utiliza Swagger UI para consultar la API; en el frontend, se verifica el acceso a la aplicación Ferova.



### 7.2.2. Stages Deployment Pipeline Components

El proceso de entrega continua de Ferova está compuesto por dos flujos de despliegue independientes: uno para el Backend, alojado en Railway, y otro para el Frontend, publicado mediante Azure Static Web Apps. Ambos servicios se encuentran integrados con sus respectivos repositorios de GitHub, permitiendo gestionar la construcción y publicación de las aplicaciones en sus entornos de producción.

##### 1. Pipeline Definition & Deployment Configuration

La configuración de entrega continua se realiza mediante las plataformas Railway y Azure Static Web Apps, las cuales se encuentran conectadas a los repositorios de GitHub de cada componente.

Para el Backend, Railway utiliza un archivo `Dockerfile` ubicado en la raíz del repositorio `WebApplication1`, mediante el cual construye la aplicación ASP.NET Core antes de ejecutarla en producción.

Para el Frontend, Azure Static Web Apps utiliza el workflow `azure-static-web-apps-proud-wave-064ec0610.yml`, asociado al repositorio `ferova-clinic-web` y a la rama `main`.

**Configuraciones utilizadas:**

| Componente | Archivo de configuración | Plataforma |
|---|---|---|
| Backend | `Dockerfile` | Railway |
| Frontend | `azure-static-web-apps-proud-wave-064ec0610.yml` | Azure Static Web Apps |

**Figura 7.9. Configuración del servicio Backend en Railway.**

<div align="center">
<img src="../assets/img/chapter-VI/Continuous Delivery/Configuración del servicio Backend en Railway.png" width=500>
</div>

**Figura 8.0. Configuración del workflow de despliegue del Frontend mediante Azure Static Web Apps.**

<div align="center">
<img src="../assets/img/chapter-VI/Continuous Delivery/Configuración del workflow de despliegue del Frontend mediante Azure Static Web Apps.png" width=500>
</div>


##### 2. Deployment Environments & Triggers

Los componentes de Ferova cuentan con despliegues independientes en sus respectivas plataformas. La siguiente tabla resume los ambientes y mecanismos de entrega identificados.

| Ambiente | Servicio | Trigger | Aprobación requerida |
|---|---|---|---|
| Production | Backend - Railway (`WebApplication1`) | Actualización del repositorio conectado a GitHub. | No se evidencia aprobación manual. |
| Production | Frontend - Azure Static Web Apps (`FerovaWeb`) | Ejecución del workflow de GitHub Actions. | No se evidencia aprobación manual. |

El backend se encuentra desplegado en el entorno `production` de Railway. Por su parte, el frontend utiliza el recurso `FerovaWeb` de Azure Static Web Apps, configurado con la rama `main` como origen del código.

No se consideran ambientes Development o Staging dentro de esta configuración de entrega, debido a que las evidencias disponibles corresponden a los servicios publicados en producción.

##### 3. Backend Deployment Stage (Railway)

El despliegue del Backend se realiza mediante Railway, utilizando Dockerfile como mecanismo de construcción de la aplicación.

**Etapas del proceso:**

1. **Repository Integration:** el código fuente del backend se encuentra alojado en GitHub y conectado al servicio `WebApplication1` de Railway.

2. **Docker Build:** Railway utiliza el Dockerfile del repositorio para construir la imagen de la aplicación y preparar el entorno de ejecución.

3. **Environment Configuration:** se utilizan variables de entorno para configurar parámetros necesarios para el funcionamiento del backend, incluyendo JWT, MongoDB y el servicio de correo electrónico Resend.

4. **Production Deployment:** Railway ejecuta la aplicación construida dentro del entorno `production` y proporciona una dirección pública para acceder al servicio.

5. **Deployment Verification:** se verifica que el servicio se encuentre Online y que la API REST esté disponible mediante Swagger UI.

**Figura 8.1. Historial de despliegues del Backend en Railway.**

<div align="center">
<img src="../assets/img/chapter-VI/Continuous Delivery/Historial de despliegues del Backend en Railway.png" width=500>
</div>


**Figura 8.2. Configuración del Dockerfile utilizado para construir el Backend.**

<div align="center">
<img src="../assets/img/chapter-VI/Continuous Delivery/Configuración del Dockerfile utilizado para construir el Backend.png" width=500>
</div>

**Figura 8.3. Variables de entorno configuradas en Railway.**

<div align="center">
<img src="../assets/img/chapter-VI/Continuous Delivery/Variables de entorno configuradas en Railway.png" width=500>
</div>


**Figura 8.4. Verificación de la API mediante Swagger UI.**

<div align="center">
<img src="../assets/img/chapter-VI/Continuous Delivery/Verificación de la API mediante Swagger UI.png" width=500>
</div>


##### 4. Frontend Deployment Stage (Azure Static Web Apps)

El despliegue del Frontend se realiza mediante Azure Static Web Apps, plataforma integrada con GitHub Actions para automatizar la construcción y publicación de la aplicación Angular.

**Etapas del proceso:**

1. **Repository Integration:** el recurso `FerovaWeb` se encuentra conectado al repositorio de GitHub del frontend, utilizando la rama `main` como origen del código.

2. **Workflow Execution:** Azure utiliza el archivo `azure-static-web-apps-proud-wave-064ec0610.yml` para ejecutar el proceso de construcción y despliegue.

3. **Application Build:** el workflow ejecuta la acción de despliegue de Azure Static Web Apps, que procesa la aplicación y sus archivos de salida.

4. **Production Deployment:** los archivos generados se publican mediante Azure Static Web Apps, proporcionando una dirección web pública.

5. **Deployment Verification:** se verifica el resultado de la ejecución del workflow y la disponibilidad de la aplicación FerovaClinic desde el navegador.

**Figura 8.5. Recurso FerovaWeb configurado en Azure.**

<div align="center">
<img src="../assets/img/chapter-VI/Continuous Delivery/Recurso FerovaWeb configurado en Azure.png" width=500>
</div>

**Figura 8.6. Integración del recurso Azure con GitHub.**

<div align="center">
<img src="../assets/img/chapter-VI/Continuous Delivery/Integración del recurso Azure con GitHub.png" width=500>
</div>


**Figura 8.7. Historial de implementaciones del Frontend.**

<div align="center">
<img src="../assets/img/chapter-VI/Continuous Delivery/Historial de implementaciones del Frontend.png" width=500>
</div>

**Figura 8.8. Ejecución exitosa del workflow de despliegue.**

<div align="center">
<img src="../assets/img/chapter-VI/Continuous Delivery/Ejecución exitosa del workflow de despliegue.png" width=500>
</div>


**Figura 8.9. Aplicación FerovaClinic publicada en producción.**

<div align="center">
<img src="../assets/img/chapter-VI/Continuous Delivery/Aplicación FerovaClinic publicada en producción.png" width=500>
</div>


##### 5. Deployment Pipeline Summary

La siguiente tabla resume las etapas y resultados del proceso de entrega continua implementado para los componentes de FerovaClinic.

| Componente | Etapa | Herramienta | Resultado esperado |
|---|---|---|---|
| Backend | Integración del repositorio | GitHub | Código fuente disponible. |
| Backend | Construcción de la aplicación | Dockerfile / Railway | Imagen de aplicación construida. |
| Backend | Despliegue | Railway | Servicio disponible en producción. |
| Backend | Verificación | Swagger UI | API REST accesible. |
| Frontend | Integración del repositorio | GitHub | Código fuente disponible. |
| Frontend | Construcción y publicación | Azure Static Web Apps | Aplicación publicada. |
| Frontend | Verificación | Navegador web | Aplicación accesible. |

##### Resultado de la implementación

La implementación de los procesos de Continuous Delivery permitió publicar los componentes de FerovaClinic en plataformas de alojamiento independientes. El Backend se encuentra desplegado en Railway mediante una construcción basada en Dockerfile, mientras que el Frontend se publica mediante Azure Static Web Apps utilizando la integración con GitHub Actions.

Las verificaciones realizadas confirmaron que el servicio Backend se encuentra Online y que la API está disponible mediante Swagger UI. Asimismo, el Frontend cuenta con una ejecución exitosa de despliegue y se encuentra accesible mediante su dirección pública en Azure.

## 7.3. Continuous Deployment

### 7.3.1. Tools and Practices

<!-- COMPLETAR -->

### 7.3.2. Production Deployment Pipeline Components

> Despliegue automatizado a producción: estrategia de release (blue-green, canary, rolling), versionado, rollback y evidencia de ejecución.

```yaml
# .github/workflows/cd-production.yml
```

<img src="../assets/img/chapter-VII/cd-production-run.png" alt="Despliegue a producción">

<!-- COMPLETAR -->

## 7.4. Continuous Monitoring

### 7.4.1. Tools and Practices

> Herramientas de monitoreo, observabilidad y analítica de producto seleccionadas, y su relación con las métricas de negocio definidas en la sección 8.2.2.

| Herramienta | Tipo (APM / logs / analytics / uptime) | Producto monitoreado |
|-------------|----------------------------------------|----------------------|
| [Herramienta] | [Tipo] | [Producto] |

<!-- COMPLETAR -->

### 7.4.2. Monitoring Pipeline Components

> Componentes de recolección de datos instrumentados en los productos, dashboards y métricas técnicas y de negocio observadas.

<img src="../assets/img/chapter-VII/monitoring-dashboard.png" alt="Dashboard de monitoreo">

<!-- COMPLETAR -->

### 7.4.3. Alerting Pipeline Components

> Reglas de alerta, umbrales, severidades y destinatarios.

| Alerta | Condición / umbral | Severidad | Destinatario |
|--------|--------------------|-----------|--------------|
| [Alerta] | [Condición] | [Severidad] | [Rol] |

<!-- COMPLETAR -->

### 7.4.4. Notification Pipeline Components

> Canales de notificación (correo, Slack/Discord, push), formato de los mensajes y evidencia de notificaciones recibidas.

<img src="../assets/img/chapter-VII/notification-evidence.png" alt="Evidencia de notificaciones">

<!-- COMPLETAR -->
