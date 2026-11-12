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

El proceso de Continuous Deployment (Despliegue Continuo) de Ferova tiene como objetivo facilitar la publicación de nuevas versiones de los componentes de la plataforma en sus respectivos entornos de producción y distribución. Para ello, se utilizan servicios de alojamiento en la nube y herramientas de distribución que permiten poner las aplicaciones a disposición de sus usuarios.

A diferencia de Continuous Delivery, documentado en la sección 7.2, esta etapa se centra en la publicación de las versiones construidas y en la disponibilidad de los componentes para su utilización.


### 7.3.1. Tools and Practices

**Herramientas (Tools)**

- **GitHub Actions:** Plataforma de integración y automatización utilizada para ejecutar workflows asociados a los repositorios del proyecto. Permite gestionar procesos de construcción y despliegue del frontend y ejecutar tareas automatizadas durante el ciclo de desarrollo.

- **Railway:** Plataforma de alojamiento en la nube utilizada para desplegar el Backend REST API de Ferova. Permite construir y ejecutar la aplicación mediante Dockerfile, administrar variables de entorno y mantener disponible el servicio mediante una URL pública.

- **Azure Static Web Apps:** Servicio de alojamiento utilizado para publicar la aplicación web FerovaClinic. Se encuentra integrado con GitHub y utiliza un workflow de GitHub Actions para gestionar la construcción y publicación de los archivos de la aplicación Angular.

- **Firebase App Distribution:** Servicio utilizado para distribuir versiones de prueba de la aplicación móvil FerovaFamily. Permite cargar el archivo APK y facilitar su acceso a los testers autorizados mediante invitaciones y enlaces de distribución.

- **Docker:** Tecnología de contenedorización utilizada para empaquetar el Backend en una imagen reproducible, facilitando su ejecución en Railway.

**Prácticas (Practices)**

- **Despliegue de aplicaciones web:** Se utilizan plataformas de alojamiento independientes para publicar el Backend y el Frontend, permitiendo que cada componente tenga su propio proceso de despliegue.

- **Integración con repositorios:** Los servicios de Railway y Azure se encuentran conectados a sus respectivos repositorios de GitHub para facilitar la actualización de las aplicaciones a partir de los cambios incorporados al código fuente.

- **Gestión de variables de entorno:** Las credenciales y parámetros de configuración del Backend se administran mediante variables de entorno en Railway, evitando incorporarlos directamente al código fuente.

- **Distribución de versiones móviles:** FerovaFamily utiliza Firebase App Distribution para compartir los APK de prueba con los testers autorizados y facilitar la validación de nuevas versiones.

- **Verificación posterior al despliegue:** Se comprueba la disponibilidad del Backend mediante su API y Swagger UI, la accesibilidad del Frontend mediante su dirección pública y la correcta distribución del APK móvil.

  
### 7.3.2. Production Deployment Pipeline Components

El proceso de despliegue de Ferova comprende tres componentes principales: el Backend REST API, la aplicación web FerovaClinic y la aplicación móvil FerovaFamily. Cada componente utiliza una plataforma de publicación acorde con sus características tecnológicas.

A continuación, se describen las etapas correspondientes a cada proceso de despliegue.

#####  1. Backend Production Deployment Stage

El Backend de Ferova está desarrollado con ASP.NET Core y se encuentra alojado en Railway. La plataforma utiliza el archivo `Dockerfile` del repositorio para construir la imagen de la aplicación y ejecutar el servicio en el entorno de producción.

**Etapas del proceso:**

1. **Repository Integration:** el repositorio `WebApplication1` se encuentra conectado al servicio Backend de Railway mediante la integración con GitHub.

2. **Docker Image Build:** Railway utiliza el archivo `Dockerfile` para construir la imagen que contiene la aplicación y sus dependencias necesarias para la ejecución.

3. **Environment Configuration:** se administran las variables de entorno requeridas para el funcionamiento del servicio, incluyendo parámetros de autenticación, conexión a MongoDB y configuración del servicio de correo electrónico Resend.

