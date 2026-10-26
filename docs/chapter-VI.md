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

Las pruebas de integración verifican que los módulos del sistema interactúen correctamente entre sí. Para ello se utilizó **xUnit** junto con `WebApplicationFactory<Program>`, que levanta la API completa de ASP.NET Core en memoria, y **Mongo2Go**, que provee una instancia embebida de MongoDB durante la ejecución de los tests. Esto permite probar el flujo real desde la capa HTTP hasta la persistencia, sin depender de infraestructura externa.


### Core Integration Tests — IAM

Cada test registra sus propios usuarios con DNI y correo únicos, por lo que los casos son independientes entre sí. Para el módulo IAM se implementaron tres clases de prueba:

| Clase | Endpoints cubiertos | Casos |
| --- | --- | --- |
| `AuthenticationIntegrationTests` | `register/mother`, `login` | 6 |
| `StaffRegistrationIntegrationTests` | `register/staff`, `users/email/{email}`, `login` | 7 |
| `PasswordResetIntegrationTests` | `password/request-code`, `password/verify-code`, `password/reset` | 5 |


##### Prueba 1 — Flujo de autenticación (IAM)

**Clase:** `AuthenticationIntegrationTests`

Valida la comunicación entre un cliente HTTP y los endpoints REST del módulo IAM. Cubre el ciclo completo de registro de una madre e inicio de sesión, incluyendo la generación del token JWT y el manejo de errores por credenciales inválidas o datos duplicados.

| Caso | Endpoint | Resultado esperado |
| --- | --- | --- |
| Registro de madre con datos válidos | `POST /api/users/register/mother` | `201 Created` + mensaje de confirmación |
| Registro con DNI duplicado | `POST /api/users/register/mother` | `400 Bad Request` |
| Registro con correo duplicado | `POST /api/users/register/mother` | `400 Bad Request` |
| Inicio de sesión válido | `POST /api/users/login` | `200 OK` + token JWT |
| Contraseña incorrecta | `POST /api/users/login` | `401 Unauthorized` |
| Usuario inexistente | `POST /api/users/login` | `401 Unauthorized` |

*\[Insertar captura de la ejecución de `AuthenticationIntegrationTests` en Rider\]*

##### Prueba 2 — Registro de personal (staff)

**Clase:** `StaffRegistrationIntegrationTests`

Valida el alta de personal de salud (enfermera y administrador) y comprueba que los datos enviados queden guardados correctamente en la base de datos, consultándolos después por correo. También verifica el manejo de roles inválidos y de DNI repetidos, y que el personal registrado pueda iniciar sesión.

| Caso | Endpoint | Resultado esperado |
| --- | --- | --- |
| Registro con rol válido (`Nurse` y `Admin`) | `POST /api/users/register/staff` | `201 Created` + mensaje de confirmación |
| Datos guardados correctamente (`Nurse` y `Admin`) | `POST /api/users/register/staff` y `GET /api/users/email/{email}` | `200 OK` con nombre, apellido, DNI, correo, teléfono y rol iguales a los enviados |
| Rol inexistente | `POST /api/users/register/staff` | `400 Bad Request` |
| DNI duplicado | `POST /api/users/register/staff` | `400 Bad Request` |
| Inicio de sesión del personal registrado | `POST /api/users/login` | `200 OK` + token JWT |

*\[Insertar captura de la ejecución de `StaffRegistrationIntegrationTests` en Rider\]*

**Hallazgo detectado por la prueba:** al registrar personal con un DNI duplicado, la API respondía `500 Internal Server Error` porque el controlador solo capturaba `ArgumentException` y no `InvalidOperationException`. Se corrigió para devolver `400 Bad Request`, igual que el registro de madres.

##### Prueba 3 — Recuperación de contraseña

**Clase:** `PasswordResetIntegrationTests`

Valida los casos de error del flujo de recuperación de contraseña en sus tres pasos: solicitar código, verificarlo y restablecer la contraseña. Comprueba que la API rechace correos inexistentes y códigos inválidos, y que ante un intento fallido la contraseña original siga funcionando.

| Caso | Endpoint | Resultado esperado |
| --- | --- | --- |
| Solicitar código con correo inexistente | `POST /api/users/password/request-code` | `400 Bad Request` |
| Verificar código con correo inexistente | `POST /api/users/password/verify-code` | `400 Bad Request` |
| Verificar código sin haberlo solicitado | `POST /api/users/password/verify-code` | `400 Bad Request` |
| Restablecer con correo inexistente | `POST /api/users/password/reset` | `400 Bad Request` |
| Restablecer con código inválido | `POST /api/users/password/reset` y `POST /api/users/login` | `400 Bad Request`; el inicio de sesión con la contraseña original devuelve `200 OK` |

