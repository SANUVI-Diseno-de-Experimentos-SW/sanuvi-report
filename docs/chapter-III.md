# Capítulo III: Requirements Specification

## 3.1. To-Be Scenario Mapping

Los siguientes Scenario Maps (To-Be) representan el recorrido propuesto para los dos perfiles de usuario identificados a partir del análisis de los escenarios As-Is. Para cada persona se mantienen las mismas fases del proceso actual, incorporando las mejoras y funcionalidades propuestas para Sanuvi. Se describen las actividades que realizarían los usuarios, los pensamientos asociados y las emociones esperadas durante cada etapa. Esta representación permite visualizar cómo la solución propuesta transforma el proceso actual y cómo contribuye a facilitar el seguimiento del tratamiento, organizar la información y mejorar la interacción entre las familias y el personal de salud.

**Segmento Madres, padres y cuidadores:** En el siguiente escenario To-Be se presenta el flujo de trabajo propuesto para María López, desarrollado a partir del análisis del escenario As-Is y la identificación de oportunidades de mejora. Se mantienen las mismas fases del escenario actual para facilitar la comparación y se incorporan las funcionalidades de Sanuvi orientadas a organizar el tratamiento, registrar el cumplimiento de las dosis, consultar la evolución, gestionar las citas, registrar la alimentación y mantener la comunicación con el personal de salud. De esta manera, se busca facilitar el seguimiento del tratamiento y brindar mayor control y claridad durante el proceso.

<br>

<div aling="center">
<img src="../assets/img/chapter-III/To Be Scenario Mapping - Maria Lopez.jpg">
</div>

<br>

**Segmento Personal de salud:** En el siguiente escenario To-Be se presenta el flujo de trabajo propuesto para Carlos Rojas, desarrollado a partir del análisis del escenario As-Is y la identificación de oportunidades de mejora. Se mantienen las mismas fases del escenario actual para facilitar la comparación y se incorporan las funcionalidades de Sanuvi orientadas a organizar la información clínica, registrar controles, realizar el seguimiento de los niveles de hemoglobina, coordinar las citas y mantener la comunicación con las familias. Con ello, se busca facilitar el seguimiento de los pacientes y proporcionar información organizada para apoyar la atención y la toma de decisiones.

<br>

<div aling="center">
<img src="../assets/img/chapter-III/To Be Scenario Mapping - Carlos Rojas.jpg">
</div>

<br>

## 3.2. User Stories

Para el presente proyecto, se definieron historias de usuario a partir de las epics principales identificadas durante la fase de análisis. Estas historias permiten describir, de forma concreta y centrada en el usuario, las funcionalidades clave del sistema, sirviendo como base para su diseño, desarrollo y validación.


**Epics**


<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Epic ID</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>EP-01</td>
      <td>High</font></td>
      <td>EP-01</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Comunicación de valor del negocio</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b></td>
    </tr>
    <tr>
      <td colspan="4">
Como visitante, quiero entender claramente el valor de la plataforma y ser guiado mediante acciones concretas, para sentirme motivado a registrarme o descargar la aplicación.
      </td>
    </tr>
  </tbody>
</table>

<br>

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Epic ID</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>EP-02</td>
      <td>High</font></td>
      <td>EP-02</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Autenticacion y Acceso</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b></td>
    </tr>
    <tr>
      <td colspan="4">
      Como usuario de la plataforma, quiero registrarme e iniciar sesión en la plataforma, para acceder a mi cuenta de forma segura.
      </td>
    </tr>
  </tbody>
</table>

<br>


<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Epic ID</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>EP-03</td>
      <td>High</font></td>
      <td>EP-03</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Seguridad de los usuarios</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b></td>
    </tr>
    <tr>
      <td colspan="4">
Como usuario de la plataforma, quiero asegurar mi cuenta, para evitar el acceso indebido a mi cuenta.     
      </td>
    </tr>
  </tbody>
</table>

<br>


<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Epic ID</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>EP-04</td>
      <td>High</font></td>
      <td>EP-04</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Gestion de la informacion del Pacientes</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b></td>
    </tr>
    <tr>
      <td colspan="4">
        Como madre o enfermera, quiero gestionar la información de mi paciente, para tener sus datos organizados y facilitar su seguimiento.
      </td>
    </tr>
  </tbody>
</table>

<br>

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Epic ID</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>EP-05</td>
      <td>High</font></td>
      <td>EP-05</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Seguimiento del Tratamiento</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b></td>
    </tr>
    <tr>
      <td colspan="4">
        Como madre o enfermera, quiero realizar el seguimiento del tratamiento de mi paciente, para controlar su cumplimiento y conocer su evolución.
      </td>
    </tr>
  </tbody>
</table>

<br>

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Epic ID</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>EP-06</td>
      <td>High</font></td>
      <td>EP-06</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Diario Nutricional</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b></td>
    </tr>
    <tr>
      <td colspan="4">
        Como madre, quiero registrar la alimentación de mi paciente, para llevar un control de los alimentos consumidos durante su tratamiento.
      </td>
    </tr>
  </tbody>
</table>

<br>

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Epic ID</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>EP-07</td>
      <td>Medium</font></td>
      <td>EP-07</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Gamificacion</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b></td>
    </tr>
    <tr>
      <td colspan="4">
        Como madre, quiero visualizar mis avances mediante puntos, rachas e insignias, para mantener la motivación y constancia durante el tratamiento.
      </td>
    </tr>
  </tbody>
</table>

<br>

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Epic ID</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>EP-08</td>
      <td>High</font></td>
      <td>EP-08</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Gestion de Postas y Citas</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b></td>
    </tr>
    <tr>
      <td colspan="4">
        Como administrador, quiero gestionar las postas médicas , para organizar el seguimiento de los pacientes en las postas.
      </td>
    </tr>
  </tbody>
</table>

<br>


<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Epic ID</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>EP-09</td>
      <td>Medium</font></td>
      <td>EP-09</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Analytics y Reportes</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b></td>
    </tr>
    <tr>
      <td colspan="4">
        Como enfermera o administrador, quiero visualizar información y reportes sobre el estado de los tratamientos y las postas médicas, para monitorear la evolución de los pacientes y analizar el seguimiento realizado en cada posta.
      </td>
    </tr>
  </tbody>
</table>

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Epic ID</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>EP-10</td>
      <td>High</font></td>
      <td>EP-10</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Comunicación y consultas</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b></td>
    </tr>
    <tr>
      <td colspan="4">
Como madre o enfermera, quiero gestionar consultas relacionadas con el tratamiento y seguimiento del paciente, para facilitar la comunicación entre ambos y resolver dudas durante el proceso de atención.
      </td>
    </tr>
  </tbody>
</table>

**User Stories**

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>US-01</td>
      <td>Visitante</td>
      <td>High</td>
      <td>EP-01</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Conocer el valor de negocio de la plataforma</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
        Como visitante del sitio web estático
Quiero determinar el valor de negocio
Para tomar la decisión de convertirme en usuario de la plataforma
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: El visitante conoce el propósito de la plataforma</strong>
        <br><br>
        Dado que el visitante desea saber si la plataforma es confiable<br>
Cuando accede al sitio web estático<br>
Entonces identifica claramente el propósito general de la plataforma.
        <br><br>
        <strong>Escenario #2: El visitante conoce los beneficios que ofrece la plataforma</strong>
        <br><br>
        Dado que el visitante desea conocer la plataforma<br>
Cuando accede a la sección de Para quien<br>
Entonces encuentra los beneficios que obtendrá por usar la plataforma según su el rol
        <br><br>
        <strong>Escenario #3: El visitante conoce como funciona la plataforma</strong>
        <br><br>
        Dado que el visitante desea conocer como funciona la plataforma<br>
Cuando accede a la sección de  como funciona<br>
Entonces encuentra una linea de tiempo de inicia a fin indicando paso a paso como funciona la plataforma
        <br><br>
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>US-02</td>
      <td>Visitante</td>
      <td>High</td>
      <td>EP-01</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Aumento de confianza sobre la plataforma</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
        Como visitante,
Quiero conocer sobre los testimonios de otras personas
Para aumentar la confianza sobre el uso de la plataforma
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: Visitante lee los testimonios de clientes.</strong>
        <br><br>
 Dado que el visitante desea saber si la plataforma es confiable<br>
Cuando accede a la sección de testimonios<br>
Entonces puede conocer las experiencias de otros usuarios con la plataforma y sus funcionalidades.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>US-03</td>
      <td>Visitante</td>
      <td>High</td>
      <td>EP-01</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Acceso a las aplicaciones</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
        Como visitante,
Quiero acceder o descargar la aplicación
Para empezar a usarla en mis operaciones de negocio.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: El visitante toma la decisión de acceder a la plataforma web</strong>
        <br><br>
Dado que el visitante reconoce que la plataforma es confiable<br>
Cuando accede a convertirse en usuario de la plataforma<br>
Entonces es redirigido a la página web.
        <br><br>
  <strong>Escenario #2: El visitante toma la decisión de descargar la aplicación móvil</strong>
                <br><br>