4. **Production Deployment:** Railway ejecuta la imagen construida y publica el Backend en su entorno de producción, proporcionando una dirección URL de acceso.

5. **Deployment Verification:** se verifica el estado del servicio y la disponibilidad de los endpoints mediante Swagger UI.

**Figura 9.0. Servicio Backend desplegado en Railway.**

<div align="center">
<img src="../assets/img/chapter-VII/Production Deployment Pipeline Components/Servicio Backend desplegado en Railway.png" width=500>
</div>


**Figura 9.1. Historial de despliegues del Backend en Railway.**


<div align="center">
<img src="../assets/img/chapter-VII/Production Deployment Pipeline Components/Historial de despliegues del Backend en Railway.png" width=500>
</div>


**Figura 9.2. API REST de FerovaClinic disponible mediante Swagger UI.**


<div align="center">
<img src="../assets/img/chapter-VII/Production Deployment Pipeline Components/API REST de FerovaClinic disponible mediante Swagger UI.png" width=500>
</div>

##### 2. Frontend Production Deployment Stage

La aplicación web FerovaClinic está desarrollada con Angular y se encuentra publicada mediante Azure Static Web Apps. La integración con GitHub Actions permite ejecutar el workflow encargado de construir y desplegar la aplicación.

**Etapas del proceso:**

1. **Repository Integration:** el recurso `FerovaWeb` de Azure Static Web Apps se encuentra conectado al repositorio GitHub del frontend, utilizando la rama `main` como origen del código.

2. **Workflow Execution:** GitHub Actions ejecuta el archivo `azure-static-web-apps-proud-wave-064ec0610.yml`, encargado de gestionar el proceso de publicación.

3. **Application Build:** se procesan los archivos del proyecto Angular para generar los recursos estáticos necesarios para su publicación.

4. **Production Deployment:** Azure Static Web Apps publica los archivos generados y proporciona una dirección URL pública para acceder a FerovaClinic.

5. **Deployment Verification:** se comprueba el resultado de la ejecución del workflow y se accede a la aplicación desde el navegador para verificar su disponibilidad.

**Figura 9.3. Recurso FerovaWeb configurado en Azure.**

<div align="center">
<img src="../assets/img/chapter-VII/Production Deployment Pipeline Components/Recurso FerovaWeb configurado en Azure.png" width=500>
</div>

**Figura 9.4. Integración del recurso Azure con GitHub.**

<div align="center">
<img src="../assets/img/chapter-VII/Production Deployment Pipeline Components/Integración del recurso Azure con GitHub.png" width=500>
</div>

**Figura 9.5. Historial de implementaciones del Frontend.**

<div align="center">
<img src="../assets/img/chapter-VII/Production Deployment Pipeline Components/Historial de implementaciones del Frontend.png" width=500>
</div>

**Figura 9.6. Ejecución exitosa del workflow de despliegue.**

<div align="center">
<img src="../assets/img/chapter-VII/Production Deployment Pipeline Components/Ejecución exitosa del workflow de despliegue.png" width=500>
</div>

**Figura 9.7. Aplicación FerovaClinic publicada en producción.**

<div align="center">
<img src="../assets/img/chapter-VII/Production Deployment Pipeline Components/Aplicación FerovaClinic publicada en producción.png" width=500>
</div>

#####  3. Mobile Release Distribution Stage – FerovaFamily

La aplicación móvil FerovaFamily está desarrollada con Flutter y utiliza Firebase App Distribution como plataforma para distribuir versiones de prueba en formato APK. Este servicio facilita la entrega de nuevas versiones a los testers autorizados, permitiendo validar la aplicación antes de su publicación definitiva.

**Etapas del proceso:**

1. **Application Build:** se genera el archivo APK de FerovaFamily mediante el proceso de compilación de Flutter, utilizando la configuración correspondiente para obtener una versión de distribución.

2. **APK Preparation:** se prepara el archivo APK generado para su distribución, verificando que corresponda a la versión que se desea entregar a los testers.