*\[Insertar captura de la ejecución de `PasswordResetIntegrationTests` en Rider\]*

**Alcance:** el flujo exitoso (solicitar código, verificarlo y restablecer) no está cubierto porque el código se envía por correo electrónico. Para probarlo se requiere reemplazar el servicio de correo por un doble de prueba que capture el código enviado.

---

### Core Integration Tests — Nutrition Diary

Para el módulo Nutrition Diary se implementó la clase de prueba `NutritiondiaryintegrationTests`. Los casos utilizan `HttpClient` y `MongoWebApplicationFactory` para validar la interacción con los endpoints REST, incluyendo la seguridad, las validaciones de datos y las consultas de información nutricional.

| Clase | Endpoints cubiertos | Casos |
| --- | --- | --- |
| `NutritiondiaryintegrationTests` | `food-entry`, `today/{patientId}`, `history/{patientId}`, `foods/search`, `foods/{foodItemId}` | 17 |

##### Prueba 1 — Seguridad y autorización (Nutrition Diary)

**Clase:** `NutritiondiaryintegrationTests`

Valida los mecanismos de autenticación y autorización de los endpoints destinados a las madres. Comprueba que las solicitudes sin token sean rechazadas, que el personal de salud no pueda acceder a los endpoints exclusivos para madres y que el token de una madre contenga el claim `motherId` requerido para identificarla.

| Caso | Endpoint | Resultado esperado |
| --- | --- | --- |
| Registro de consumo sin token | `POST /api/nutritional-diary/food-entry` | `401 Unauthorized` |
| Consulta diaria sin token | `GET /api/nutritional-diary/today/{patientId}` | `401 Unauthorized` |
| Consulta del historial sin token | `GET /api/nutritional-diary/history/{patientId}` | `401 Unauthorized` |
| Registro de consumo con token de personal de salud | `POST /api/nutritional-diary/food-entry` | `403 Forbidden` |
| Consulta diaria con token de personal de salud | `GET /api/nutritional-diary/today/{patientId}` | `403 Forbidden` |
| Consulta del historial con token de personal de salud | `GET /api/nutritional-diary/history/{patientId}` | `403 Forbidden` |
| Token de madre con claim `motherId` | `GET /api/nutritional-diary/history/{patientId}` | No devuelve `401 Unauthorized`, `403 Forbidden` ni el mensaje `Mother ID no encontrado` |

*[Insertar captura de la ejecución de `NutritiondiaryintegrationTests` en Rider]*

##### Prueba 2 — Validación del registro de consumo de alimentos

**Clase:** `NutritiondiaryintegrationTests`

Comprueba las validaciones del endpoint de registro de consumo de alimentos, verificando que las solicitudes con campos obligatorios faltantes o cantidades negativas sean rechazadas por la API.

| Caso | Endpoint | Resultado esperado |
| --- | --- | --- |
| Registro con campos obligatorios faltantes | `POST /api/nutritional-diary/food-entry` | `400 Bad Request` + mensaje `Faltan campos requeridos` |
| Registro con cantidad negativa | `POST /api/nutritional-diary/food-entry` | `400 Bad Request` |

##### Prueba 3 — Consulta diaria e historial de pacientes

**Clase:** `NutritiondiaryintegrationTests`

Valida el comportamiento de los endpoints de consulta diaria e historial cuando la madre autenticada solicita información de un paciente inexistente o que no le pertenece.

| Caso | Endpoint | Resultado esperado |
| --- | --- | --- |
| Consulta diaria de paciente inexistente o no asociado | `GET /api/nutritional-diary/today/{patientId}` | `400 Bad Request` |
| Consulta del historial de paciente inexistente o no asociado | `GET /api/nutritional-diary/history/{patientId}` | `400 Bad Request` |

##### Prueba 4 — Búsqueda de alimentos

**Clase:** `NutritiondiaryintegrationTests`

Verifica el comportamiento del endpoint público de búsqueda de alimentos. Comprueba que la API rechace búsquedas con texto vacío, espacios en blanco o sin el parámetro requerido, y que permita realizar una búsqueda válida sin autenticación.

| Caso | Endpoint | Resultado esperado |
| --- | --- | --- |
| Búsqueda con texto vacío | `GET /api/nutritional-diary/foods/search?text=` | `400 Bad Request` |
| Búsqueda con texto compuesto por espacios | `GET /api/nutritional-diary/foods/search?text=...` | `400 Bad Request` |
| Búsqueda sin el parámetro `text` | `GET /api/nutritional-diary/foods/search` | `400 Bad Request` |
| Búsqueda válida de alimentos (`arroz`) | `GET /api/nutritional-diary/foods/search?text=arroz` | `200 OK`, sin token de autenticación |