Dado que el visitante reconoce que la plataforma es confiable<br>
Cuando accede a convertirse en usuario de la plataforma<br>
Entonces es redirigido a la tienda de aplicaciones de su sistema operativo para descargar la aplicación.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>US-04</td>
      <td>Usuario</td>
      <td>High</td>
      <td>EP-02</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Registro de usuario</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
        Como usuario Quiero registrarme con mi rol respectivo Para acceder a las funcionalidades de la aplicación.
              </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: Registro exitoso</strong>
      <br><br>
Dado que el usuario no tenga una cuenta<br>
Cuando complete el registro (Nombre completo, DNI ,email, contraseña y rol)<br>
Entonces se crea su cuenta e ingresa con su respectivo rol elegido.
              <br><br>
    <strong>Escenario #2: Registro fallido</strong>
      <br><br>
Dado que el usuario no tenga una cuenta<br>
Cuando ingrese un email con un formato no válido, una contraseña débil y un dni sin 8 digitos<br>
Entonces se muestra un mensaje indicando que los datos ingresados no son válidos y no se realiza el registro del visitante.
      <br><br>
<strong>Escenario #3: Registro con correo existente:</strong>
        <br><br>
        Dado que el usuario no tenga una cuenta<br> 
        cuando ingrese un correo ya asociado a una cuenta<br> 
        entonces se muestra un mensaje indicando que no se pudo completar el registro.
        <br><br>
        <strong>Escenario #3: Registro con dni existente</strong>
        <br><br>
        Dado que el usuario no tenga una cuenta<br> 
        cuando ingrese un dni ya asociado a una cuenta<br> 
        entonces se muestra un mensaje indicando que no se pudo completar el registro.
        <br><br>
        <strong>Escenario #3: Registro con numero telefonico existente</strong>
        <br><br>
        Dado que el usuario no tenga una cuenta<br> 
        cuando ingrese un numero telefonico ya asociado a una cuenta<br> 
        entonces se muestra un mensaje indicando que no se pudo completar el registro.
        <br><br>
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>US-05</td>
      <td>Usuario</td>
      <td>High</td>
      <td>EP-02</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Inicio de sesión</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
        Como usuario no autenticado quiero iniciar sesión para acceder de forma seguro a mi cuenta.
      </td>
    </tr>
    <tr>
      <td colspan="4">
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
      <strong>Escenario #1: Inicio de sesión exitoso:</strong>
      <br><br>
Dado que el usuario tenga una cuenta registrada <br> cuando ingrese sus credenciales (dni y contraseña) <br> entonces accede a su cuenta.
<br><br>
<strong>Escenario #2: Credenciales incorrectas:</strong>
<br><br>
Dado que el usuario no haya iniciado sesión<br>
Cuando ingrese un correo o contraseña incorrectos<br>
Entonces se muestra un mensaje indicando que las credenciales no son válidas y no se le permite el acceso a su cuenta.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>TS-01</td>
      <td>Developer</td>
      <td>High</td>
      <td>EP-02</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Autenticación de usuarios</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como developer quiero autenticar a los usuarios de forma segura a través de una API para que se permita el acceso al sistema.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: Inicio de sesión exitoso:</strong>
        <br><br>
        Dado que se envíe una solicitud al api/v1//sign-in con el dni y contraseña <br> cuando los datos son válidos <br> entonces la API responde con un estado 200 OK y genera un token de acceso.
        <br><br>
        <strong>Escenario #2: Credenciales incorrectas:</strong> <br><br>
       Dado que se envíe una solicitud al api/v1//sign-in con credenciales incorrectas <br> cuando la API verifica las credenciales <br> entonces la API responde con un estado 401 UNAUTHORIZED.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>TS-02</td>
      <td>Developer</td>
      <td>High</td>
      <td>EP-02</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Registro de usuarios</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como developer, quiero gestionar el registro de usuarios de forma segura a través de una API, para permitir la creación de cuentas en el sistema como una funcionalidad de mi aplicación.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: Registro exitoso de una madre</strong>
        <br><br>
        Dado que se envíe una solicitud a /register/mother con sus datos personales y credenciales<br>
cuando la API valida los datos proporcionados y no exista una cuenta asociada<br>
entonces el API responde con un estado 201 CREATED.
        <br><br>
    <strong>Escenario #2: Registro exitoso de enfermera o administrador</strong>
        <br><br>
Dado que se envíe una solicitud a /register/staff con sus datos personales, credenciales y rol
cuando la API valida los datos proporcionados, no exista una cuenta asociada y el rol corresponda a Nurse o Admin <br>
entonces el API responde con un estado 201 CREATED.
        <br><br>
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>US-06</td>
      <td>Usuario</td>
      <td>High</td>
      <td>EP-03</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Solicitar recuperación de acceso</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como usuario quiero solicitar la recuperación de mi cuenta para volver a acceder a mi cuenta.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: Solicitud de recuperación de contraseña mediante el correo:</strong>
         <br><br>
        Dado que el usuario quiera iniciar sesión y no recuerde su contraseña<br>
Cuando solicita la recuperación de su contraseña<br>
Entonces ingresa su correo para procesar con la solicitud.
        <br><br>
        <strong>Escenario #2: Envío de código de verificación</strong>
<br><br>
Dado que el usuario haya solicitado la recuperación de su contraseña<br>
Cuando haya ingresado su correo<br>
Entonces le llegará un código de 6 dígitos al correo ingresado.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>US-07</td>
      <td>Usuario</td>
      <td>High</td>
      <td>EP-03</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Restablecer contraseña</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Cómo usuario quiero restablecer mi contraseña para volver a acceder a mi cuenta
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
       <strong> Escenario #1: Ingreso del código de seguridad exitoso</strong>
<br><br>
Dado que el usuario haya solicitado la recuperación de la contraseña<br>
Cuando ingresé el código de seguridad que le llegó a su correo<br>
Entonces el sistema valida el código y logra cambiar su contraseña.
        <br><br>
  <strong> Escenario #2: Ingreso inválido del código de seguridad</strong>
<br><br>
Dado que el usuario haya solicitado la recuperación de la contraseña<br>
Cuando ingresé un código de seguridad que no le llegó al correo<br>
Entonces no continúa con el procedimiento y no cambia su contraseña.
<br><br>
<strong>Escenario #3: Ingreso de una contraseña débil</strong>
        <br><br>
Dado que el usuario haya ingresado el código de seguridad<br>
Cuando ingresé una contraseña que con cumple con los criterios de seguridad<br>
Entonces no se logra hacer el restablecimiento de su contraseña.<br><br>
        
<strong>Escenario #4: Ingreso de código expirado</strong>
<br><br>
Dado que el usuario haya solicitado la recuperación de su contraseña<br>
Cuando haya ingresado un código de seguridad luego de 15 minutos<br>
Entonces no continúa con el procedimiento y no logra cambiar su contraseña.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>US-08</td>
      <td>Usuario</td>
      <td>Medium</td>
      <td>EP-03</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Cierre de sesión</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       	Como usuario
Quiero cerrar sesión de mi cuenta en el dispositivo que lo esté usando
Para evitar accesos indebidos a mi cuenta.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: Cierre exitoso de sesión en la web</strong>
      <br><br>
Dado que el usuario está autenticado en la aplicación web<br>
Cuando selecciona la opción de cerrar sesión<br>
Entonces finaliza su sesión activa en el navegador<br><br>
<strong>Escenario #2: Cierre exitoso de sesión en la aplicación móvil</strong>
<br><br>
Dado que el usuario está autenticado en la aplicación móvil<br>
Cuando selecciona la opción de cerrar sesión<br>
Entonces se elimina la sesión activa del dispositivo móvil
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>TS-03</td>
      <td>Developer</td>
      <td>High</td>
      <td>EP-03</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Recuperar contraseña mediante correo</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
        Como developer, quiero gestionar la recuperación de contraseña de forma segura a través de una API, para permitir a los usuarios restablecer su acceso al sistema.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: Solicitud de código de recuperación exitosa:</strong>
          <br><br>
Dado que se envíe una solicitud al /password/request-code con un correo registrado<br>
cuando la API valida que el correo corresponda a un usuario existente<br>
entonces la API responde con un estado 200 OK y se envía un código de recuperación de 4 dígitos al correo proporcionado.
          <br><br>
<strong>Escenario #2: Correo no registrado:</strong>
          <br><br>
Dado que se envíe una solicitud al /password/request-code con un correo no registrado <br>
cuando la API valida que no existe una cuenta asociada al correo <br>
entonces la API responde con un estado 404 Not Found que indica que el usuario no fue encontrado.
<br><br>
<strong>Escenario #3: Verificación de código exitosa:</strong>
        <br><br>
Dado que se envíe una solicitud al  /password/verify-code con su correo y código de recuperación<br>
cuando la API valida que el código sea válido y se encuentre dentro del período de vigencia de 10 minutos<br>
entonces la API responde con un estado 200 OK y se confirma la validez del código.
<br><br>
<strong>Escenario #4: Código inválido o expirado:</strong>
        <br><br>
Dado que se envíe una solicitud al /password/verify-code con un código de recuperación<br>
cuando la API valido que el código sea incorrecto o haya superado su período de vigencia<br>
entonces la API responde con un estado 400 BAD REQUEST e indica que el código es inválido o ha expirado.
<br><br>
        <strong>Escenario #5: Restablecimiento de contraseña exitoso:</strong> <br><br>