3. **Firebase App Distribution:** se carga el APK en Firebase App Distribution, donde se registra la versión y se configura su disponibilidad para los testers autorizados.

4. **Tester Notification:** Firebase facilita la distribución de la versión mediante invitaciones y notificaciones a los testers registrados.

5. **Installation and Verification:** los testers pueden acceder al APK, instalar la aplicación FerovaFamily en sus dispositivos Android y comprobar su funcionamiento.

**Figura 9.8. Proyecto FerovaFamily configurado en Firebase.**

<div align="center">
<img src="../assets/img/chapter-VII/Production Deployment Pipeline Components/Proyecto FerovaFamily configurado en Firebase.png" width=500>
</div>

**Figura 9.9. Versión APK de FerovaFamily registrada en Firebase App Distribution.**

<div align="center">
<img src="../assets/img/chapter-VII/Production Deployment Pipeline Components/Versión APK de FerovaFamily registrada en Firebase App Distribution.png" width=500>
</div>

**Figura 10.1. Distribución de FerovaFamily a los testers autorizados.**

<div align="center">
<img src="../assets/img/chapter-VII/Production Deployment Pipeline Components/Distribución de FerovaFamily a los testers autorizados.png" width=500>
</div>

**Figura 10.2. Aplicación FerovaFamily instalada en un dispositivo Android.**

<div align="center">
<img src="../assets/img/chapter-VII/Production Deployment Pipeline Components/Aplicación FerovaFamily instalada en un dispositivo Android.jpg" width=200>
</div>



##### 4. Post-Deployment Verification Stage

Después de la publicación de los componentes, se realizan comprobaciones para verificar que los servicios se encuentren disponibles y que las aplicaciones puedan utilizarse correctamente.

Las verificaciones consideradas son las siguientes:

- **Backend:** comprobar que el servicio de Railway se encuentre activo y que los endpoints de la API REST respondan correctamente mediante Swagger UI.
- **Frontend:** acceder a la dirección pública de Azure Static Web Apps y comprobar que la aplicación FerovaClinic cargue correctamente.
- **Mobile:** verificar que el APK de FerovaFamily se encuentre disponible en Firebase App Distribution y que pueda instalarse y ejecutarse en un dispositivo Android.

**Figura 10.3. Verificación de disponibilidad del Backend.**

<div align="center">
<img src="../assets/img/chapter-VII/Production Deployment Pipeline Components/Verificación de disponibilidad del Backend.png" width=500>
</div>


**Figura 10.4. Verificación de FerovaClinic en producción.**

<div align="center">
<img src="../assets/img/chapter-VII/Production Deployment Pipeline Components/Verificación de FerovaClinic en producción.png" width=500>
</div>


**Figura 10.5. Verificación de instalación de FerovaFamily en Android.**

<div align="center">
<img src="../assets/img/chapter-VII/Production Deployment Pipeline Components/Verificación de instalación de FerovaFamily en Android.jpeg" width=200>
</div>

##### Resumen del proceso de despliegue

| Componente | Plataforma | Artefacto publicado | Resultado |
|---|---|---|---|
| Backend | Railway | Imagen Docker | API REST disponible en producción. |
| Frontend | Azure Static Web Apps | Archivos estáticos de Angular | Aplicación web disponible en producción. |
| FerovaFamily | Firebase App Distribution | Archivo APK | Versión móvil disponible para testers autorizados. |

**Resultado de la implementación**

La implementación de los mecanismos de despliegue y distribución permite publicar los componentes de Ferova en plataformas independientes. El Backend se encuentra alojado en Railway, la aplicación web FerovaClinic está publicada mediante Azure Static Web Apps y la aplicación móvil FerovaFamily utiliza Firebase App Distribution para compartir sus versiones APK con los testers autorizados.

De esta manera, se dispone de mecanismos diferenciados para la publicación de los servicios web y la distribución de la aplicación móvil, facilitando el acceso y la validación de los componentes de la plataforma.


## 7.4. Continuous Monitoring

