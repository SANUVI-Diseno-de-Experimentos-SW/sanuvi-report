# Capítulo VI: Product Verification & Validation

## 6.1. Testing Suites & Validation

### 6.1.1. Core Entities Unit Tests

> Pruebas unitarias sobre las entidades y value objects del dominio. Incluir el código de las pruebas y la evidencia de ejecución.

```
// [ruta del archivo de pruebas]
```

<img src="../assets/img/chapter-VI/unit-tests-run.png" alt="Ejecución de unit tests">

<!-- COMPLETAR -->

### 6.1.2. Core Integration Tests

> Pruebas de integración entre capas y con la base de datos / servicios externos.

<!-- COMPLETAR -->

### 6.1.3. Core Behavior-Driven Development

En esta sección se aplican técnicas de Behavior-Driven Development (BDD) para definir y validar el comportamiento esperado del sistema Ferova desde la perspectiva del usuario.
BDD permite crear una especificación ejecutable que sirve como documentación viva del sistema y como base para las pruebas automatizadas.

Se utiliza Gherkin como lenguaje de especificación, estructurando los escenarios con el formato Given-When-Then, lo que facilita la comunicación entre el equipo técnico y los stakeholders del negocio.

### Feature Files - Funcionalidades Core

#### Feature 1: Gestión de Pacientes

```gherkin

Feature: Gestión de la información del paciente

Como madre, quiero gestionar la información de mi hijo,
para mantener sus datos registrados
y facilitar el seguimiento de su tratamiento.

Scenario: Registrar nuevo paciente

Background:
    Given el usuario ha iniciado sesión como Madre
    And se encuentra con la sección pacientes

Scenario: Registrar nuevo paciente
  Given no existe pacientes registrados
  When la madre completa el formulario:
      | Campo       | Valor                |
      | Nombre      | Francheso            |
      | Apellido    | Basilio              |
      | Peso        | 50                   |
      | Precio      | 150                  |
  Then el sistema registra a dicho paciente

Scenario: Información inválida del paciente
  Given que se proporciona información incompleta
  When  la madre intenta registrar al paciente
  Then el sistema muestra "Ingresar datos para el registro del paciente"

```

#### Feature 10: Autenticación y Seguridad

```gherkin

Feature: Gestión de autenticación y seguridad

  Como usuario Quiero registrarme con mi rol respectivo
  Para acceder a las funcionalidades de la aplicación.

Scenario: Registro exitoso
    Given el usuario tiene credenciales validas
    When ingresa su dni "76919351"
    And ingresa su contraseña
    And hace click en "Iniciar Seccion"
    And se registra la fecha y hora del acceso
    And se muestra mensaje "Bienvenido de nuevo, [Nombre]"

 Scenario: Credenciales incorrectas:
    Given el usuario ingresa dni válido
    When ingresa contraseña incorrecta
    And hace clic en "Iniciar Sesión"
    Then el sistema muestra "Credenciales Incorrectas"
    And no permite el acceso

  Scenario: Solicitud de recuperación de contraseña mediante el correo
    Given el usuario olvidó su contraseña
    When selecciona "¿Olvidaste tu contraseña?"
    And ingresa su email registrado
    And hace clic en "Enviar codigo de validacion"
    Then recibe email con el codigo de 4 digitos
    And ingresa dicho codigo de validacion
    And puede crear una nueva contraseña.

  Scenario: Cerrar sesión de forma segura
    Given el usuario ha terminado su trabajo
    When selecciona "Cerrar Sesión"
    Then el sistema invalida el token de sesión
    And redirige a la página de inicio de sesión
    And limpia datos sensibles del navegador
```

#### Feature 11: Gestion de Roles