Dado que se envíe una solicitud al /password/reset con su correo, código de recuperación y nueva contraseña<br>
cuando la API valida que el código sea válido y no haya expirado<br>
entonces la API responde con un estado 200 OK actualiza la contraseña del usuario
        <br><br>
<strong>Escenario #6: Restablecimiento con código inválido o expirado:</strong>
<br><br>
        Dado que el usuario envíe una solicitud al /password/reset con un código de recuperación<br>
cuando la API valido que el  código sea inválido o haya expirado<br>
entonces la API responde con un estado 400 BAD REQUEST e indica que el código es inválido o ha expirado.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>US-09</td>
      <td>Usuario</td>
      <td>High</td>
      <td> - </td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Acceso a la Pagina de Inicio</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
        Como usuario, quiero ver la página de inicio para poder acceder a las funciones principales de la aplicación.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario # 1: Navegar a la página de inicio</strong>
        <br><br>
Dado que el usuario navega a la página de inicio<br>
Cuando se carga la página de inicio<br>
Entonces el usuario ve el contenido principal de la aplicación.
        <br><br>
        <strong>Escenario #2: Visualizar las funciones principales</strong>
          <br><br>
Dado que la aplicación cuenta con funciones disponibles<br>
Cuando se carga la página de inicio<br>
Entonces el usuario visualiza los accesos a las principales funciones de la aplicación segun el rol.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>US-10</td>
      <td>Madre</td>
      <td>High</td>
      <td>EP-04</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Gestión de pacientes</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
Como madre, quiero gestionar la información de mi hijo, para mantener sus datos registrados y facilitar el seguimiento de su tratamiento.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: Registrar nuevo paciente</strong>
  <br><br>
Dado que la madre proporciona información válida del paciente<br>
Cuando la madre registra al paciente<br>
Entonces el paciente queda registrado con la información proporcionada.
<br><br>
        <strong>Escenario #2: Información inválida del paciente</strong>
        <br><br>
Dado que la madre proporciona información incompleta o inválida del paciente<br>
Cuando la madre intenta registrar al paciente<br>
Entonces el paciente no es registrado y se muestra un mensaje de error.<br>
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>US-11</td>
      <td>Enfermera</td>
      <td>High</td>
      <td>EP-04</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Seguimiento del nivel de hemoglobina</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como enfermera, quiero llevar el seguimiento de los niveles de hemoglobina del paciente, para conocer su evolución durante el tratamiento de la anemia.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: Registro exitoso del nivel de hemoglobina</strong>
<br><br>
Dado que la enfermera cuenta con el nivel de hemoglobina obtenido durante el control del paciente<br>
Cuando registra un valor válido de hemoglobina<br>
Entonces el nivel de hemoglobina queda registrado en el historial del paciente y se actualiza su progreso.
<br><br>
        <strong>Escenario #2: Actualización del nivel de hemoglobina</strong>
<br><br>
Dado que la enfermera cuenta con el resultado de hemoglobina obtenido durante el control del paciente<br>
Cuando actualiza el nivel de hemoglobina<br>
Entonces el nuevo valor queda disponible en el historial del paciente y permite consultar su evolución.<br><br>

<strong>Escenario #3: Valor de hemoglobina inválido</strong>
<br><br>
Dado que la enfermera cuenta con un valor de hemoglobina fuera del rango permitido<br>
Cuando actualiza el nivel de hemoglobina<br>
Entonces el valor no es aceptado y se informa que el valor ingresado no es válido.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>US-12</td>
      <td>Enfermera</td>
      <td>High</td>
      <td>EP-04</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Historial médico del paciente</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como enfermera, quiero consultar y gestionar el historial médico inicial de un paciente asignado a mi cartera, para contar con información clínica que facilite el seguimiento medico del paciente.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
       <strong>Escenario #1: Historial médico inicial</strong> 
<br><br>
Dado que el paciente se encuentra asignado a la cartera de la enfermera<br>
Cuando la enfermera incorpora la información clínica inicial del paciente, incluyendo nivel de hemoglobina, peso, talla y observaciones médicas<br>
Entonces el historial médico del paciente queda disponible para su seguimiento.<br><br>
<strong>Escenario #2: Información clínica incompleta</strong>
<br><br>
Dado que la información clínica necesaria del paciente está incompleta<br>
Cuando la enfermera intenta incorporar el historial médico<br>
Entonces la información no se completa y se indica qué datos son necesarios para continuar.<br><br>
<strong>Escenario #3: Paciente no asignado</strong>
<br><br>
Dado que el paciente no se encuentra asignado a la cartera de la enfermera<br>
Cuando la enfermera intenta gestionar su historial médico<br>
Entonces no puede realizar la gestión del historial del paciente.<br><br>
<strong>Escenario #4: Actualización del historial médico</strong>
<br><br>
Dado que el paciente cuenta con un historial médico registrado<br>
Cuando la enfermera actualiza la información clínica del paciente<br>
Entonces el historial médico queda actualizado con la nueva información para continuar con su seguimiento.
      </td>
    </tr>
  </tbody>
</table>


---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>US-13</td>
      <td>Enfermero</td>
      <td>High</td>
      <td>EP-05</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Estado del tratamiento del paciente</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como enfermera, quiero gestionar el estado del paciente según la evolución de su tratamiento, para mantener un control claro de los pacientes activos, completados o que han abandonado el tratamiento.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: Actualización de estado de tratamiento completado</strong>
<br><br>
Dado que el paciente se encuentra en seguimiento por la enfermera<br>
Cuando la enfermera actualiza su estado del tratamiento a completado<br>
Entonces el estado del paciente queda actualizado.
<br><br>
                <strong>Escenario #1: Actualización de estado de tratamiento abandonado</strong>
<br><br>
Dado que el paciente se encuentra en seguimiento por la enfermera<br>
Cuando la enfermera actualiza su estado del tratamiento a abandonado<br>
Entonces el estado del paciente queda actualizado.
<br><br>
<strong>Escenario #2: Cambio de estado sin justificación</strong>
<br><br>
Dado que la enfermera cambia el estado del paciente a completado o abandonado<br>
Cuando no proporciona una justificación para el cambio<br>
Entonces el cambio no se realiza y se indica que debe proporcionar una justificación.
      </td>
    </tr>
  </tbody>
</table>



---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>TS-04</td>
      <td>Developer</td>
      <td>High</td>
      <td>EP-04</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Registro de pacientes</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como developer, quiero gestionar el registro de pacientes mediante una API, para permitir que las madres incorporen nuevos pacientes a su seguimiento.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: Registro exitoso del paciente</strong>
        <br><br>
Dado que se envía una solicitud al POST /patient/register con los datos válidos del paciente<br>
Cuando la API valida la información proporcionada<br>
Entonces la API responde con un estado 201 Created y confirma que el paciente fue registrado correctamente.<br><br>
        <strong>Escenario #2: Fecha de nacimiento inválida</strong><br><br>
Dado que se envía una solicitud al POST /patient/register con una fecha de nacimiento posterior a la fecha actual<br>
Cuando la API valida los datos del paciente<br>
Entonces la API responde con un estado 400 Bad Request e indica que la fecha de nacimiento no puede ser futura.<br><br>
        <strong>Escenario #3: Peso o talla inválidos</strong><br><br>
        Dado que se envía una solicitud de POST /patient/register con atributos como el peso o talla.<br>
Cuando la API valida las solicitud y detecta errores de validacion<br>
Entonces la API responde con un estado 400 Bad Request e indica que el peso o la talla deben ser mayores que cero.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>TS-05</td>
      <td>Developer</td>
      <td>High</td>
      <td>EP-04</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Obtener pacientes de la madre</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como developer, quiero consultar los pacientes asociados a una madre mediante una API, para permitir la obtención de la información básica de los pacientes registrados.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: Pacientes Existentes</strong><br><br>
Dado que se recibe una consulta  GET /my-patientsd<br>
Cuando la API encuentra uno o mas pacientes<br>
Entonces la API responde con un estado 200 OK y retorna los pacientes asociados a la madre.<br><br>
        <strong>Escenario #2: Madre no identificada</strong><br><br>
        Dado que se recibe una consulta GET /my-patients<br>
Cuando la API no encuentra un motherId válido en el token<br>
Entonces la API responde con un estado 400 Bad Request e indica que no se encontró el identificador de la madre.<br><br>
    <strong>Escenario #3: sin pacientes registrados</strong><br><br>
Dado que se recibe una consulta GET /my-patients<br>
Cuando la API no tiene pacientes registrados<br>
Entonces la API responde con un estado 200 OK y devuelve una lista de pacientes vacía.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>TS-06</td>
      <td>Developer</td>
      <td>High</td>
      <td>EP-04</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Consulta de evolución de hemoglobina</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como developer, quiero consultar la evolución de los niveles de hemoglobina de un paciente mediante una API, para proporcionar información sobre su progreso durante el seguimiento.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1:Evolución encontrada</strong><br><br>
        Dado que se recibe una consulta al GET /{patientId}/hemoglobin-evolution<br>
        Cuando la API encuentra al paciente y sus controles de hemoglobina<br>
        Entonces la API responde 200 OK y retorna el nivel actual de hemoglobina junto con los controles ordenados por fecha.<br><br>
        <strong>Escenario: Sin controles registrados</strong><br><br>
        Dado que se recibe una solicitud GET a /{patientId}/hemoglobin-evolution<br>