Esta sección documenta las herramientas y prácticas utilizadas para supervisar el funcionamiento de la plataforma Ferova después de cada despliegue. El monitoreo continuo permite verificar la disponibilidad de los servicios publicados, identificar errores durante la ejecución y realizar un seguimiento de las versiones distribuidas.

En Ferova, el monitoreo comprende los siguientes componentes: el Backend REST API desplegado en Railway, la aplicación web FerovaClinic publicada mediante Azure Static Web Apps y la aplicación móvil FerovaFamily distribuida a través de Firebase App Distribution. Asimismo, GitHub Actions permite consultar el resultado de los procesos automatizados de integración y despliegue.

### 7.4.1. Tools and Practices

Para la etapa de *Continuous Monitoring* (Monitoreo Continuo) de Ferova, se utilizan herramientas que permiten supervisar la disponibilidad de los servicios desplegados, revisar los registros de ejecución y realizar el seguimiento de las versiones publicadas. Estas herramientas complementan las prácticas de integración, entrega y despliegue continuo documentadas en las secciones anteriores, facilitando la identificación de errores y la verificación del estado de los componentes de la plataforma.

**Herramientas (Tools)**

Las herramientas seleccionadas para el monitoreo de Ferova son las siguientes:

| Herramienta | Tipo (APM / logs / analytics / uptime) | Producto monitoreado |
|---|---|---|
| Railway | Logs / Uptime | Backend REST API |
| Azure Static Web Apps | Uptime / Deployment Monitoring | FerovaClinic (Frontend Web) |
| GitHub Actions | Logs / Workflow Monitoring | Backend y Frontend |
| Firebase App Distribution | Release Monitoring | FerovaFamily (Aplicación móvil) |

**Descripción de las herramientas**

- **Railway:** Se utiliza para supervisar el estado del servicio Backend REST API. Permite consultar el historial de despliegues, revisar los registros de ejecución e identificar errores relacionados con el arranque de la aplicación o la configuración del servicio.

- **Azure Static Web Apps:** Permite verificar la disponibilidad de FerovaClinic en producción y consultar el historial de implementaciones realizadas mediante la integración con GitHub Actions.

- **GitHub Actions:** Permite supervisar las ejecuciones de los workflows de integración y despliegue continuo. Mediante sus registros se pueden identificar ejecuciones exitosas o fallidas, revisar los pasos ejecutados y relacionar los resultados con los commits correspondientes.

- **Firebase App Distribution:** Se utiliza para distribuir versiones de FerovaFamily a testers autorizados. Permite realizar el seguimiento de las versiones distribuidas y facilitar la validación de nuevas compilaciones durante las pruebas móviles.

**Prácticas (Practices)**

- **Verificación posterior al despliegue:** Después de cada despliegue, se comprueba que el frontend y el backend se encuentren disponibles. También se verifica que la versión móvil distribuida pueda ser instalada y probada por los testers autorizados.

- **Monitoreo de disponibilidad:** Se revisa que las URL públicas del frontend y del backend respondan correctamente, verificando el acceso a los servicios publicados.

- **Revisión de logs:** Se consultan los registros de Railway y GitHub Actions para identificar errores de ejecución, problemas de configuración o fallos durante los procesos de despliegue.

- **Seguimiento de implementaciones:** Se revisa el historial de despliegues de Azure Static Web Apps y Railway para mantener la trazabilidad de las versiones publicadas y sus respectivos resultados.

- **Seguimiento de versiones móviles:** Se verifica la distribución de las versiones de FerovaFamily mediante Firebase App Distribution, asegurando que los testers autorizados puedan acceder a las compilaciones disponibles.

- **Gestión de incidencias:** Cuando se identifica un error, se registra el componente afectado y se revisan los logs correspondientes para determinar su posible causa y aplicar las correcciones necesarias.

- **Mejora continua:** Los resultados obtenidos durante el monitoreo se utilizan para corregir errores, ajustar las configuraciones y mejorar los procesos de integración, entrega y despliegue de la plataforma Ferova.


