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
      | Nombre      | Franchesco           |
      | Apellido    | Basilio              |
      | Peso        | 50                   |
      | Precio      | 150                  |
  Then el sistema registra a dicho paciente

Scenario: Información inválida del paciente
  Given que se proporciona información incompleta
  When  la madre intenta registrar al paciente
  Then el sistema muestra "Ingresar datos para el registro del paciente"

```

#### Feature 2: Gestion del Diario Nutricional

```gherkin

Feature: Gestion del Diario Nutricional de un paciente

Como madre, quiero llevar un registro de los alimentos que consume mi hijo durante el día
para conocer su alimentación
y el aporte de hierro asociado a los alimentos registrados.

Background:
    Given el usuario ha iniciado sesión como Madre
    And tiene pacientes registrados
    And se encuentra en la sección diario nutricional

Scenario: Registro de alimentos exitoso
   Given no existe un diario nutricional para un paciente
   When la madre selecciona o busca un alimento
   Then introduce los gramos de dicho alimento que va consumir:
       | Campo       | Valor                |
       | Gramos      | 20                   |
   Then el sistema registra muestra "Alimento registrado"

Scenario Resumen Nutricional 
  Given la madre ha registrado alimentos durante el día
  When consulta el resumen nutricional del día
  Then puede visualizar:
      | Información              |
      | Hierro Absorvido         |
      | Alimentos de Hoy         |
  
```

#### Feature 3: Gestion de Postas Medicas

```gherkin

Feature: Gestion de Postas Medicas

Como administrador, quiero registrar una nueva posta de salud con su información de ubicación
y servicios disponibles, para incorporarla al registro de postas
y permitir la gestión de sus atenciones.

Background:
    Given el usuario ha iniciado sesión como Admin
    And no tiene postas registradas

Scenario: Registro exitoso de una posta
    Given que el administrador desea registrar una nueva posta
    When el administrador complete dicho formulario:
        | Campo                   | Valor                                                                        |
        | Nombre de la posta      | Posta Santa Anita                                                            |
        | Dirección               | Av. Jiron de la Union                                                        |
        | Distrito                | San Juan de Miraflores                                                       | 
        | Ubicación               | Ubicacion respectiva al mapa (sacando la latitude, longitude)                |
        | Numero de teléfono      | +51 936266001                                                                |
        | Servicios               | Pediatría, Vacunación                                                        |
        | Horarios disponibles    | Lun, Mar, Mie, Ju, Vi, Sab, Dom                                              |
        | Horas disponibles       | 7:00, 8:00, 9:00, 11: 00, 12:00, 2:00                                        |
   Then el sistema dicha posta

Scenario: Asignación de Enfermero a posta
    Given que el administrador desea asignar a un enfermero(a) en una posta
    When selecciona una posta sin un enfermero
    Then podrá seleccionar desde una lista al enfermero para dicha posta
         | Información              |
         | Nombre del enfermero     |

Scenario: Consulta de postas cercanas
    Given que la madre tiene pacientes registrados y permite el acceso a su ubicación,
    When consulta la sección de  "postas cercanas",
    Then deben mostrarse las postas activas ordenadas según su ubicación actual.

```

#### Feature 4: Gestion de Citas

```gherkin

Feature: Gestion de Citas

Como madre, quiero reservar, consultar y cancelar citas para mis pacientes,
para organizar sus controles médicos en las postas de salud disponibles.

Scenario: Reserva de cita exitosa
    Given que la madre tiene un paciente registrado
    And selecciona una posta, fecha y hora disponible,
        | Campo                   | Valor                                                                        |
        | Posta                   | Posta Santa Anita                                                            |
        | Fecha                   | 20/11/2026                                                                   |
        | Hora                    | 9:00                                                                         | 
    When confirma la reserva,
    Then la cita debe registrarse correctamente y debe mostrarse un mensaje de confirmación.

Scenario: Cancelación de cita
    
    Given que la madre tiene una cita registrada,
    When selecciona la opción de cancelar y confirma la acción,
    Then la cita debe quedar registrada con estado cancelado
    And debe mostrarse un mensaje de confirmación.

Scenario: Horario ocupado

    Given que la madre selecciona un horario que ya fue reservado,
    When intenta confirmar la cita,
    Then debe mostrarse un mensaje indicando que el horario no está disponible
    And no debe registrarse la cita.