```gherkin

Feature: Control de acceso basado en roles

  Como developer del sistema
  Quiero que cada funcionalidad esté disponible solo para los roles autorizados
  Para proteger los datos de salud de las madres y de sus pacientes

Background:

  Scenario: Registrar una madre asigna el rol Mother
    Given el sistema define tres roles fijos: "Admin", "Nurse" y "Mother"
    And cada usuario inicia sesión con su DNI y contraseña y recibe un token JWT
    And el token de una madre incluye "motherId" y el de una enfermera incluye "nurseId"

 Scenario Outline: Registrar personal asigna el rol indicado
    When se registra personal con el rol
    Then el sistema responde 201 Created
    And al iniciar sesión recibe un token que incluye el rol
    Examples:
      | rol   |
      | Nurse |
      | Admin |

  Scenario: Una madre solo accede a las funciones de madre
    Given el usuario ha iniciado sesión con el rol "Mother"
    Then el usuario solo tiene acceso a:
      | Módulo permitido          | Funcionalidad                                                  |
      | Gestión de pacientes      | Registrar paciente, ver mis pacientes, evolución de hemoglobina |
      | Diario nutricional        | Registrar alimento, ver diario de hoy, ver historial           |
      | Seguimiento de tratamiento | Confirmar dosis, ver dosis de hoy, ver historial de dosis      |
      | Citas                     | Reservar y cancelar citas, ver postas cercanas, próxima cita   |
    And no puede acceder a:
      | Módulo restringido        | Funcionalidad                                                  |
      | Historia clínica          | Crear y consultar historias clínicas                           |
      | Control de hemoglobina    | Registrar controles                                            |
      | Gestión de pacientes      | Asignarse pacientes, dar de alta, buscar madres                |
      | Seguimiento de tratamiento | Iniciar, completar o abandonar tratamientos, ver riesgo        |
      | Citas                     | Ver la agenda de la enfermera                                  |
      | Postas de salud           | Registrar postas y asignar enfermeras                          |

  Scenario: Una enfermera solo accede a las funciones de enfermera
    Given el usuario ha iniciado sesión con el rol "Nurse"
    Then el usuario solo tiene acceso a:
      | Módulo permitido          | Funcionalidad                                                         |
      | Gestión de pacientes      | Asignarse pacientes, buscar madres, ver pacientes asignados, dar de alta |
      | Historia clínica          | Crear y consultar historias clínicas de sus pacientes                 |
      | Control de hemoglobina    | Registrar controles y consultar el historial                          |
      | Seguimiento de tratamiento | Iniciar, completar y abandonar tratamientos, ver riesgo               |
      | Citas                     | Ver la agenda de citas de su posta                                    |
    And no puede acceder a:
      | Módulo restringido        | Funcionalidad                                                  |
      | Gestión de pacientes      | Registrar pacientes, ver "mis pacientes" de una madre          |
      | Diario nutricional        | Registrar alimento, ver diario e historial                     |
      | Seguimiento de tratamiento | Confirmar dosis, ver dosis de hoy e historial de dosis         |
      | Citas                     | Reservar o cancelar citas, ver postas cercanas, próxima cita   |
      | Postas de salud           | Registrar postas y asignar enfermeras                          |

  Scenario: Un administrador gestiona las postas de salud
    Given el usuario ha iniciado sesión con el rol "Admin"
    Then el usuario tiene acceso a:
      | Módulo permitido | Funcionalidad                                                  |
      | Postas de salud  | Registrar postas, consultar distritos, asignar enfermeras a postas |
    And ni una madre ni una enfermera pueden usar esas funciones

```

<!-- COMPLETAR -->

### 6.1.4. Core System Tests

> Pruebas de sistema / aceptación end-to-end sobre el producto desplegado.

<!-- COMPLETAR -->

## 6.2. Static testing & Verification

### 6.2.1. Static Code Analysis

#### 6.2.1.1. Coding standard & Code conventions

> Reglas y linters configurados por repositorio, y evidencia de su ejecución.

<!-- COMPLETAR -->

#### 6.2.1.2. Code Quality & Code Security

> Resultados del análisis estático (por ejemplo, SonarQube / SonarCloud, CodeQL): bugs, code smells, vulnerabilidades, cobertura y duplicación.

<img src="../assets/img/chapter-VI/static-analysis.png" alt="Reporte de análisis estático">

| Métrica | Valor | Umbral definido |
|---------|-------|-----------------|
| Bugs | | |
| Vulnerabilities | | |
| Security Hotspots | | |
| Code Smells | | |
| Coverage | | |
| Duplications | | |

<!-- COMPLETAR -->

### 6.2.2. Reviews

> Evidencia de revisiones de código (Pull Requests con comentarios, checklist de revisión y acuerdos del equipo).