### 7.4.2. Monitoring Pipeline Components

El pipeline de monitoreo de Ferova está compuesto por los mecanismos y herramientas encargados de supervisar el estado de los componentes de la plataforma después de cada despliegue. Su objetivo es verificar la disponibilidad de los servicios publicados, revisar los resultados de las ejecuciones de los workflows y facilitar la identificación de errores durante la operación de la aplicación.

Este proceso complementa las etapas de Continuous Integration, Continuous Delivery y Continuous Deployment, ya que permite comprobar el estado de las versiones publicadas y mantener la trazabilidad de los posibles incidentes.

#### 1. Monitoring Sources

El monitoreo comienza con la recopilación de información desde los principales componentes desplegados de Ferova:

- **Frontend Web Application:** desplegada mediante Azure Static Web Apps. Se supervisa mediante la verificación de su URL pública, el acceso a la aplicación y el historial de implementaciones.
- **Backend REST API:** desplegado en Railway. Se supervisa mediante el estado del servicio, el historial de despliegues y los registros de ejecución.
- **Mobile Application:** FerovaFamily se distribuye mediante Firebase App Distribution, permitiendo realizar el seguimiento de las versiones compartidas con los testers autorizados y recibir sus comentarios durante las pruebas.
- **CI/CD Workflows:** ejecutados mediante GitHub Actions. Se revisan sus resultados para identificar ejecuciones exitosas o fallidas durante los procesos de compilación y despliegue.

#### 2. Backend Monitoring Component

El componente de monitoreo del backend permite verificar que el servicio REST API desplegado en Railway se encuentre activo y pueda atender las solicitudes de los clientes.

Para ello, se utilizan las siguientes fuentes de información:

- Estado del servicio en Railway.
- Historial de implementaciones.
- Registros de ejecución (logs).
- Errores relacionados con el inicio de la aplicación.
- Problemas de configuración o conexión con la base de datos.

**Estado del servicio Backend en Railway**

La figura muestra el servicio WebApplication1 desplegado en Railway con estado Online, evidenciando que el backend se encuentra activo en el entorno de producción.

<div align="center">
<img src="../assets/img/chapter-VII/Monitoring Pipeline Components/Backend en Railway.png" width=500>
</div>


#### 3. Frontend Availability Check Component

El componente de disponibilidad del frontend permite comprobar que FerovaClinic se encuentre accesible para los usuarios desde su dirección pública de Azure Static Web Apps.

Esta verificación considera:

- Acceso correcto a la URL pública.
- Disponibilidad de la aplicación web.
- Carga inicial de la interfaz.
- Acceso a la página de inicio de sesión.
- Ausencia de errores visibles que impidan utilizar la aplicación.

**Frontend Web Application publicado en Azure**

La figura muestra FerovaClinic publicada en Azure Static Web Apps, permitiendo comprobar que la aplicación web se encuentra disponible en producción.

<div align="center">
<img src="../assets/img/chapter-VII/Monitoring Pipeline Components/FerovaClinic en producción.png" width=500>
</div>


#### 4. Log Review Component

El componente de revisión de logs permite analizar los eventos generados durante la ejecución de los servicios y los workflows.

En Ferova, los registros se revisan principalmente desde:

- **Railway:** para identificar errores de ejecución del backend, problemas de conexión y fallos durante el inicio del servicio.
- **GitHub Actions:** para revisar los resultados de los workflows, los pasos ejecutados y los errores producidos durante la compilación o el despliegue.
- **Azure Static Web Apps:** para consultar el historial de implementaciones y detectar posibles fallos durante la publicación del frontend.

Los registros permiten identificar problemas técnicos y relacionarlos con una implementación o ejecución específica.

**Logs e historial de despliegues del Backend**

<div align="center">
<img src="../assets/img/chapter-VII/Monitoring Pipeline Components/historial de despliegues de Railway.png" width=500>
</div>

#### 5. Basic Metrics Component

El componente de métricas básicas permite realizar un seguimiento del estado de los productos desplegados mediante indicadores obtenidos de las herramientas utilizadas.