##### Prueba 5 — Consulta de detalles de alimentos

**Clase:** `NutritiondiaryintegrationTests`

Comprueba la respuesta de la API cuando se solicitan los detalles de un alimento mediante un identificador inexistente, utilizando tanto un identificador con formato ObjectId como una cadena de texto que no corresponde a un alimento registrado.

| Caso | Endpoint | Resultado esperado |
| --- | --- | --- |
| Consulta con identificador inexistente en formato ObjectId | `GET /api/nutritional-diary/foods/{foodItemId}` | `400 Bad Request` |
| Consulta con identificador inexistente en formato de texto | `GET /api/nutritional-diary/foods/{foodItemId}` | `400 Bad Request` |

*[Insertar captura de la ejecución de `NutritiondiaryintegrationTests` en Rider]*

**Alcance:** las pruebas de esta clase se concentran en seguridad, validaciones y consultas. No se incluyen escenarios de registro exitoso de consumo de alimentos ni consultas exitosas de información diaria e historial. Asimismo, el endpoint de alimentos por categoría (`foods/category/{category}`) está definido en `NutritionDiaryApi.cs`, pero no cuenta con casos de prueba en esta clase.



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

Feature: Gestión del Historial Médico
  Como enfermero, quiero consultar y gestionar el historial médico inicial de un paciente asignado a mi cartera,
  para contar con información clínica que facilite el seguimiento médico del paciente.

  Background:
    Given el usuario ha iniciado sesión como Nurse
    And tiene pacientes asignados a su cartera

  Scenario: Registro del historial médico inicial
    Given que el paciente se encuentra asignado a la cartera de la enfermera
    And el paciente no cuenta con un historial médico previo
    When la enfermera ingresa la siguiente información clínica inicial:
      | Campo                | Valor              |
      | Peso                 | 12.5 kg            |
      | Altura               | 85 cm              |
      | Motivo de Consulta   | Baja Hemoglobina   |
      | Antecedentes         | ALERGIA: Penicilina|
      | Síntomas             | Fatiga, Palidez    |
    And el sistema valida que todos los campos obligatorios están completos
    Then se registra el historial médico con estado "ACTIVO"
    And el historial queda disponible para su consulta y seguimiento
    And el paciente cambia de "Pendiente de historial" a "Historial registrado"

  Scenario: Consulta del historial médico existente
    Given que el paciente ya cuenta con un historial médico registrado
    When la enfermera accede al módulo de historial del paciente
    Then el sistema muestra los datos clínicos completos:
      | Sección      | Información mostrada                        |
      | Cabecera     | Nombre, edad, sexo, peso, altura            |
      | Clínico      | Motivo de consulta y observaciones          |
      | Antecedentes | Lista de antecedentes registrados           |
      | Síntomas     | Lista de síntomas reportados                |
      | Controles    | Historial de controles de hemoglobina       |

  Scenario: Información clínica incompleta
    Given que la enfermera está en el formulario de registro de historial médico
    When la enfermera intenta guardar el historial dejando campos obligatorios vacíos:
      | Campo faltante       | Estado   |
      | Peso                 | Vacío    |
      | Motivo de Consulta   | Vacío    |
    Then el sistema no registra el historial médico
    And muestra un mensaje indicando que el peso y el motivo de consulta son obligatorios
    And el botón "Guardar Historial" permanece deshabilitado

  Scenario: Actualización del historial médico
    Given que el paciente cuenta con un historial médico registrado
    When la enfermera actualiza la siguiente información clínica:
      | Campo          | Valor Nuevo         |
      | Peso           | 13.0 kg             |
      | Observaciones  | Mejora en el apetito|
      | Síntomas       | Ninguno             |
    And el sistema valida los nuevos datos
    Then el historial médico se actualiza con la nueva información
    And se registra la fecha de última actualización ("updatedAt")
    And el historial queda disponible con los datos actualizados para su seguimiento

```

#### Feature 6: Registro del control de hemoglobina

```gherkin