Cuando el paciente no tiene controles de hemoglobina registrados<br>
Entonces la API responde 200 OK y retorna un arreglo vacío.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>TS-07</td>
      <td>Developer</td>
      <td>High</td>
      <td>EP-05</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Inicio del tratamiento</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como developer, quiero gestionar el inicio del tratamiento de un paciente mediante una API, para establecer sus condiciones de tratamiento y generar las dosis correspondientes.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: Inicio de tratamiento exitoso</strong><br><br>
Dado que se recibe una solicitud POST /treatments con el identificador del paciente, suplemento, cantidad, horario y duración del tratamiento,
cuando la API valida que el paciente existe y no tiene un tratamiento activo,
entonces la API responde con un estado 201 Created, crea el tratamiento con estado ACTIVE y genera las dosis correspondientes.
        <br><br>
        <strong>Escenario #2: Paciente no encontrado</strong><br><<br>
Dado que se recibe una solicitud POST /treatments con un identificador de paciente inexistente,<br>
cuando la API verifica la existencia del paciente,<br>
entonces la API responde con un estado 400 Bad Request e indica que el paciente no fue encontrado.<br><br>
          <strong>Escenario #3: Paciente con tratamiento activo</strong><br><br>
Dado que se recibe una solicitud POST /treatments para un paciente que ya tiene un tratamiento activo,<br>
cuando la API verifica los tratamientos existentes del paciente,<br>
entonces la API responde con un estado 400 Bad Request e indica que el paciente ya tiene un tratamiento activo.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>TS-08</td>
      <td>Developer</td>
      <td>High</td>
      <td>EP-05</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Consulta del detalle del tratamiento</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como developer, quiero consultar el detalle del tratamiento de un paciente mediante una API, para obtener información sobre su evolución y cumplimiento del tratamiento.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: Detalle del tratamiento encontrado</strong><br><br>
Dado que se recibe una solicitud GET /patients/{patientId}/treatment-detail con un paciente existente y asignado a la enfermera,<br>
cuando la API consulta la información del tratamiento,<br>
entonces la API responde con un estado 200 OK y devuelve el detalle del tratamiento, incluyendo el nivel de riesgo, puntuación, adherencia, dosis administradas y omitidas, y las condiciones del tratamiento.
<br><br>
<strong>Escenario #2: Paciente no encontrado</strong>
<br><br>
Dado que se recibe una solicitud GET /patients/{patientId}/treatment-detail con un identificador de paciente inexistente,<br>
cuando la API verifica la existencia del paciente,<br>
entonces la API responde con un estado 400 Bad Request e indica que el paciente no fue encontrado.<br><br>
<strong>Escenario #3: Paciente no asignado</strong><br><br>
Dado que se recibe una solicitud GET /patients/{patientId}/treatment-detail para un paciente que no está asignado a la enfermera autenticada,<br>
cuando la API valida la asignación del paciente,<br>
entonces la API responde con un estado 400 Bad Request e indica que el paciente no está asignado a la enfermera.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>TS-09</td>
      <td>Developer</td>
      <td>High</td>
      <td>EP-05</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Gestión del estado del tratamiento</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como developer, quiero gestionar la finalización o abandono de un tratamiento mediante una API, para mantener actualizado su estado y registrar la observación correspondiente.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario: Tratamiento completado</strong><br><br>
Dado que se recibe una solicitud PUT /treatments/complete con un treatmentId válido<br>
Cuando la API procesa la solicitud<br>
Entonces la API responde 200 OK y retorna el tratamiento con estado COMPLETED y la observación de finalización.<br><br>
<strong>Escenario: Tratamiento abandonado</strong><br><br>
Dado que se recibe una solicitud PUT /treatments/abandon con un treatmentId válido<br>
Cuando la API procesa la solicitud<br>
Entonces la API responde 200 OK y retorna el tratamiento con estado ABANDONED y la observación de abandono.<br><br>
<strong>Escenario: Abandono del tratamiento</strong><br><br>
Dado que se recibe una solicitud PUT /treatments/abandon con un treatmentId válido<br>
Cuando la API procesa el abandono del tratamiento<br>
Entonces las dosis asociadas al tratamiento son eliminadas físicamente de la base de datos.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>TS-10</td>
      <td>Developer</td>
      <td>High</td>
      <td>EP-04</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Asignación de paciente a enfermera</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como developer, quiero gestionar la asignación de pacientes a una enfermera mediante una API, para establecer la relación de seguimiento entre la enfermera y el paciente.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: Asignación exitosa</strong>
<br><br>
Dado que se recibe una solicitud POST /assign-nurse con un paciente existente,<br>
cuando la API valida que el paciente no tiene una enfermera asignada y que la enfermera pertenece a un establecimiento,<br>
entonces la API responde con un estado 200 OK y confirma que el paciente fue asignado correctamente.<br><br>

<strong>Escenario #2: Paciente no encontrado</strong>
<br><br>
Dado que se recibe una solicitud POST /assign-nurse con un identificador de paciente inexistente,<br>
cuando la API verifica la existencia del paciente,<br>
entonces la API responde con un estado 400 Bad Request e indica que el paciente no fue encontrado.<br><br>

<strong>Escenario #3: Paciente con enfermera asignada</strong>
<br><br>
Dado que se recibe una solicitud POST /assign-nurse para un paciente que ya tiene una enfermera asignada,<br>
cuando la API verifica la asignación existente,<br>
entonces la API responde con un estado 400 Bad Request e indica que el paciente ya tiene una enfermera asignada.
<br><br>
<strong>Escenario #4: Enfermera sin establecimiento asignado</strong>
<br><br>
Dado que se recibe una solicitud POST /assign-nurse y la enfermera autenticada no pertenece a ningún establecimiento,<br>
cuando la API valida la información de la enfermera,<br>
entonces la API responde con un estado 400 Bad Request e indica que la enfermera no está asignada a ningún establecimiento.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>TS-11</td>
      <td>Developer</td>
      <td>High</td>
      <td>EP-04</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Gestion del historial clínica</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
        Como developer, quiero gestionar la creación de la historia clínica de un paciente mediante una API, para almacenar su información clínica y facilitar su seguimiento.   
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
          <strong>Escenario #1: Historia clínica creada exitosamente</strong><br><br>
Dado que se recibe una solicitud POST /medical-record con un paciente asignado a la enfermera y la información clínica requerida,<br>
cuando la API valida los datos proporcionados,<br>
entonces la API responde con un estado 201 Created y confirma que la historia clínica fue creada correctamente.<br><br>
        <strong>Escenario #2: Información de historia clínica encontrada</strong>
<br><br>
Dado que se recibe una solicitud GET /{patientId}/medical-record con un paciente existente y asignado a la enfermera,<br>
cuando la API consulta la información clínica del paciente,<br>
entonces la API responde con un estado 200 OK y devuelve los datos del paciente, su historia clínica y sus controles.<br><br>
       <strong>Escenario #3: Historia clínica no encontrada</strong>
        <br><br>
        Dado que se recibe una solicitud GET /{patientId}/medical-record para un paciente que no cuenta con una historia clínica,<br>
cuando la API verifica la información clínica disponible,<br>
entonces la API responde con un estado 400 Bad Request e indica que la historia clínica no existe.<br><br>
        <strong>Escenario #4: Modificación de información clínica exitosa</strong><br><br>
Dado que se recibe una solicitud PUT /medical-record/update con el identificador del paciente y uno o más campos de información clínica,<br>
cuando la API verifica que el paciente está asignado a la enfermera,<br>
entonces la API responde con un estado 200 OK y confirma que la información clínica fue modificada correctamente.<br><br>
        <strong>Escenario #5: Paciente no asignado para modificar la historia clínica</strong><br><br>
Dado que se recibe una solicitud PUT /medical-record/update para un paciente que no está asignado a la enfermera,<br>
cuando la API valida la asignación del paciente,<br>
entonces la API responde con un estado 400 Bad Request e indica que el paciente no está asignado a la enfermera.
        <br><br>
        <strong>Escenario #6: Consulta del historial de controles</strong><br><br>
        Dado que se recibe una solicitud GET /medical-record/{medicalRecordId}/controls para una historia clínica existente,<br>
cuando la API consulta los controles registrados,<br>
entonces la API responde con un estado 200 OK y devuelve los controles junto con el promedio de hemoglobina, la evolución y la tendencia correspondiente.<br><br>
        <strong>Escenario #7: Historia clínica sin controles</strong><br><br>
Dado que se recibe una solicitud GET /medical-record/{medicalRecordId}/controls para una historia clínica que no tiene controles registrados,<br>
cuando la API consulta el historial de controles,<br>
entonces la API responde con un estado 200 OK e indica que no existen controles registrados.<br><br>
        <strong>Escenario #8: Descarga de historia clínica</strong><br><br>