| Métrica | Fuente | Propósito |
|---|---|---|
| Disponibilidad del backend | Railway | Confirmar que el servicio se encuentre activo. |
| Disponibilidad del frontend | Azure Static Web Apps | Verificar que FerovaClinic esté publicada y accesible. |
| Resultado de workflows | GitHub Actions | Identificar ejecuciones exitosas o fallidas. |
| Historial de despliegues | Railway / Azure | Consultar el estado de las implementaciones. |
| Versiones móviles distribuidas | Firebase App Distribution | Identificar las versiones disponibles para los testers. |
| Incidencias reportadas | Firebase App Distribution | Revisar los comentarios y problemas comunicados durante las pruebas móviles. |

Estas métricas permiten realizar una supervisión básica de la disponibilidad y estabilidad de los componentes sin requerir una plataforma APM adicional.

#### 6. Post-Deployment Verification Component

Después de cada despliegue, el equipo realiza una verificación para comprobar que los componentes publicados funcionen correctamente.

La verificación posterior al despliegue incluye:

1. Confirmar que FerovaClinic responda desde su URL pública de Azure Static Web Apps.
2. Comprobar que el backend se encuentre activo en Railway.
3. Revisar el historial y resultado del despliegue correspondiente.
4. Verificar el acceso a la documentación Swagger de la API.
5. Comprobar el funcionamiento de las principales operaciones de la aplicación.
6. Revisar que FerovaFamily pueda instalarse y ejecutarse desde la versión distribuida mediante Firebase App Distribution.

Esta práctica permite comprobar el funcionamiento de los productos después de su publicación y detectar posibles problemas antes de considerar estable una versión.

#### 7. CI/CD Workflow Monitoring Component

El monitoreo de los procesos de integración y despliegue se realiza mediante GitHub Actions, que permite consultar las ejecuciones de los workflows configurados en los repositorios del backend y frontend.

Los workflows permiten revisar:

- La ejecución de los pasos de preparación del entorno.
- La instalación o restauración de dependencias.
- La compilación de los proyectos.
- El resultado de cada ejecución.
- Los errores registrados durante el proceso.

**Ejecución de los workflows de integración continua**

<div align="center">
<img src="../assets/img/chapter-VII/Monitoring Pipeline Components/workflow exitoso del Backend.png" width=500>
</div>

<div align="center">
<img src="../assets/img/chapter-VII/Monitoring Pipeline Components/workflow exitoso del Frontend.png" width=500>
</div>

Las ejecuciones permiten mantener la trazabilidad de los cambios realizados y verificar que los procesos automatizados finalicen correctamente.

#### 8. Incident Review Component

Cuando se identifica un problema durante el monitoreo, el equipo revisa la incidencia para determinar el componente afectado y aplicar una corrección.

El proceso de revisión comprende:

1. Identificar el problema mediante los logs, el estado del servicio o el resultado de un workflow.
2. Determinar si el componente afectado corresponde al frontend, backend o aplicación móvil.
3. Revisar los registros y la implementación relacionada.
4. Identificar la posible causa del problema.
5. Aplicar la corrección correspondiente.
6. Ejecutar nuevamente las validaciones necesarias.
7. Verificar que el componente afectado funcione correctamente.

Este proceso permite mantener la trazabilidad de los problemas identificados y facilita la corrección de errores durante el mantenimiento de la plataforma.

#### 9. Monitoring Pipeline Summary

El pipeline de monitoreo de Ferova se resume de la siguiente manera:

1. Se publica una nueva versión de uno de los componentes de la plataforma.
2. Railway y Azure Static Web Apps permiten consultar el estado de los servicios desplegados.
3. GitHub Actions registra los resultados de los workflows de integración y despliegue.
4. Se verifica que el backend y frontend se encuentren disponibles.
5. Se revisan los logs y el historial de implementaciones.
6. Se verifica la disponibilidad de las versiones móviles distribuidas mediante Firebase App Distribution.
7. Si se identifica un problema, se revisan los registros y se aplica la corrección correspondiente.
8. Se realizan nuevamente las verificaciones para comprobar el funcionamiento de la versión corregida.

