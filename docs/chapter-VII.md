# Capítulo VII: DevOps Practices

> Este capítulo documenta el pipeline de DevOps implementado para los productos que forman parte de la plataforma **Ferova**. El pipeline es el soporte sobre el cual se ejecutan los experimentos descritos en el Capítulo VIII.

<img src="../assets/img/chapter-VII/pipeline-overview.png" alt="Vista general del pipeline DevOps">

## 7.1. Continuous Integration

### 7.1.1. Tools and Practices

> Herramientas seleccionadas (por ejemplo, GitHub Actions), justificación de la elección y prácticas adoptadas: trunk-based / GitFlow, protección de ramas, ejecución automática de pruebas en cada Pull Request, revisión obligatoria y política de merge.

| Herramienta | Propósito | Justificación |
|-------------|-----------|---------------|
| [Herramienta] | [Propósito] | [Justificación] |

<!-- COMPLETAR -->

### 7.1.2. Build & Test Suite Pipeline Components

> Componentes del pipeline de build y pruebas: triggers, jobs, steps, artefactos generados y criterios de fallo. Incluir el archivo de workflow y la evidencia de ejecución.

```yaml
# .github/workflows/ci.yml
```

<img src="../assets/img/chapter-VII/ci-run.png" alt="Ejecución del pipeline de CI">

| Componente | Descripción | Trigger | Resultado esperado |
|------------|-------------|---------|--------------------|
| [Job] | [Descripción] | [push / pull_request] | [Resultado] |

<!-- COMPLETAR -->

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
