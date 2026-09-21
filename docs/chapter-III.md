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
Dado que el visitante reconoce que la plataforma es confiable<br>
Cuando accede a convertirse en usuario de la plataforma<br>
Entonces es redirigido a la tienda de aplicaciones de su sistema operativo para descargar la aplicación.
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