Feature: Registro del control de hemoglobina
  Como enfermero, quiero gestionar el registro de los controles de hemoglobina de los pacientes,
  para mantener actualizada la información de su evolución
  y determinar automáticamente su estado de anemia.

  Background:
    Given el usuario ha iniciado sesión como Nurse
    And tiene pacientes asignados a su cartera


  Scenario: Registro del control exitoso
    Given que se recibe un paciente asignado a la enfermera con historia clínica existente
    And el enfermero ingresa el siguiente nivel de hemoglobina:
      | Campo | Valor |
      | Nivel | 10.5  |
    When el sistema valida que el nivel de hemoglobina se encuentra dentro del rango permitido (0 - 30 g/dL)
    Then se registra el nivel de hemoglobina en la historia clínica del paciente
    And se crea un nuevo control con la fecha actual y el estado de anemia correspondiente


  Scenario: Nivel de hemoglobina fuera de rango
    Given que el enfermero ingresa un nivel de hemoglobina menor que 0 o mayor que 30 g/dL
    When el sistema valida el valor proporcionado
    Then responde con un error indicando "El nivel de hemoglobina debe encontrarse entre 0 y 30 g/dL"
    And no registra el control en la historia clínica


  Scenario: Paciente sin historia clínica
    Given que el enfermero intenta registrar un control para un paciente que no cuenta con historia clínica
    When el sistema verifica la información clínica requerida
    Then responde con un error indicando que la historia clínica no existe
    And no registra el control

  Scenario Outline: Determinación automática del estado de anemia
    Given que el enfermero ingresa un nivel de hemoglobina válido de "<nivel>"
    When el sistema registra el control y evalúa el valor proporcionado
    Then determina automáticamente el estado de anemia como "<estado>"

    Examples:
      | nivel | estado     |
      | 6.5   | SEVERE     |
      | 8.0   | MODERATE   |
      | 10.0  | MILD       |
      | 12.0  | CONTROLLED |

```

#### Feature 7: Gestión de Tratamientos

```gherkin

Feature: Inicio del tratamiento

Como enfermero, quiero gestionar el inicio del tratamiento de un paciente,
para establecer sus condiciones de tratamiento y generar las dosis correspondientes.

Background:
    Given el usuario ha iniciado sesión como Nurse
    And Tiene Pacientes asignado a su cartera
    
Scenario: Inicio de tratamiento exitoso

Given que el enfermero ingrese suplemento, cantidad, horario y duración del tratamiento,
        | Campo                                  | Valor                                |
        | suplemento                             | Sulfato ferroso                      |
        | cantidad                               | 20 gramos                            |
        | horario                                | 9:00 AM                              |
        | duración                               | 5 dias                               |

When el sistema valida que el paciente existe y no tiene un tratamiento activo,
Then el sistema registra dicho tratamiento,
And crea el tratamiento con estado ACTIVE y genera las dosis correspondientes.

Scenario: Tratamiento completado exitosamente
    Given que el enfermero accede al detalle de un tratamiento con estado "ACTIVE"
    And el paciente ha mostrado un gran avance en la adherencia (tasa >= 85%)
    When el enfermero selecciona la opción "Marcar como completado"
    And ingresa la justificación clínica: "El paciente ha completado el ciclo de 90 días..."
    And el sistema valida el ID del tratamiento y la observación
    Then el sistema actualiza el tratamiento con estado "COMPLETED"
    And registra la observación en el campo "completionObservation"
    And actualiza automáticamente la ficha epidemiológica y el padrón HIS-MINSA
    And los botones de acción desaparecen y se muestra la nota clínica registrada

Scenario: Registrar abandono de tratamiento
    Given que el enfermero accede al detalle de un tratamiento con estado "ACTIVE"
    And el paciente no ha respondido a las dosis o al contacto con la madre
    When el enfermero selecciona la opción "Registrar abandono"
    And ingresa la justificación: "No hay respuesta de dicho paciente, no se ha tomado la dosis..."
    And el sistema valida el ID del tratamiento y la observación
    Then el sistema actualiza el tratamiento con estado "ABANDONED"
    And registra la observación en el campo "abandonmentObservation"
    And notifica al promotor de salud para visita domiciliaria en las próximas 48 horas
    And los botones de acción desaparecen y se muestra la nota clínica registrada

```

#### Feature 8: Registro del cumplimiento de dosis

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

#### Feature 9: Registro del cumplimiento de dosis

```gherkin

Feature: Dar de Alta a un Paciente
  Como desarrollador, quiero gestionar el alta de un paciente mediante una API,
  para finalizar su seguimiento clínico cuando corresponda.

  Background:
    Given el sistema tiene un paciente registrado con estado "ACTIVE"
    And el paciente está asignado a la enfermera autenticada

  Scenario: Alta exitosa de un paciente
    Given que se recibe una solicitud "PUT /discharge" con el ID de un paciente existente
    When la API verifica que la enfermera autenticada está asignada al paciente
    Then la API responde con un estado "200 OK"
    And el estado del paciente cambia de "ACTIVE" a "DISCHARGED"
    And el paciente ya no aparece en la lista de pacientes activos de la enfermera


  Scenario: Intento de alta de un paciente inexistente
    Given que se recibe una solicitud "PUT /discharge" con un identificador de paciente inexistente
    When la API verifica la existencia del paciente
    Then la API responde con un estado "400 Bad Request"
    And retorna un mensaje de error indicando que el paciente no fue encontrado
    And el estado del paciente no sufre modificaciones

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