Dado que se recibe una solicitud GET /medical-record/{medicalRecordId}/pdf para una historia clínica existente,<br>
cuando la API genera la información clínica correspondiente,<br>
entonces la API responde con un estado 200 OK y devuelve el archivo PDF de la historia clínica.<br><br>

<strong>Escenario #9: Descarga del reporte de hemoglobina</strong>
<br><br>
Dado que se recibe una solicitud GET /medical-record/{medicalRecordId}/hemoglobin-report para una historia clínica existente,<br>
cuando la API genera el reporte de evolución de hemoglobina,<br>
entonces la API responde con un estado 200 OK y devuelve el archivo PDF correspondiente.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>TS-12</td>
      <td>Developer</td>
      <td>High</td>
      <td>EP-03</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Dar de alta a un paciente</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como developer, quiero gestionar el alta de un paciente mediante una API, para finalizar su seguimiento cuando corresponda.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: Alta exitosa del paciente</strong>
<br><br>
Dado que se recibe una solicitud PUT /discharge con un paciente existente,<br>
cuando la API verifica que la enfermera autenticada está asignada al paciente,<br>
entonces la API responde con un estado 200 OK y cambia el estado del paciente de ACTIVE a DISCHARGED.
<br><br>    
<strong>Escenario #2: Paciente no encontrado</strong><br><br>
Dado que se recibe una solicitud PUT /discharge con un identificador de paciente inexistente,<br>
cuando la API verifica la existencia del paciente,<br>
entonces la API responde con un estado 400 Bad Request e indica que el paciente no fue encontrado.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>US-14</td>
      <td>Madre</td>
      <td>High</td>
      <td>EP-06</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Diario nutricional</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como madre, quiero llevar un registro de los alimentos que consume mi hijo durante el día, para conocer su alimentación y el aporte de hierro asociado a los alimentos registrados.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario 1: Registro de alimentos exitoso</strong><br><br>
Dado que la madre desea registrar los alimentos consumidos por su hijo durante el día,<br>
cuando selecciona los alimentos correspondientes,<br>
entonces los alimentos quedan registrados y se calcula el aporte de hierro absorbido según los alimentos ingresados.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>US-15</td>
      <td>Madre</td>
      <td>High</td>
      <td>EP-06</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Resumen nutricional diario</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como madre, quiero consultar el resumen nutricional diario de mi hijo, para conocer los alimentos registrados, el hierro absorbido y el cumplimiento de la meta diaria.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario 1: Resumen nutricional disponible</strong>
        <br><br>
Dado que la madre ha registrado alimentos durante el día,
cuando consulta el resumen nutricional,
entonces puede conocer los alimentos registrados, el hierro absorbido y si alcanzó la meta diaria de hierro.
<br><br>
<strong>Escenario 2: Sin alimentos registrados</strong>
<br><br>
Dado que la madre no ha registrado alimentos durante el día,<br>
cuando consulta el resumen nutricional,<br>
entonces se indica que no existen alimentos registrados para ese día.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>US-16</td>
      <td>Madre</td>
      <td>Medium</td>
      <td>EP-05 - EP-07</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Racha de tratamiento</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como madre, quiero conocer la cantidad de días consecutivos en los que mi hijo ha cumplido con su tratamiento, para mantener la constancia durante el proceso.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario 1: Racha de tratamiento</strong><br><br>
Dado que la madre ha confirmado el cumplimiento de la dosis durante días consecutivos,<br>
cuando consulta la racha de tratamiento,<br>
entonces puede conocer la cantidad de días consecutivos en los que se ha cumplido el tratamiento.<br><br>
<strong>Escenario 2: Pérdida de la racha</strong><br><br>
Dado que la madre no ha confirmado el cumplimiento de una dosis correspondiente a un día,<br>
cuando consulta la racha de tratamiento,<br>
entonces la racha se reinicia y comienza nuevamente el conteo de días consecutivos.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>TS-13</td>
      <td>Developer</td>
      <td>Medium</td>
      <td>EP-05 - EP-07</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Consulta del progreso de gamificación</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como developer, quiero gestionar la consulta del progreso de gamificación asociado a un paciente mediante una API, para proporcionar información sobre los puntos acumulados y la constancia del tratamiento.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: Progreso encontrado</strong><br><br>
        Dado que se recibe una solicitud GET /patients/:patientId/achievement para un paciente existente y asociado a la madre,<br>
cuando la API obtiene la información de gamificación del paciente,<br>
entonces la API responde correctamente y devuelve los puntos acumulados, la racha actual y la mejor racha histórica.<br><br>
        <strong>Escenario #2: Paciente no encontrado</strong><br><br>
Dado que se recibe una solicitud GET /patients/:patientId/achievement para un paciente que no existe,<br>
cuando la API no encuentra al paciente,<br>
entonces la API responde con un error indicando que el paciente no fue encontrado.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>US-17</td>
      <td>Madre</td>
      <td>Medium</td>
      <td>EP-05 - EP-07</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Insignias por logros del tratamiento</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como madre, quiero obtener insignias al alcanzar hitos durante el tratamiento de mi hijo, para reconocer mi constancia y motivarme a continuar con su seguimiento.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario 1: Desbloqueo de insignia</strong><br><br>
Dado que la madre alcanza un hito establecido durante el tratamiento, como completar la primera semana, un mes sin interrupciones o la mitad del tratamiento,<br>
cuando se verifica el cumplimiento del hito,<br>
entonces la insignia correspondiente queda desbloqueada y se registra como un logro alcanzado.<br><br>
<strong>Escenario 2: Consulta de insignias</strong><br><br>
Dado que la madre tiene insignias disponibles,<br>
cuando consulta sus logros del tratamiento,<br>
entonces puede identificar las insignias que ya ha desbloqueado y los hitos asociados a las que aún están pendientes.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
     <td>TS-14</td>
      <td>Medium</td>
      <td>High</td>
      <td>EP-05 - EP-07</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Consulta de insignias y progreso</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como developer, quiero gestionar la consulta de las insignias asociadas a un paciente mediante una API, para obtener su estado de desbloqueo y el progreso hacia cada logro del tratamiento.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: Insignias encontradas</strong><br><br>
Dado que se recibe una solicitud GET /patients/:patientId/badges para un paciente existente y asociado a la madre,<br>
cuando la API obtiene las insignias correspondientes al tratamiento,<br>
entonces la API responde correctamente y devuelve las insignias con su estado de desbloqueo, progreso y días restantes para alcanzar cada hito.<br><br>
<strong>Escenario #2: Paciente no encontrado</strong><br><br>
Dado que se recibe una solicitud GET /patients/:patientId/badges para un paciente que no existe,<br>
cuando la API no encuentra al paciente,<br>
entonces la API responde con un error indicando que el paciente no fue encontrado.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>TS-15</td>
      <td>Developer</td>
      <td>Medium</td>
      <td>EP-06</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Registro de consumo de alimento</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como developer, quiero gestionar el registro del consumo de alimentos de un paciente mediante una API, para calcular el hierro absorbido y mantener actualizada su información nutricional.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: Registro de alimento exitoso</strong><br><br>
Dado que se recibe una solicitud POST /food-entry con un paciente existente, un alimento válido y una cantidad válida,<br>
cuando la API valida la información proporcionada,<br>
entonces la API responde correctamente y registra el alimento junto con el hierro absorbido y el total acumulado del día.<br><br>
<strong>Escenario #2: Registro de alimento inhibidor</strong><br><br>
Dado que se recibe una solicitud POST /food-entry con un alimento identificado como inhibidor de la absorción de hierro,<br>
cuando la API procesa el consumo registrado,<br>
entonces la API registra el alimento, calcula el hierro absorbido y devuelve una advertencia indicando que el alimento puede reducir la absorción del hierro.<br><br>
<strong>Escenario #5: Paciente no asociado</strong><br><br>
Dado que se recibe una solicitud POST /food-entry para un paciente existente que no está asociado a la madre autenticada,<br>
cuando la API verifica la relación entre la madre y el paciente,<br>
entonces la API rechaza la operación indicando que el paciente no pertenece a la madre.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>TS-16</td>
      <td>Developer</td>
      <td>Medium</td>
      <td>EP-06</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Consulta del diario nutricional</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como developer, quiero consultar el consumo de alimentos de un paciente correspondiente al día actual mediante una API, para obtener su resumen nutricional y el hierro absorbido.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: Diario con alimentos registrados</strong><br><br>
Dado que se recibe una solicitud GET /today/{patientId} para un paciente existente y asociado a la madre,<br>
cuando la API consulta los alimentos registrados durante el día,<br>
entonces la API responde con los alimentos consumidos, las cantidades y el total de hierro absorbido.<br><br>
<strong>Escenario #2: Diario sin alimentos registrados</strong><br><br>
Dado que se recibe una solicitud GET /today/{patientId} para un paciente que no tiene alimentos registrados durante el día,<br>
cuando la API consulta su información nutricional,<br>
entonces la API responde correctamente indicando que no existen alimentos registrados y devuelve una lista vacía.<br><br>
<strong>Escenario #3: Historial nutricional encontrado</strong><br><br>
        Dado que se recibe una solicitud GET /history/{patientId} para un paciente existente,<br>
