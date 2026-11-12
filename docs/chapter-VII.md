# Capítulo VII: DevOps Practices

## 7.1. Continuous Integration

La integración continua (CI) de Ferova se implementó mediante GitHub Actions, configurando flujos de trabajo independientes para el backend y el frontend. Estos procesos permiten verificar automáticamente la compilación de cada aplicación cuando se realizan cambios en sus respectivos repositorios.

#### 7.1.1. Tools and Practices


Para implementar la integración continua se seleccionaron herramientas que permiten automatizar la validación del código fuente y verificar la compilación de los componentes de FerovaClinic.

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


**Figura 7.2. Workflow Backend CI registrado en GitHub Actions.**


**Figura 7.3. Resultado de ejecución del pipeline Backend CI.**


**Figura 7.4. Detalle de los pasos ejecutados en el Backend CI.**

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


**Figura 7.6. Workflows registrados en GitHub Actions del frontend.**


**Figura 7.7. Resultado de ejecución del pipeline Frontend CI.**


**Figura 7.8. Detalle de los pasos ejecutados en el Frontend CI.**


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

### 7.2.1. Tools and Practices

<!-- COMPLETAR -->

### 7.2.2. Stages Deployment Pipeline Components

> Etapas del pipeline hacia los ambientes intermedios (dev, test, staging), aprobaciones y gestión de configuración/secretos por ambiente.

```yaml
# .github/workflows/cd-staging.yml
```

| Ambiente | Servicio | Trigger | Aprobación requerida |
|----------|----------|---------|----------------------|
| Development | | | |
| Staging | | | |

<!-- COMPLETAR -->

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