<!-- COMPLETAR -->

## 6.3. Validation Interviews

### 6.3.1. Diseño de Entrevistas

> Elementos a validar y preguntas por segmento objetivo sobre el producto ya implementado.

**Segmento 1: [Nombre del segmento]**

*Elementos a validar*

<!-- COMPLETAR -->

*Preguntas*

<!-- COMPLETAR -->

**Segmento 2: [Nombre del segmento]**

<!-- COMPLETAR -->

### 6.3.2. Registro de Entrevistas

| Campo | Dato |
|-------|------|
| Nombres y apellidos | [Nombre] |
| Edad | [Edad] |
| Distrito | [Distrito] |
| Fecha | [DD/MM/AAAA] |
| Timing | [inicio] — duración [mm:ss] |
| Enlace del video | [URL] |

<img src="../assets/img/chapter-VI/validation-interview-01.png" alt="Captura entrevista de validación 1">

*Resumen:* <!-- COMPLETAR -->

<!-- COMPLETAR: repetir por cada entrevista -->

### 6.3.3. Evaluaciones según heurísticas

> Evaluación heurística UX (Nielsen) por aplicación, con cabecera del formato indicado en el statement, tabla de severidad y lista de hallazgos.

**UX Heuristics & Principles Evaluation**

| Campo | Dato |
|-------|------|
| Carrera | Ingeniería de Software |
| Curso | Diseño de Experimentos de Ingeniería de Software |
| Sección | [Sección] |
| Profesor | [Docente] |
| Auditor | [Nombre] |
| Fecha | [DD/MM/AAAA] |
| Nombre de App | Ferova |
| Tareas evaluadas | [lista] |

**Escala de severidad**

| Nivel | Descripción |
|-------|-------------|
| 1 | Problema superficial |
| 2 | Problema menor |
| 3 | Problema mayor |
| 4 | Problema catastrófico |

**Hallazgos**

| # | Problema | Escala de severidad | Heurística / Principio violado | Recomendación |
|---|----------|---------------------|--------------------------------|---------------|
| 1 | [Problema] | [1-4] | [Heurística] | [Recomendación] |

<!-- COMPLETAR -->

## 6.4. Auditoría de Experiencias de Usuario

### 6.4.1. Auditoría realizada

#### 6.4.1.1. Información del grupo auditado

| Campo | Dato |
|-------|------|
| Startup auditada | [Nombre] |
| Producto | [Nombre] |
| Integrantes | [Nombres] |
| Repositorio / despliegue | [URL] |

#### 6.4.1.2. Cronograma de auditoría realizada

| Fecha | Actividad | Participantes | Duración |
|-------|-----------|---------------|----------|
| [DD/MM/AAAA] | [Actividad] | [Nombres] | [hh:mm] |

#### 6.4.1.3. Contenido de auditoría realizada

| # | Problema | Escala de severidad | Heurística / Principio violado | Recomendación |
|---|----------|---------------------|--------------------------------|---------------|
| 1 | [Problema] | [1-4] | [Heurística] | [Recomendación] |

<!-- COMPLETAR -->

### 6.4.2. Auditoría recibida

#### 6.4.2.1. Información del grupo auditor

| Campo | Dato |
|-------|------|
| Startup auditora | [Nombre] |
| Integrantes | [Nombres] |

#### 6.4.2.2. Cronograma de auditoría recibida

| Fecha | Actividad | Participantes | Duración |
|-------|-----------|---------------|----------|
| [DD/MM/AAAA] | [Actividad] | [Nombres] | [hh:mm] |

#### 6.4.2.3. Contenido de auditoría recibida

| # | Problema | Escala de severidad | Heurística / Principio violado | Recomendación |
|---|----------|---------------------|--------------------------------|---------------|
| 1 | [Problema] | [1-4] | [Heurística] | [Recomendación] |

#### 6.4.2.4. Resumen de modificaciones para subsanar hallazgos

| # Hallazgo | Modificación realizada | Evidencia (commit / captura) | Responsable |
|------------|------------------------|------------------------------|-------------|
| 1 | [Modificación] | [enlace] | [Nombre] |

<!-- COMPLETAR -->