De esta manera, los componentes del Monitoring Pipeline permiten mantener visibilidad sobre el estado de FerovaClinic, el Backend REST API y FerovaFamily, facilitando la detección de errores y la supervisión de las versiones publicadas.

### 7.4.3. Alerting Pipeline Components

El pipeline de alertas de Ferova está compuesto por los mecanismos que permiten identificar problemas durante la ejecución de los servicios, los procesos de despliegue y las pruebas de las aplicaciones. Su objetivo es convertir los eventos detectados durante el monitoreo en incidencias que puedan ser revisadas y atendidas por el equipo de desarrollo.

Las alertas se identifican a partir de los resultados de GitHub Actions, los registros de Railway, el historial de implementaciones de Azure Static Web Apps y los reportes recibidos durante la distribución de FerovaFamily mediante Firebase App Distribution.

#### 1. Alert Sources

Las alertas pueden originarse desde los principales servicios y herramientas utilizados en la plataforma Ferova:

- **GitHub Actions:** permite identificar fallos durante la compilación y ejecución de los workflows del backend y frontend. Una ejecución con estado `failure` indica que alguno de los pasos del proceso requiere revisión.
- **Railway:** permite detectar problemas relacionados con el estado del backend, errores durante el inicio del servicio y fallos registrados en los logs.
- **Azure Static Web Apps:** permite identificar implementaciones fallidas y problemas relacionados con la publicación o disponibilidad de FerovaClinic.
- **Firebase App Distribution:** permite recibir comentarios de los testers autorizados sobre errores o comportamientos inesperados en FerovaFamily.
- **Backend REST API:** los errores en las solicitudes y respuestas de los endpoints pueden evidenciar problemas funcionales o técnicos que requieren atención.

#### 2. Alert Rules Component

El componente de reglas de alerta establece las condiciones que permiten identificar cuándo un evento debe tratarse como una incidencia y requiere una revisión por parte del equipo.

| Regla | Condición | Tipo de alerta |
|---|---|---|
| Fallo del workflow | GitHub Actions termina una ejecución con estado `failure`. | Técnica |
| Backend no disponible | El servicio en Railway presenta errores o no se encuentra activo. | Técnica |
| Fallo de implementación del frontend | Azure Static Web Apps registra una implementación fallida. | Técnica |
| Error de API | Los endpoints del backend presentan errores durante su utilización. | Técnica / funcional |
| Error de configuración | Se detectan problemas relacionados con variables de entorno o conexiones del servicio. | Técnica |
| Error móvil reportado | Un tester comunica un fallo durante las pruebas de FerovaFamily. | Técnica / funcional |

Estas reglas funcionan como criterios para reconocer incidencias durante la supervisión de los componentes. Su identificación puede realizarse mediante los estados de las plataformas, sus registros y la revisión de los reportes recibidos.

#### 3. Severity Classification Component

Cada incidencia se clasifica según el impacto que puede generar sobre la disponibilidad de los servicios y el funcionamiento de las aplicaciones. Esta clasificación permite establecer prioridades para su atención.

| Nivel de severidad | Descripción | Ejemplo |
|---|---|---|
| Crítica | Un servicio principal deja de estar disponible e impide utilizar una parte esencial de la plataforma. | El Backend REST API no responde y FerovaClinic no puede consultar información. |
| Alta | Una funcionalidad principal presenta errores que afectan las operaciones de los usuarios. | El personal de salud no puede registrar controles de hemoglobina. |
| Media | Una funcionalidad secundaria presenta errores, pero el resto de la aplicación continúa disponible. | Un reporte o indicador no se muestra correctamente. |
| Baja | Se presenta un problema visual o menor que no impide utilizar las funcionalidades principales. | Un elemento de interfaz presenta una visualización incorrecta. |

Esta clasificación permite priorizar las incidencias según su impacto y determinar cuáles requieren atención inmediata.

