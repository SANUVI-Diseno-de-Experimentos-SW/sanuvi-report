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
        <strong>Escenario #2: Visitante lee los testimonios de clientes.</strong>
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