```

#### Feature 5: Gestion de Historial Medico

```gherkin

Feature: Gestion de Historial Medico

Como enfermera, quiero consultar y gestionar el historial médico inicial de un paciente asignado a mi cartera,
para contar con información clínica que facilite el seguimiento medico del paciente.

Background:
    Given el usuario ha iniciado sesión como Nurse
    And Tiene Pacientes asignado a su cartera


Scenario: Historial médico inicial

Given que el paciente se encuentra asignado a la cartera de la enfermera
When la enfermera incorpora la información clínica inicial del paciente.
        | Campo                                  | Valor                                |
        | Peso                                   | 60                                   |
        | Altura                                 | 159                                  |
        | Motivo de Consulta                     | Baja Hemoglobina                     |
        | Antecedentes                           | Anemia: Familiar                     |
        | Sintomas Detectados                    | Anemia, Diabetis                     |

Then el historial médico del paciente queda disponible para su seguimiento.

Scenario: Información clínica incompleta

Given que la información clínica necesaria del paciente está incompleta
When la enfermera intenta incorporar el historial médico
Then la información no se completa y se indica qué datos son necesarios para continuar.

Scenario: Actualización del historial médico

Given que el paciente cuenta con un historial médico registrado
When la enfermera actualiza la información clínica del paciente
Then el historial médico queda actualizado con la nueva información para continuar con su seguimiento.

```

#### Feature 6: Registro del control de hemoglobina

```gherkin

Feature: Registro del control de hemoglobina

Como enfermero, quiero gestionar el registro de los controles de hemoglobina de los pacientes,
para mantener actualizada la información de su evolución
y determinar automáticamente su estado de anemia.

Background:
    Given el usuario ha iniciado sesión como Nurse
    And Tiene Pacientes asignado a su cartera

Scenario: Registro del control exitoso

Given que se recibe un paciente asignado a la enfermera y una historia clínica existente,
When se valida que el nivel de hemoglobina se encuentra dentro del rango permitido,
            | Campo                                  | Valor                                |
            | Nivel                                  | 20                                   |
Then se registra dicho nivel de hemoglobina
And se registra correctamente el nuevo control de hemoglobina.

Scenario: Nivel de hemoglobina fuera de rango

Given que se ingrese un nivel menor que 0 o mayor que 30 g/dL,
When el sistema valida el valor proporcionado,
Then responde con un error indicando que el nivel de hemoglobina debe encontrarse entre 0 y 30 g/dL.

Scenario: Paciente sin historia clínica

Given que se ingrese un control para un paciente que no cuenta con una historia clínica,
When el sistema verifique la información clínica requerida,
Then responde con un error indicando que la historia clínica no existe y no registra el control.

Scenario: Determinación del estado de anemia

Given que se ingrese con un nivel de hemoglobina válido,
When el sistema registra el control y evalúa el valor proporcionado,
Then determina automáticamente el estado de anemia correspondiente según el rango del nivel de hemoglobina.

```

#### Feature 7: Registro del cumplimiento de dosis

```gherkin

Feature: Registro del cumplimiento de dosis

Como madre, quiero registrar el cumplimiento de las dosis de mi paciente,
para llevar un seguimiento de su tratamiento.

Background:
    Given el usuario ha iniciado sesión como Mother
    And Tiene Pacientes registrados

Scenario: Registro exitoso del cumplimiento

Given que la madre tiene un tratamiento activo para su paciente,
When confirma que ha administrado la dosis correspondiente del día,
Then el sistema debe registrar la dosis como cumplida y actualizar el seguimiento del tratamiento.

Scenario: Dosis ya registrada

Given que la dosis correspondiente al día ya fue registrada,
When la madre intenta confirmar nuevamente la misma dosis,
Then el sistema debe informar que la dosis ya fue registrada y evitar duplicar el registro.

Scenario: Tratamiento no activo

Given que el paciente no tiene un tratamiento activo,
When la madre intenta registrar una dosis,
Then el sistema debe informar que no existe un tratamiento activo para registrar la dosis.

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

    Given el sistema define tres roles fijos: "Admin", "Nurse" y "Mother"
    And cada usuario inicia sesión con su DNI y contraseña y recibe un token JWT
    And el token de una madre incluye "motherId" y el de una enfermera incluye "nurseId"

 Scenario: Registrar personal asigna el rol indicado
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