#### 4. Alert Processing Component

Cuando se identifica una alerta, el equipo realiza una revisión para determinar su origen, el componente afectado y las acciones necesarias para resolverla.

El procesamiento de alertas de Ferova sigue el siguiente flujo:

1. Se identifica el evento mediante GitHub Actions, Railway, Azure Static Web Apps o los reportes de Firebase App Distribution.
2. Se determina el componente afectado: frontend, backend o aplicación móvil.
3. Se revisan los logs, el historial de implementaciones y los resultados de los workflows.
4. Se establece el nivel de severidad de la incidencia.
5. Se identifica la posible causa del problema.
6. Se asigna la corrección al integrante responsable.
7. Se realiza el cambio correspondiente y se ejecutan las validaciones necesarias.
8. Se comprueba nuevamente el funcionamiento del componente afectado.

Este procedimiento permite atender las incidencias de manera ordenada y mantener la trazabilidad de las correcciones realizadas.

#### 5. Escalation Component

El componente de escalamiento establece las situaciones en las que una incidencia requiere mayor prioridad o una intervención adicional del equipo de desarrollo.

Una incidencia debe escalarse cuando:

- El backend continúa sin estar disponible después de una revisión o nuevo despliegue.
- Una implementación del frontend presenta fallos que impiden acceder a FerovaClinic.
- Un error en un endpoint afecta una operación principal de la plataforma.
- Una versión de FerovaFamily presenta un error que impide completar una funcionalidad importante.
- El mismo problema vuelve a presentarse después de aplicar una corrección.
- Una incidencia afecta la integridad o disponibilidad de la información gestionada.

Cuando una incidencia requiere escalamiento, el equipo revisa los cambios recientes, identifica la causa del problema, implementa una corrección y vuelve a validar el componente afectado antes de considerar resuelta la incidencia.

#### 6. Technical Alert Examples

A continuación, se presentan ejemplos de incidencias técnicas y funcionales que pueden identificarse durante el monitoreo de Ferova.

| Evento | Alerta identificada | Acción |
|---|---|---|
| Fallo del workflow de backend | Error durante la compilación del backend. | Revisar los logs y corregir el código o las dependencias. |
| Backend no disponible en Railway | Servicio REST API fuera de servicio. | Revisar el estado del servicio y sus registros de ejecución. |
| Implementación fallida en Azure | FerovaClinic no se actualiza correctamente. | Revisar el workflow y la configuración de publicación. |
| Error en un endpoint | Una operación de la API devuelve una respuesta inesperada. | Revisar el endpoint y realizar pruebas funcionales. |
| Error reportado por un tester | Fallo durante el uso de FerovaFamily. | Reproducir el problema y corregir la funcionalidad afectada. |

#### 7. Alerting Pipeline Summary

El pipeline de alertas de Ferova puede resumirse de la siguiente manera:

1. Se produce un evento durante la ejecución o utilización de uno de los componentes de la plataforma.
2. Las herramientas de monitoreo permiten identificar el problema.
3. Se determina el tipo y nivel de severidad de la incidencia.
4. El equipo revisa los registros y resultados relacionados.
5. Se identifica el componente afectado y la posible causa.
6. Se define y aplica la corrección correspondiente.
7. Se ejecutan nuevamente las validaciones de integración y despliegue cuando corresponda.
8. Se verifica que el componente funcione correctamente y se da por resuelta la incidencia.

De esta manera, los componentes del Alerting Pipeline permiten que Ferova transforme los problemas identificados durante el monitoreo en incidencias que puedan ser analizadas y corregidas, contribuyendo a mantener la disponibilidad y estabilidad de FerovaClinic, el Backend REST API y FerovaFamily.


### 7.4.4. Notification Pipeline Components

> Canales de notificación (correo, Slack/Discord, push), formato de los mensajes y evidencia de notificaciones recibidas.

<img src="../assets/img/chapter-VII/notification-evidence.png" alt="Evidencia de notificaciones">

<!-- COMPLETAR -->