cuando la API consulta su historial nutricional,<br>
entonces la API responde con la información de los días correspondientes al período consultado, incluyendo el hierro absorbido y los alimentos registrados.<br><br>
<strong>Escenario #4: Consulta del período predeterminado</strong><br><br>
Dado que se recibe una solicitud GET /history/{patientId} sin especificar fechas de inicio ni fin,<br>
cuando la API procesa la consulta,<br>
entonces devuelve el historial nutricional correspondiente a los últimos 30 días.<br><br>
<strong>Escenario #5: Consulta con período personalizado</strong><br><br>
Dado que se recibe una solicitud GET /history/{patientId} con una fecha de inicio y una fecha de fin,<br>
cuando la API procesa el período solicitado,<br>
entonces devuelve el historial nutricional correspondiente al rango de fechas indicado.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
     <td>TS-17</td>
      <td>Developer</td>
      <td>Medium</td>
      <td>EP-06</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Consulta de alimentos</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
Como developer, quiero gestionar la consulta de alimentos mediante una API, para obtener información nutricional de los alimentos según una categoría o un criterio de búsqueda.       
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: Consulta por categoría</strong><br><br>
Dado que se recibe una solicitud GET /foods/category/{category} con una categoría válida,<br>
cuando la API consulta los alimentos correspondientes,<br>
entonces responde con la lista de alimentos de la categoría junto con su información nutricional y si son inhibidores de la absorción de hierro.<br><br>
<strong>Escenario #2: Búsqueda de alimentos</strong><br><br>
Dado que se recibe una solicitud GET /foods/search con un texto de búsqueda de al menos dos caracteres,<br>
cuando la API busca los alimentos que coinciden con el texto,<br>
entonces responde con los alimentos encontrados y su información nutricional.<br><br>
<strong>Escenario #3: Búsqueda sin resultados</strong><br><br>
Dado que se recibe una solicitud GET /foods/search con un texto que no coincide con ningún alimento,<br>
cuando la API realiza la búsqueda,<br>
entonces responde correctamente con una lista vacía.<br><br>
<strong>Escenario #4: Texto de búsqueda insuficiente</strong><br><br>
Dado que se recibe una solicitud GET /foods/search con un texto de menos de dos caracteres,<br>
cuando la API procesa la búsqueda,<br>
entonces responde sin resultados.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>US-18</td>
      <td>Nadre</td>
      <td>Medium</td>
      <td>EP-05</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Puntos por cumplimiento del tratamiento</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como madre, quiero obtener puntos por confirmar el cumplimiento de las dosis de mi hijo, para reconocer mi constancia y mantener la motivación durante el tratamiento.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario 1: Obtención de puntos por cumplimiento</strong><br><br>
Dado que la madre confirma el cumplimiento de una dosis de su hijo,<br>
cuando se registra correctamente la confirmación de la dosis,<br>
entonces se agregan los puntos correspondientes al total acumulado de la madre.<br><br>
<strong>Escenario 2: Consulta de puntos acumulados</strong><br><br>
Dado que la madre ha obtenido puntos por el cumplimiento de las dosis,<br>
cuando consulta sus puntos acumulados,<br>
entonces puede conocer el total de puntos obtenidos hasta ese momento.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>TS-18</td>
      <td>Developer</td>
      <td>High</td>
      <td>EP-05 - EP-07</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Gestión y seguimiento de dosis</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como developer, quiero gestionar la confirmación y consulta de las dosis de un paciente mediante una API, para mantener actualizado el seguimiento del cumplimiento del tratamiento.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: Consulta de la dosis del día</strong><br><br>
Dado que se recibe una solicitud GET /patients/:patientId/today-dose,<br>
cuando el paciente tiene una dosis programada para el día,<br>
entonces la API responde con estado 200 OK y devuelve la información de la dosis junto con su estado y la posibilidad de confirmarla.<br><br>
<strong>Escenario #2: Confirmación de la dosis</strong><br><br>
Dado que se recibe una solicitud POST /doses/confirm con el identificador de un paciente que tiene una dosis pendiente,<br>
cuando la API valida que la dosis corresponde al día actual y aún no ha sido confirmada,<br>
entonces la API responde con estado 200 OK y registra la dosis con estado CONFIRMED.<br><br>
<strong>Escenario #3: Dosis no disponible para confirmar</strong><br><br>
Dado que se recibe una solicitud POST /doses/confirm para un paciente que no tiene una dosis pendiente para el día,<br>
cuando la API verifica el estado de la dosis,<br>
entonces responde con un error indicando que no existe una dosis pendiente para confirmar o que la dosis ya fue confirmada u omitida.<br><br>
<strong>Escenario #4: Consulta del historial de dosis</strong><br><br>
Dado que se recibe una solicitud GET /patients/:patientId/dose-history,<br>
cuando existen dosis registradas para el paciente,<br>
entonces la API responde con estado 200 OK y devuelve el historial de dosis junto con su estado y fecha correspondiente.<br><br>
<strong>Escenario #5: Historial sin dosis registradas</strong><br><br>
Dado que se recibe una solicitud GET /patients/:patientId/dose-history,<br>
cuando el paciente no cuenta con dosis registradas en su historial,<br>
entonces la API responde correctamente indicando que no existen registros de dosis para el paciente.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>TS-19</td>
      <td>Developer</td>
      <td>High</td>
      <td>EP-09</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Consulta del nivel de riesgo de pacientes</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como developer, quiero consultar y clasificar la información de riesgo de los pacientes mediante una API, para facilitar el seguimiento de los casos según su nivel de riesgo.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: Consulta del resumen de riesgo</strong><br><br>
Dado que se recibe una solicitud GET /risk-overview,<br>
cuando la API procesa la información de los pacientes,<br>
entonces responde con estado 200 OK y devuelve la cantidad de pacientes clasificados en los niveles HIGH, MEDIUM y LOW, junto con el total.<br><br>
<strong>Escenario #2: Consulta de pacientes por nivel de riesgo</strong><br><br>
Dado que se recibe una solicitud GET /risk/:riskLevel/patients con un nivel de riesgo válido,<br>
cuando la API encuentra pacientes correspondientes a dicho nivel,<br>
entonces responde con estado 200 OK y devuelve la cantidad y los datos de los pacientes asociados al nivel solicitado.<br><br>
<strong>Escenario #3: Consulta sin pacientes en el nivel de riesgo</strong><br><br>
Dado que se recibe una solicitud GET /risk/:riskLevel/patients con un nivel de riesgo válido,<br>
cuando no existen pacientes clasificados en dicho nivel,<br>
entonces la API responde con estado 200 OK y devuelve una lista vacía de pacientes.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>US-19</td>
      <td>Madre</td>
      <td>High</td>
      <td>EP-10</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Comunicación con la enfermera</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como madre, quiero comunicarme con la enfermera asignada para realizar consultas relacionadas con el tratamiento de mi hijo y recibir orientación durante su seguimiento.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario 1: Consulta enviada correctamente</strong><br><br>
Dado que la madre tiene una enfermera asignada,<br>
cuando envía una consulta con un mensaje relacionado con el tratamiento de su hijo,<br>
entonces la consulta se registra correctamente y queda disponible para que la enfermera pueda responderla.<br><br>
<strong>Escenario 2: Consulta sin mensaje</strong><br><br>
Dado que la madre intenta enviar una consulta,<br>
cuando no proporciona ningún mensaje,<br>
entonces la consulta no se registra y se indica que debe proporcionar el contenido de la consulta.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>US-20</td>
      <td>Enfermera</td>
      <td>High</td>
      <td>EP-10</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3"></td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como enfermera, quiero cerrar una consulta con una madre cuando haya atendido su solicitud, para finalizar el seguimiento de la consulta y dejar constancia de la atención realizada.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario 1: Cierre de consulta exitoso</strong><br><br>
Dado que existe una consulta activa con una madre y la enfermera ha enviado al menos una respuesta,<br>
cuando la enfermera solicita cerrar la consulta,<br>
entonces la consulta se cierra correctamente.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>TS-20</td>
      <td>Developer</td>
      <td>High</td>
      <td>EP-10</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Gestión de teleconsultas</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como developer, quiero gestionar las teleconsultas entre madres y enfermeras mediante una API, para permitir el intercambio de consultas y respuestas durante el seguimiento del tratamiento del paciente.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: Creación de una teleconsulta</strong><br><br>
Dado que se recibe una solicitud POST /consultations con la información de la madre, el paciente y el primer mensaje,<br>
cuando la API valida que el paciente pertenece a la madre, tiene una enfermera asignada y no existe una consulta activa para dicho paciente,<br>
entonces la API responde con estado 201 Created y registra correctamente la nueva consulta.<br><br>
  <strong>Escenario #2: Paciente sin enfermera asignada</strong><br><br>
