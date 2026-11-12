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