Dado que se recibe una solicitud POST /consultations para un paciente que no tiene una enfermera asignada,<br>
cuando la API verifica la información del paciente,<br>
entonces responde con un error indicando que el paciente no tiene una enfermera asignada y no crea la consulta.<br><br>
<strong>Escenario #3: Envío de mensaje en una teleconsulta</strong><br><br>
Dado que se recibe una solicitud POST /messages asociada a una teleconsulta existente,<br>
cuando la API valida que el remitente pertenece a la consulta y el contenido del mensaje es válido,<br>
entonces responde con estado 200 OK y registra el mensaje dentro de la teleconsulta.<br><br>
<strong>Escenario #4: Cierre de una teleconsulta</strong><br><br>
Dado que se recibe una solicitud DELETE /consultations/close para una teleconsulta activa,<br>
cuando la API valida que la solicitud corresponde a la enfermera asignada y que existe al menos una respuesta de la enfermera,<br>
entonces responde con estado 200 OK y cierra correctamente la teleconsulta.<br><br>
<strong>Escenario #5: Cierre sin respuesta de la enfermera</strong><br><br>
Dado que se recibe una solicitud DELETE /consultations/close para una teleconsulta que aún no tiene una respuesta de la enfermera,<br>
cuando la API verifica el historial de mensajes,<br>
entonces responde con un error indicando que la enfermera debe haber respondido al menos una vez antes de cerrar la consulta.<br>
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>TS-21</td>
       <td>Developer</td>
      <td>High</td>
      <td>EP-04</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Registro del control de hemoglobina</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como developer, quiero gestionar el registro de los controles de hemoglobina de los pacientes mediante una API, para mantener actualizada la información de su evolución y determinar automáticamente su estado de anemia.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: Registro del control exitoso</strong>
<br><br>
Dado que se recibe una solicitud POST /hemoglobin-control con un paciente asignado a la enfermera y una historia clínica existente,
cuando la API valida que el nivel de hemoglobina se encuentra dentro del rango permitido,
entonces responde con estado 200 OK y registra correctamente el nuevo control de hemoglobina.
<br><br>
  <strong>Escenario #2: Nivel de hemoglobina fuera de rango</strong>
<br><br>
Dado que se recibe una solicitud POST /hemoglobin-control con un nivel de hemoglobina menor que 0 o mayor que 30 g/dL,<br>
cuando la API valida el valor proporcionado,<br>
entonces responde con un error indicando que el nivel de hemoglobina debe encontrarse entre 0 y 30 g/dL.<br><br>
<strong>Escenario #3: Paciente sin historia clínica</strong><br><br>
Dado que se recibe una solicitud POST /hemoglobin-control para un paciente que no cuenta con una historia clínica,<br>
cuando la API verifica la información clínica requerida,<br>
entonces responde con un error indicando que la historia clínica no existe y no registra el control.<br><br>
<strong>Escenario #4: Paciente no asignado</strong><br><br>
Dado que se recibe una solicitud POST /hemoglobin-control para un paciente que no está asignado a la enfermera,<br>
cuando la API verifica la asignación del paciente,<br>
entonces responde con un error indicando que el paciente no está asignado a la enfermera y no registra el control.<br><br>
<strong>Escenario #5: Determinación del estado de anemia</strong><br><br>
Dado que se recibe una solicitud POST /hemoglobin-control con un nivel de hemoglobina válido,<br>
cuando la API registra el control y evalúa el valor proporcionado,<br>
entonces determina automáticamente el estado de anemia correspondiente según el rango del nivel de hemoglobina.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>TS-22</td>
      <td>Developer</td>
      <td>High</td>
      <td>EP-09</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Consulta de métricas y análisis de postas</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como developer, quiero gestionar la consulta de métricas e información agregada de las postas mediante una API, para proporcionar datos sobre la adherencia, el nivel de riesgo y el seguimiento de los tratamientos.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: Consulta del resumen global</strong><br><br>
Dado que se recibe una solicitud GET /dashboard/summary,<br>
cuando la API procesa la información de las postas activas,<br>
entonces responde con estado 200 OK y devuelve las métricas globales de postas activas, postas críticas y porcentaje de adherencia.<br><br>
<strong>Escenario #2: Consulta de postas</strong>
<br><br>
Dado que se recibe una solicitud GET /facilities,<br>
cuando la API consulta las postas activas,<br>
entonces responde con estado 200 OK y devuelve las postas junto con sus métricas de adherencia, pacientes, dosis confirmadas, dosis omitidas y nivel de riesgo.<br><br>
<strong>Escenario #3: Consulta de postas por nivel de riesgo</strong><br><br>
Dado que se recibe una solicitud GET /facilities?riskLevel=HIGH con un nivel de riesgo válido,<br>
cuando la API procesa el filtro solicitado,<br>
entonces responde con estado 200 OK y devuelve únicamente las postas correspondientes al nivel de riesgo indicado.<br><br>
<strong>Escenario #4: Nivel de riesgo no válido</strong><br><br>
Dado que se recibe una solicitud GET /facilities?riskLevel con un nivel de riesgo no permitido,<br>
cuando la API valida el parámetro recibido,<br>
entonces responde con un error indicando que el nivel de riesgo no es válido.<br><br>
<strong>Escenario #5: Consulta de postas con mayor adherencia</strong><br><br>
Dado que se recibe una solicitud GET /facilities/top,<br>
cuando la API procesa las métricas de las postas activas,<br>
entonces responde con estado 200 OK y devuelve las postas ordenadas según su porcentaje de adherencia.<br><br>

<strong>Escenario #6: Consulta de información geográfica de las postas</strong><br><br>
Dado que se recibe una solicitud GET /heatmap,<br>
cuando la API procesa la información de las postas,<br>
entonces responde con estado 200 OK y devuelve las coordenadas geográficas, nivel de riesgo y porcentaje de adherencia de cada posta.<br><br>

<strong>Escenario #7: Filtrado geográfico por nivel de riesgo</strong><br><br>
Dado que se recibe una solicitud GET /heatmap?riskLevel=HIGH con un nivel de riesgo válido,<br>
cuando la API procesa el filtro solicitado,<br>
entonces devuelve únicamente las postas correspondientes al nivel de riesgo indicado junto con su información geográfica y métricas.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
        <td>TS-23</td>
      <td>Developer</td>
      <td>High</td>
      <td>EP-09</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Generación de reportes de postas</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como developer, quiero generar reportes de las métricas de las postas mediante una API, para disponer de información consolidada sobre la adherencia, el riesgo y el seguimiento de los tratamientos.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        <strong>Escenario #1: Generación del reporte</strong><br<br>
Dado que se recibe una solicitud GET /report/pdf,<br>
cuando existen postas activas con información disponible,<br>
entonces la API responde correctamente y genera un archivo PDF con las métricas consolidadas de las postas.<br><br>
<strong>Escenario #2: Reporte sin información disponible</strong><br><br>
Dado que se recibe una solicitud GET /report/pdf,<br>
cuando no existen postas activas disponibles para generar el reporte,<br>
entonces la API responde con un error indicando que no existe información disponible para el reporte.<br><br>
<strong>Escenario #3: Acceso no autorizado al reporte</strong><br><br>
Dado que se recibe una solicitud GET /report/pdf sin un token válido o con un usuario que no posee permisos de administrador,<br>
cuando la API valida las credenciales y permisos,<br>
entonces responde con un error indicando que el usuario no está autorizado para generar el reporte.<br>
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>US-21</td>
      <td>Admin</td>
      <td>High</td>
      <td>EP-09</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3"></td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como administrador, quiero consultar información sobre las postas asignadas, sus niveles de riesgo y métricas de adherencia, para analizar el estado de los tratamientos y tomar acciones de seguimiento cuando sea necesario.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
      <strong>Escenario 1: Consulta del resumen de las postas</strong><br><br>
Dado que existen postas activas con información disponible,<br>
cuando el administrador consulta el resumen general,<br>
entonces puede visualizar la cantidad de postas activas, las postas con mayor nivel de riesgo y el porcentaje global de adherencia.<BR><BR>
<STRONG>Escenario 2: Consulta de información de las postas</STRONG><BR><BR>
Dado que existen postas activas,<BR>
cuando el administrador consulta la información de las postas,<BR>
entonces puede visualizar sus métricas de adherencia, cantidad de pacientes, dosis confirmadas, dosis omitidas y nivel de riesgo.<BR>
<STORNG>Escenario 3: Consulta de postas según nivel de riesgo</STORNG><BR><BR>
Dado que el administrador necesita revisar las postas según su nivel de riesgo,<BR>
cuando consulta las postas correspondientes a un nivel determinado,<BR>
entonces puede visualizar únicamente las postas que pertenecen a dicho nivel de riesgo.<BR><BR>
<STRONG>Escenario 4: Consulta de postas con mayor adherencia</STRONG><br><br>
Dado que existen postas con información de adherencia,<br>
cuando el administrador consulta las postas con mayor adherencia,<br>
entonces puede visualizar las postas ordenadas según su porcentaje de adherencia.<br><br>
<strong>Escenario 5: Consulta de ubicación y nivel de riesgo</strong><br><br>
Dado que existen postas con información geográfica registrada,<br>
cuando el administrador consulta su ubicación,<br>
entonces puede visualizar la ubicación de las postas junto con su nivel de riesgo y porcentaje de adherencia.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>TS-24</td>
      <td>Developer</td>
      <td>High</td>
      <td>EP-08</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Gestión de postas de salud</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como desarrollador, quiero implementar una API para registrar y consultar las postas de salud disponibles en el sistema, para permitir al administrador gestionar los establecimientos y visualizar la información de cada posta.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        Escenario 1: Registro exitoso de una posta
<br><br>
Dado que se recibe una solicitud POST / con los datos requeridos de una nueva posta,<br>
cuando la API valida correctamente la información proporcionada,<br>
entonces la API debe registrar la posta y responder con un estado 201 Created confirmando la creación.<br><br>
Escenario 2: Listado de postas<br><br>
Dado que existen postas registradas en el sistema,<br>
cuando se recibe una solicitud GET /,<br>
entonces la API debe responder con 200 OK y devolver el listado de postas junto con su información de asignación de enfermeras.<br><br>
Escenario 3: Acceso no autorizado<br><br>
Dado que se recibe una solicitud GET / sin un token válido o sin permisos de administrador,<br>
cuando la API valida las credenciales del usuario,<br>
entonces debe responder con 401 Unauthorized o 403 Forbidden, según corresponda.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>TS-25</td>
      <td>Developer</td>
      <td>High</td>
      <td>EP-08</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Asignación de enfermeras a postas de salud</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como desarrollador, quiero implementar una API que permita verificar la disponibilidad de enfermeras y asignarlas a una posta, para mantener correctamente la relación entre enfermeras y establecimientos de salud.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        Escenario 1: Verificación de disponibilidad de enfermeras<br><br>
Dado que se recibe una solicitud GET /can-register,<br>
cuando la API verifica si existen enfermeras disponibles que no estén asignadas a una posta,<br>
entonces debe responder con 200 OK e indicar mediante el campo available si existe al menos una enfermera disponible.<br><br>
Escenario 2: Listado de enfermeras sin asignación<br><br>
Dado que existen enfermeras que no están asignadas a ninguna posta,<br>
cuando se recibe una solicitud GET /nurses/unassigned,<br>
entonces la API debe responder con 200 OK y devolver la lista de enfermeras disponibles para asignación.<br><br>
Escenario 3: Asignación exitosa de una enfermera<br><br>
Dado que se recibe una solicitud POST /assign-nurse con una posta y una enfermera disponible,<br>
cuando la API valida que la posta no tiene una enfermera activa y que la enfermera no está asignada a otra posta,<br>
entonces debe realizar la asignación y responder con 200 OK confirmando la operación.<br><br>
Escenario 4: Asignación no válida<br><br>
Dado que se recibe una solicitud POST /assign-nurse para una posta que ya tiene una enfermera asignada o para una enfermera que ya pertenece a otra posta,<br>
cuando la API valida las reglas de asignación,<br>
entonces debe rechazar la operación y devolver un estado 400 Bad Request indicando la causa.<br>
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
       <td>TS-26</td>
      <td>Developer</td>
      <td>High</td>
      <td>EP-08</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Consulta de distritos disponibles</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como desarrollador, quiero implementar una API que proporcione los distritos disponibles, para permitir seleccionar correctamente la ubicación de una posta durante su registro.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        Escenario 1: Consulta exitosa de distritos<br><br>
Dado que se recibe una solicitud GET /districts,<br>
cuando la API consulta los distritos registrados,<br>
entonces debe responder con 200 OK y devolver el identificador y nombre de cada distrito disponible.<br><br>
Escenario 2: Acceso sin autorización<br><br>
Dado que se recibe una solicitud GET /districts sin un token válido o sin permisos de administrador,<br>
cuando la API valida las credenciales,<br>
entonces debe responder con 401 Unauthorized o 403 Forbidden.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>TS-27</td>
      <td>Developer</td>
      <td>High</td>
      <td>EP-08</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3">Gestión de citas y disponibilidad de postas</td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como desarrollador, quiero implementar una API para gestionar la reserva, cancelación y consulta de citas médicas de los pacientes, así como consultar las postas y horarios disponibles, para permitir una correcta gestión de las atenciones.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        Escenario 1: Reserva de cita exitosa<br><br>
Dado que se recibe una solicitud POST /appointments con una posta, paciente, fecha y hora disponibles,<br>
cuando la API valida que el paciente pertenece a la madre, que la posta tiene una enfermera asignada y que el horario está disponible,<br>
entonces debe registrar la cita y responder con 201 Created.<br><br>
Escenario 2: Horario no disponible<br><br>
Dado que se recibe una solicitud POST /appointments para un horario que ya está reservado,<br>
cuando la API verifica la disponibilidad,<br>
entonces debe rechazar la reserva y responder con 400 Bad Request, indicando que el horario ya está ocupado.<br><br>
Escenario 3: Consulta de horarios disponibles<br><br>
Dado que se recibe una solicitud GET /:facilityId/available-slots con una posta y una fecha,<br>
cuando la API consulta los horarios configurados,<br>
entonces debe responder con 200 OK indicando cuáles están disponibles y cuáles están ocupados.<br><br>
Escenario 4: Cancelación de una cita<br><br>
Dado que se recibe una solicitud PUT /appointments/cancel con el identificador de una cita perteneciente a la madre,<br>
cuando la API valida que la cita existe y pertenece a la madre,<br>
entonces debe cancelar la cita y responder con 200 OK.<br><br>
Escenario 5: Consulta del historial de citas<br><br>
Dado que se recibe una solicitud GET /patient/:patientId/appointments,<br>
cuando la API consulta las citas asociadas al paciente,<br>
entonces debe responder con 200 OK y devolver las citas correspondientes, incluyendo su estado.<br><br>
Escenario 6: Consulta de la próxima cita<br><br>
Dado que se recibe una solicitud GET /appointments/mother/next,<br>
cuando la API encuentra una cita futura confirmada para alguno de los pacientes de la madre,<br>
entonces debe responder con 200 OK y devolver la información de la próxima cita.<br><br>
Escenario 7: Madre sin próxima cita<br><br>
Dado que se recibe una solicitud GET /appointments/mother/next y no existen citas futuras confirmadas,<br>
cuando la API realiza la consulta,<br>
entonces debe responder con 200 OK indicando que no existen próximas citas.<br><br>
Escenario 8: Consulta de postas cercanas<br><br>
Dado que se recibe una solicitud GET /nearby con las coordenadas lat y lng de la madre,<br>
cuando la API procesa la ubicación proporcionada,<br>
entonces debe responder con 200 OK y devolver las postas activas ordenadas por distancia.
      </td>
    </tr>
  </tbody>
</table>

---

<table border="1" cellpadding="10" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Story ID</th>
      <th>User</th>
      <th>Priority</th>
      <th>Epic</th>
    </tr>
  </thead>
  <tbody>
    <tr>
   <td>TS-30</td>
      <td>Developer</td>
      <td>High</td>
      <td>EP-08</td>
    </tr>
    <tr>
      <td><b>Title</b></td>
      <td colspan="3"></td>
    </tr>
    <tr>
      <td colspan="4"><b>Description</b>
      </td>
    </tr>
    <tr>
      <td colspan="4">
       Como desarrollador, quiero implementar una API para consultar las citas futuras asignadas a una enfermera y su próxima agenda, para facilitar la gestión de sus atenciones programadas.
      </td>
    </tr>
    <tr>
      <td colspan="4"><b>Acceptance Criteria</b></td>
    </tr>
    <tr>
      <td colspan="4">
        Escenario 1: Consulta de citas futuras<br><br>
Dado que se recibe una solicitud GET /appointments/nurse,<br>
cuando la API consulta las citas asignadas a la enfermera,<br>
entonces debe responder con 200 OK y devolver las citas futuras confirmadas correspondientes.<br>
Escenario 2: Consulta de próximas citas<br><br>
Dado que se recibe una solicitud GET /appointments/nurse/top,<br>
cuando existen citas futuras asignadas a la enfermera,<br>
entonces la API debe responder con 200 OK y devolver las próximas citas ordenadas por fecha y hora.<br><br>
Escenario 3: Consulta de la posta asignada<br><br>
Dado que se recibe una solicitud GET /nurse/my-facility,<br>
cuando la enfermera tiene una posta asignada,<br>
entonces la API debe responder con 200 OK y devolver el nombre de la posta correspondiente.<br><br>
Escenario 4: Enfermera sin posta asignada<br><br>
Dado que se recibe una solicitud GET /nurse/my-facility y la enfermera no tiene una posta asignada,<br>
cuando la API consulta la asignación,<br>
entonces debe responder con 404 Not Found indicando que no existe una posta asignada.
      </td>
    </tr>
  </tbody>
</table>

## 3.3. Product Backlog

> Ordenado por prioridad de valor de negocio. Estimación en Story Points (serie de Fibonacci).

| # Orden | User Story ID | Título | Descripción | Story Points (1/2/3/5/8) |
|---------|---------------|--------|-------------|--------------------------|
| 1 | US01 | [Título] | **Como** … **quiero** … **para** … | [SP] |

<!-- COMPLETAR -->

## 3.4. Impact Mapping

> Impact Map con Goal → Actors → Impacts → Deliverables, elaborado en UXPressia o LucidChart.

<img src="../assets/img/chapter-III/impact-map.png" alt="Impact Map">

**Goal (SMART):** <!-- COMPLETAR -->

<!-- COMPLETAR: explicación del mapa -->
