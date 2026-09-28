# Capítulo IV: Product Design

## 4.1. Style Guidelines

Incluiremos la guía de estilos para nuestras dos aplicaciones: FerovaFamily y FerovaClinic

**Branding**

Para Ferova Family, el branding se diseñó para mostrar confianza y profesionalismo, abarcando el tema de la salud. Los tres iconos del logo (Gota de sangre, corazón y casa) representan la salud y bienestar que nuestra aplicación promete mediante sus funcionalidades principales. En el tema de colores, el color rojo representa la vitalidad y temas de salud de la persona y el color salmón representa la calidez, contrastando de buena manera con el otro color. El diseño incluye el logo del producto y su nombre para que sea fácil de identificar.

<div align="center">
  <img src="../assets/img/chapter-IV/Branding_FerovaFamily.png">
</div>

El branding de Ferova Clinic se diseñó para mostrar profesionalismo, enfocado en el análisis de datos. Los iconos del logo (gota de sangre, barras y cruz roja) muestran la conexión entre el análisis de datos y la salud. En los colores, el color azul muestra profesionalismo y confianza y el color rojo muestra todo lo relacionado a la salud. El diseño incluye el logo del producto y su nombre para que sea identificable.

<div align="center">
  <img src="../assets/img/chapter-IV/Branding_FerovaClinic.png">
</div>

**Typography**

Para las dos aplicaciones, se selecciono la tipografía "Inter" como fuente principal y secundaria por su legibilidad, tono profesional y neutralidad. Esta fuente es agradable al usuario, mostrando diferencias claras en cada letra.

<div align="center">
  <img src="../assets/img/chapter-IV/Typography_Inter.png">
</div>


**Colors**

La paleta de colores de Ferova Family y Ferova Clinic se compone de 4 colores y sus variantes. Los colores, en conjunto, permiten mostrar una claridad en el diseño de las dos aplicaciones.

<div align="center">
  <img src="../assets/img/chapter-IV/Gemini_Generated_Image_62kz2062kz2062kz.jpg">
</div>

- #7C0303: Utilizado en Ferova Family. Este color y sus variaciones están asociadas a la vitalidad y salud, también se le relaciona a la urgencia. Representa la salud principalmente. Utilizada en botones primarios y la interfaz de la aplicación.

- #C92A2A : Utilizado en Ferova Family. Este color y sus variaciones están asociadas a la calidez y empatía. Representa el hogar principalmente. Utilizada en botones secundarios, fondos de cards, etc.

- #005A9E: Utilizado en Ferova Clinic. Transmite profesionalismo y confianza médica. Representa lo técnico y analítico. Utilizada en botones primarios y la interfaz de la aplicación.

- #BFDBFE: Utilizado en Ferova Clinic. Transmite claridad y limpieza. Representa el orden y organización. Utilizada en cards y botones secundarios.

- #7F7F7F (Gris): Utilizado en las dos aplicaciones. Color que transmite equilibrio. Utilizado en textos secundarios, botones desactivados, etc.

- #047857 (Verde): Utilizado en las dos aplicaciones. Transmite tranquilidad, confirmación y estabilidad.

- #FED500 (Amarillo): Utilizado en Ferova Clinic. Transmite advertencia, precaución y atención moderada.

**Spacing**

El diseño de las dos aplicaciones utiliza correctamente los espaciados para mantener un orden entre los distintos componentes que se muestran en la pantalla. Cada componente fue posicionado para que exista un espaciado y no se muestre abultado. En las dos aplicaciones, existira un espacio predefinido para la muestra del contenido y los componentes están diseñados para que se ajuste según la resolución del dispositivo.

**Tono de comunicación y Lenguaje aplicado**

Para Ferova Family, hemos tomado la decisión de tener un tono de comunicación empático, cercano al usuario y motivador. Esto debido a que la madre (el usuario principal) que utilizará esta app estará preocupada por el tratamiento de su hijo. Nosotros como desarrolladores, tenemos que tomar en cuenta esto: Debemos utilizar un lenguaje cercado al usuario, sin utilizar tecnicismos, un lenguaje amigable para que reduzca la ansiedad durante el tratamiento y motivador, que premie al usuario por los pequeños avances.

Por el otro lado, para Ferova Clinic, hemos tomado la decisión de tener un tono de comunicación profesional, directo y analítico. Esto debido a que el médico (el usuario principal) que utilizará esta app necesita acceder a todos los datos del usuario de una manera eficaz. Nosotros como desarrolladores, tenemos que tomar en cuenta lo siguiente: Debemos utilizar un lenguaje con las terminologías adecuadas, el lenguaje debe ser directo y todo se tiene que basar en los datos almacenados de los pacientes.

### 4.1.2. Web Style Guidelines

Estándares visuales e interactivos para las interfaces web de FerovaClinic, asegurando coherencia en desktop y dispositivos móviles.

#### Colores

**Primarios**
- Azul Oscuro: `#003A70` (navbar, botones principales)
- Azul Primario: `#1E7CB4` (enlaces, highlights)
- Azul Claro: `#E8F4F8` (fondos informativos)

**Sistema de Riesgo**
- Rojo (Alto): `#E53935` y fondo `#FFCDD2`
- Naranja (Medio): `#FFA500` y fondo `#FFE5CC`
- Verde (Bajo): `#4CAF50` y fondo `#E8F5E9`

**Neutros**
- Fondo: `#FFFFFF` (blanco), `#F5F7FA` (gris claro)
- Texto: `#1A1A1A` (primario), `#666666` (secundario)
- Borde: `#E0E0E0`

**Variantes de Estado Clínico**
 
| Badge | Fondo | Texto | Uso |
|-------|-------|-------|-----|
| ACTIVO | `#E8F5E9` | `#4CAF50` | Tratamiento en curso, paciente activo |
| CONFIRMADA | `#E0F2F1` | `#26A69A` | Cita confirmada, dosis confirmada |
| COMPLETADO | `#E8F5E9` | `#4CAF50` | Tratamiento finalizado, período completado |
| ABANDONADO | `#FFCDD2` | `#E53935` | Tratamiento abandonado, paciente dado de alta |
| PENDIENTE | `#FFE5CC` | `#F57C00` | Acción pendiente, control pendiente |
| EN SEGUIMIENTO | `#E3F2FD` | `#1565C0` | Monitoreo activo, seguimiento requerido |

#### Tipografía

**Familia**: `'Segoe UI', -apple-system, BlinkMacSystemFont, sans-serif`

| Elemento | Size | Weight | Uso |
|----------|------|--------|-----|
| H1 | 32px | 700 | Títulos página |
| H2 | 24px | 700 | Títulos sección |
| H3 | 18px | 600 | Subtítulos |
| H4 | 16px | 600 | Títulos card |
| Body | 14px | 400 | Texto general |
| Small | 12px | 400 | Labels |
| Metric | 28-32px | 700 | Números grandes |

#### Spacing

- Base: 8px
- Cards gap: 16px
- List gap: 12px
- Padding componentes: 12px 24px (botones), 20px (cards)

#### Componentes

**Navbar**
- Alto: 64px (fixed)
- Fondo: Gradiente azul con blur
- Logo blanco + items navegación

**Botones**
- Primario: Azul oscuro, padding 12px 24px, border-radius 6px
- Secundario: Outline azul, transparente
- Estados: hover (elevación), active (scale 0.98)

**Cards**
- Fondo blanco, border 1px gris, border-radius 8px
- Padding: 20px
- Border-left 4px según riesgo (si aplica)
- Hover: elevación suave

**Badges**
- Alto: 28px, border-radius 16px
- Padding: 4px 12px
- Font: 11px uppercase, weight 600
- Variantes: ACTIVO (verde), CONFIRMADA (verde), COMPLETADO (verde), ABANDONADO (rojo)

**Avatares**
- Circular, 48px standard
- Colores pastel por inicial
- Texto: iniciales en blanco, 18px

**Inputs**
- Alto: 44px
- Padding: 12px 14px
- Border: 1px gris, radius 6px
- Focus: border azul, shadow suave

#### Breakpoints

- Mobile: < 640px (1 columna)
- Tablet: 640px - 1024px (2 columnas)
- Desktop: > 1024px (3 columnas)
- Max-width: 1280px

#### Animaciones

- Duración: 0.3s ease-out (estándar)
- Hover: elevación + sombra
- Entradas: fade-in + slide-up (0.4s)
- Focus: outline azul 2px

#### Accesibilidad

- Contraste mínimo: 4.5:1 (texto sobre fondos)
- Navegación por teclado: Tab order lógico, focus visible
- Aria labels: en inputs y botones icon-only
- WCAG 2.1 AA

#### Componentes FerovaClinic

**Card Paciente**
- Avatar (48px) + Nombre (H4) + Badge estado
- Metadata (edad, ubicación)
- CTA: "Ver Detalles"

**Monitor Clínico**
- Score badge arriba-derecha (56px circular)
- Adherencia (círculo donut con %)
- Tratamiento (duración, dosis, progreso)

**Heatmap**
- Mapa geográfico con círculos coloreados por riesgo
- Tamaño proporcional a pacientes

### 4.1.3. Mobile Style Guidelines

Esta sección define las guías de estilo visual y de interacción para aplicaciones móviles, asegurando consistencia, usabilidad y alineación con las buenas prácticas de diseño en cada plataforma.


#### 4.1.3.1. iOS Mobile Style Guidelines
 
En esta subsección se detallan los estándares visuales y de interacción aplicados a la versión móvil de Ferova Family para dispositivos iOS, tomando como referencia las pantallas diseñadas en formato iPhone 15 Pro. Estos lineamientos aseguran una experiencia coherente con la identidad visual de Ferova Family, manteniendo una navegación clara, jerarquía de información intuitiva y adaptación a pantallas con zonas seguras como el *Dynamic Island*.
 
**Sistema de Rejilla y Layout iOS**
 
Para garantizar una correcta visualización en dispositivos iPhone, la interfaz móvil de Ferova Family utiliza una estructura vertical de una sola columna, priorizando la accesibilidad a funcionalidades médicas y la claridad en la información de salud:
 
* **Formato de pantalla iPhone:** Las vistas están diseñadas para una proporción vertical, considerando espacios superiores seguros para evitar interferencias con el *Dynamic Island* y la barra de estado del sistema iOS.
* **Distribución en una columna:** El contenido principal se organiza de forma vertical, permitiendo que secciones como inicio de sesión, diario nutricional, citas médicas, consultas y progreso se visualicen de manera ordenada y accesible.
* **Espaciado lateral:** Se emplean márgenes internos consistentes (16-20px) para evitar que los textos, cards y botones queden pegados a los bordes de la pantalla.
* **Cards centradas:** Las tarjetas de contenido, como las de "Mis Niños", "Postas Cercanas", "Historial Nutricional" y "Citas", se muestran centradas, con ancho controlado y separación visual clara entre bloques.
* **Área segura para navegación:** Un espacio inferior de aproximadamente 70-80px se mantiene reservado para la barra de navegación inferior (bottom navigation), asegurando que el contenido principal no se superponga.
**Componentes de Interfaz iOS**
 
* **Botones principales:** Los botones como **Registrarse**, **Iniciar Sesión**, **Ver detalles**, **Confirmar Reserva**, **Enviar Consulta** y **Confirmar Dosis** utilizan el color rojo/marrón institucional de Ferova Family (#8B2E3B), con bordes redondeados (radio de 8-12px) y tamaño compacto. Contienen texto en blanco con peso semibold.
* **Botones secundarios:** Los botones de acción secundaria como "Ver más información", "Volver al inicio" y "Editar" utilizan un fondo blanco o gris claro con borde de 1-2px en color rojo, manteniendo coherencia visual.
* **Cards informativas:** Las tarjetas presentan fondos blancos, bordes suaves (radio 8-10px), sombras ligeras y espaciado interno consistente (12-16px). Se utilizan para organizar información sobre citas, consultas, registros nutricionales y detalles de postas médicas.
* **Formularios:** Las pantallas de registro, inicio de sesión y envío de consultas emplean campos de entrada con fondo blanco, bordes ligeros (1px), radio de 8px y distribución vertical. Los placeholders tienen color gris claro.
* **Badges y etiquetas:** Se utilizan para indicar estado (Activo, Confirmada, Cancelada, Omitida) con colores diferenciados: verde para activo/confirmado, gris para pendiente, rojo para cancelado/omitido.
* **Iconos y avatares:** Los avatares de usuarios (niños, especialistas) se presentan en círculos de 48-64px con colores pastel diferenciados. Los íconos médicos (jeringa, medicamento, corazón) utilizan la paleta de colores de la app con peso visual coherente.
* **Componentes de mapa:** En la pantalla "Postas Cercanas", el mapa muestra marcadores de ubicación en rojo oscuro con iconos médicos centrales, sobre un fondo de mapa en tonos neutros.
* **Indicadores de progreso:** Los gráficos circulares de progreso muestran el porcentaje de absorción de hierro con un ring en color rojo oscuro sobre fondo blanco/gris claro.
* **Acordeones y desplegables:** Las respuestas en consultas y detalles de servicios se organizan mediante bloques que se expanden con transiciones suaves.
**Navegación iOS**
 
* **Header superior:** Cada pantalla mantiene un header consistente con:
  - Botón de retroceso (flecha roja) en la parte superior izquierda
  - Título de la pantalla en color rojo oscuro y peso semibold
  - Iconos de acciones secundarias (menú) en la parte superior derecha cuando aplique
  
* **Bottom Navigation:** La navegación inferior contiene 4 opciones principales:
  - **Inicio**: Acceso a la pantalla principal con resumen de información
  - **Diario**: Historial nutricional y registro de comidas/suplementos
  - **Citas**: Gestión de citas médicas y reservas
  - **Consultas**: Comunicación directa con especialistas médicos
  
  Cada ícono se resalta en color rojo cuando está activo, mostrando una pequeña línea o fondo indicador.
* **Header con contexto:** Las pantallas con múltiples opciones (como "Crear cuenta" o "Iniciar sesión") incluyen un logo o ícono distintivo en la parte superior, centrado, reforzando la identidad de Ferova Family.
* **Flujo de navegación:** La navegación está pensada para permitir desplazamiento vertical dentro de cada sección, con acceso rápido a funcionalidades clave mediante la barra inferior en todo momento.
**Tipografía iOS Aplicada**
 
La tipografía mantiene una jerarquía clara para mejorar la lectura en pantallas pequeñas y la comprensión de información médica:
 
* **Títulos principales (H1):** Se utilizan textos en negrita (weight: 600-700) y tamaño 24-28px para secciones como **Iniciar sesión**, **Diario Nutricional**, **Citas**, **Mis Consultas**, **Progreso y Medallas** y **Crear tu cuenta**. Color: rojo oscuro (#8B2E3B).
* **Subtítulos (H2):** Se aplican textos de tamaño 16-18px con weight 600, en color gris oscuro (#333333), para explicar secciones secundarias como "Seleccionar Paciente", "Horarios disponibles", "Cita Actual".
* **Etiquetas de campo:** Textos pequeños (12-14px) en gris medio (#666666) con weight 500 para identificar campos de formulario (DNI, Contraseña, Teléfono).
* **Cuerpo de texto:** El contenido descriptivo utiliza tamaño 14px, weight 400, alineación justificada o natural según el contexto, y suficiente interlineado (1.5-1.6) para mantener la legibilidad.
* **Énfasis visual:** Algunos elementos importantes, como valores numéricos (1.36 mg de hierro), nombres de especialistas, estados de citas y datos de progreso, se resaltan con weight 600 o color rojo para captar la atención.
* **Textos auxiliares:** Información secundaria como distancias ("0.5 km"), horarios, notas de estado utilizan tamaño 12px en color gris claro (#999999).
* **Links y acciones:** Los links interactivos como "¿Ya tienes cuenta? Inicia sesión" utilizan color rojo con subrayado ligero, señalando claramente la interactividad.
**Sistema de Colores iOS**
 
La paleta de colores de Ferova Family está compuesta por:
 
* **Rojo/Marrón institucional:** #8B2E3B - Color primario utilizado en botones principales, headers, títulos y elementos de mayor jerarquía. Comunica confianza y profesionalismo médico.
* **Blanco:** #FFFFFF - Fondo principal de tarjetas, formularios y áreas de contenido, asegurando legibilidad y claridad.
* **Gris claro:** #F5F5F5 - Fondo alternativo para campos de entrada, secciones secundarias y áreas de agrupación.
* **Gris medio:** #CCCCCC - Bordes ligeros, divisores y elementos de menor importancia visual.
* **Gris oscuro:** #333333 - Texto principal de cuerpo y subtítulos, asegurando suficiente contraste.
* **Verde:** #2ECC71 - Indicador de estado activo, confirmado, o acción completada (checkmarks, badges "Activo", "Confirmada").
* **Rojo claro/Rosa:** #F5D5D8 - Fondos suaves para alertas, avisos o secciones destacadas que requieren atención.
* **Azul-Gris:** #5A6B7D - Color secundario utilizado en íconos de servicios, avatares de especialistas y elementos informativos.
* **Amarillo pastel:** #F4E4A6 - Color de badges para logros y medallas completadas.
* **Tonos pastel para avatares:** Colores suaves como azul claro (#87CEEB), rosa pastel (#FFB6C1) para diferenciar perfiles de niños.
**Animaciones y Micro-interacciones iOS**
 
La experiencia móvil en iOS debe mantener interacciones suaves, responsivas y coherentes con las pautas de Human Interface Guidelines de Apple:
 
* **Transiciones de navegación:** Las pantallas utilizan transiciones push/pop suaves cuando se navega entre secciones, con duración de 300-350ms.
* **Botones táctiles:** Los botones deben responder visualmente al toque mediante:
  - Cambio de opacidad (reducción a 70-80%) durante el toque
  - Ligera reducción de escala (0.98x) para feedback táctil
  - Animación de duración 150-200ms
* **Cards interactivas:** Las tarjetas de citas, consultas y registros nutricionales pueden mostrar:
  - Ligera elevación (sombra más pronunciada) al interactuar
  - Cambio de color de fondo (gris muy claro) durante el toque
  - Transición suave al expandir/colapsar información
* **Desplegables y acordeones:** Los bloques de preguntas frecuentes, servicios disponibles y detalles expandibles utilizan:
  - Animación de rotación del ícono indicador (0° a 180°)
  - Transición suave de altura del contenido (200-300ms)
  - Cambio de color de fondo en el header del acordeón
* **Indicadores de progreso:** Los anillos de progreso (absorción de hierro) animados muestran:
  - Animación de stroke desde 0 hasta el porcentaje final al cargar la pantalla
  - Duración de 800-1000ms con easing ease-out
  - Número de porcentaje que anima simultáneamente
* **Desplazamiento fluido:** Las secciones mantienen un scroll vertical suave con:
  - Comportamiento momentum scrolling nativo de iOS
  - Parallax sutil en fondos de headers (reducción de 20-30%)
  - Ocultamiento suave de elementos como tabs al desplazarse hacia abajo (200ms)
* **Estados de carga:** Se utilizan spinners subtiles o esqueletos de contenido para indicar carga, con animación de rotación suave (800-1000ms) en color rojo institucional.
* **Feedback háptico:** Se recomienda el uso de haptic feedback subtle de iOS (light impact, medium success) en momentos clave:
  - Confirmación de envío de consulta
  - Confirmación de cita
  - Logro de meta de hierro
 
**Consideraciones de Accesibilidad**
 
* Contraste mínimo de 4.5:1 entre texto y fondo (conforme WCAG AA)
* Tamaño mínimo de touch targets de 44x44pt según HIG de Apple
* Etiquetas claras para campos de formulario y botones de acción
* Uso de colores en combinación con iconos/textos para transmitir información (no solo color)
* Soporte para Dynamic Type para escalado de texto


#### 4.1.3.2. Android Mobile Style Guidelines
 
En esta subsección se definen los estándares visuales, funcionales y de interacción aplicados a la versión móvil de Ferova Family para dispositivos Android, fundamentados en las especificaciones de **Material Design 3 (Material You)** de Google. Estos lineamientos garantizan una experiencia ergonómica, accesible y perfectamente integrada con el ecosistema de Android en una amplia variedad de fabricantes y densidades de pantalla habituales en el Perú (smartphones con proporciones 20:9 y 19.5:9, resoluciones FHD+ y densidades xxhdpi), optimizando el aprovechamiento del espacio frente a la barra de estado superior (*punch-hole* o muesca de cámara frontal) y la barra inferior de navegación por gestos del sistema.
 
**Sistema de Rejilla y Layout Android**
 
Para garantizar una experiencia visual ordenada, predecible y adaptable a la fragmentación de pantallas en Android, la interfaz de Ferova Family implementa una cuadrícula modular basada en columnas verticales y márgenes flexibles:
 
* **Formato de pantalla Android:** Las interfaces se estructuran para proporciones verticales comunes en Android (20:9, 19.5:9), incorporando márgenes seguros superiores (*insets*) para evitar solapamientos con la barra de estado del sistema, iconos de conectividad y la cámara frontal perforada.
* **Distribución en una columna vertical:** Toda la información clave (acceso, diario nutricional, citas de control, consultas con especialistas y avance de hemoglobina) se despliega en un flujo vertical continuo, minimizando el esfuerzo de interacción y facilitando el escaneo visual rápido.
* **Espaciado lateral estandarizado:** Se aplican márgenes internos uniformes de 16-20dp a ambos lados de la pantalla, asegurando que tarjetas, textos y botones mantengan una separación prudente respecto a los bordes físicos del dispositivo.
* **Cards centradas y estructuradas:** Los contenedores principales (tarjetas de "Mis Niños", "Postas Cercanas", "Historial Nutricional" y "Citas") se presentan centrados con un ancho controlado, bordes definidos y espaciado vertical de 12-16dp entre bloques para brindar claridad compositiva.
* **Área segura para navegación inferior:** Se reserva un espacio inferior de 80dp de altura para alojar la barra de navegación de Material 3 (*M3 Navigation Bar*), respetando los márgenes de la barra de navegación por gestos nativa de Android para evitar activaciones involuntarias.
 
**Componentes de Interfaz Android (Material 3)**
 
* **Botones principales (Filled Buttons M3):** Las acciones prioritarias como **Registrarse**, **Iniciar Sesión**, **Ver detalles**, **Confirmar Reserva**, **Enviar Consulta** y **Confirmar Dosis** se implementan como botones rellenos de Material 3 en el color institucional de Ferova Family (#8B2E3B / #7C0303). Cuentan con altura estándar de 48dp (cumpliendo el touch target mínimo), esquinas redondeadas con radio de 20-24dp (o forma de píldora completa M3), texto en blanco con peso semibold y efecto táctil *Ripple* inmediato al pulsar.
* **Botones secundarios (Outlined y Text Buttons M3):** Acciones secundarias como "Ver más información", "Volver al inicio" o "Editar" utilizan botones delineados con borde de 1.5dp en color institucional o neutro sobre fondo transparente, o botones de texto plano para acciones terciarias de baja fricción.
* **Botón de Acción Flotante (Floating Action Button - FAB):** En pantallas como Diario Nutricional y Tratamiento se incorpora un FAB (estándar de 56×56dp o extendido) en la esquina inferior derecha o centrado, con fondo en color secundario o institucional, para la acción más recurrente del cuidador: "Registrar Dosis" o "Nueva Consulta".
* **Cards informativas (Material Cards):** Las tarjetas emplean el componente *OutlinedCard* o *ElevatedCard* de Material 3, con fondos blancos (#FFFFFF), radio de curvatura de 12-16dp, bordes tenues de 1dp en tono neutro (#CCCCCC) y elevación tonal sutil (Level 1) que evita sombras pesadas y sobrecargas visuales. Se utilizan para fichas de niños, resumen de tratamientos y listado de postas de salud.
* **Formularios y campos de texto (Text Fields M3):** Los formularios de inicio de sesión, registro de pacientes y consultas emplean *Outlined Text Fields* con fondo blanco o gris claro (#F5F5F5), etiquetas flotantes (*floating labels*), radio de curvatura de 8-12dp, soporte para iconos de inicio/fin (como ver u ocultar contraseña) y mensajes de soporte o error contextuales en la parte inferior.
* **Badges y Chips de Estado (Material 3 Chips):** Se utilizan *Filter Chips* y *Assist Chips* compactos para clasificar el estado de citas y tratamientos (Activo, Confirmada, Cancelada, Omitida). Se diferencian cromáticamente: verde para activo/confirmado, gris neutro para pendiente y rojo para cancelado/omitido, acompañados de texto explícito y esquinas redondeadas de 8dp.
* **Iconos y avatares:** Los perfiles de usuarios (niños registrados y especialistas médicos) se muestran en avatares circulares de 48-64dp con fondos en tonos pastel diferenciados. Los iconos corresponden a la biblioteca de **Material Symbols (Rounded)**, manteniendo un grosor de trazo uniforme y coherencia cromática con la identidad visual.
* **Componentes de mapa interactivo:** En la vista de "Postas Cercanas", el mapa integrado mediante Google Maps API despliega marcadores personalizados en color rojo oscuro con el icono de salud distintivo de Ferova Family, sobre un mapa con estilo visual simplificado que resalta vías de acceso y centros médicos.
* **Indicadores de progreso (Progress Indicators M3):** Para el monitoreo de absorción de hierro y cumplimiento de metas se utilizan indicadores circulares (*CircularProgressIndicator*) y lineales (*LinearProgressIndicator*) con anillo en color rojo institucional sobre riel de fondo en gris claro, mostrando el valor numérico porcentual en el centro o al costado.
* **Hojas modales inferiores (Modal Bottom Sheets M3):** Para tareas rápidas como el registro de gotas de sulfato ferroso, selección de síntomas o confirmación de horarios, se despliegan *Bottom Sheets* nativas de Material 3 con esquinas superiores redondeadas de 28dp y barra indicadora de arrastre (*drag handle*), permitiendo al usuario completar la acción sin perder el contexto de la vista principal.
* **Barras de notificación temporal (Snackbars M3):** Tras registrar una dosis o agendar una cita, se muestra un *Snackbar* emergente en la parte inferior de la pantalla con mensaje breve y botón interactivo de deshacer (*"Dosis de 5 gotas registrada para Matías. [DESHACER]"*), asegurando tolerancia a fallos y tranquilidad al cuidador.
 
**Navegación Android**
 
* **Header superior (M3 Top App Bar):** Cada pantalla incorpora una barra superior consistente (variantes *Center-Aligned Top App Bar* o *Small Top App Bar*):
  - Botón de navegación hacia atrás (flecha nativa de Android) en el extremo izquierdo, integrado plenamente con el gesto predictivo de retroceso (*Predictive Back Gesture*) de Android.
  - Título de la pantalla en tipografía semibold y color institucional (#8B2E3B / #7C0303).
  - Iconos de acción secundaria (menú contextual de tres puntos verticales o botón de notificaciones) en el extremo derecho cuando corresponda.
* **Barra de navegación inferior (M3 Navigation Bar):** Mantiene fijas en la base las 4 opciones cardinales de la aplicación:
  - **Inicio:** Resumen del estado de salud y recordatorio de la próxima dosis.
  - **Diario:** Registro nutricional, alimentos ricos en hierro y control de tomas.
  - **Citas:** Calendario, reservas y gestión de citas en la posta médica.
  - **Consultas:** Directorio y comunicación directa con profesionales de salud.
  
  La pestaña activa se resalta mediante el contenedor en forma de píldora horizontal (*active indicator pill*) característico de Material 3, con fondo en tono suave y el icono relleno en color institucional.
* **Header de identidad y bienvenida:** Las pantallas de bienvenida y autenticación ("Crear tu cuenta", "Iniciar sesión") sitúan el imagotipo de Ferova Family centrado en la parte superior, consolidando el reconocimiento de marca.
* **Flujo ergonómico y navegación gestual:** La aplicación soporta navegación fluida por gestos nativos de Android (deslizar desde los bordes para volver), scroll vertical suave y acceso permanente a las secciones clave desde la barra inferior sin requerir estiramiento de la mano.
 
**Tipografía Android Aplicada**
 
La tipografía adopta la familia **Inter** mapeada rigurosamente a la escala de tipos de **Material Design 3**, asegurando legibilidad inmediata en condiciones de diversa iluminación y pantallas de densidades variables:
 
* **Títulos principales (Headline Large/Medium - H1):** Tamaño de 24-28sp con peso negrita (weight: 600-700) para encabezados mayores como **Iniciar sesión**, **Diario Nutricional**, **Citas**, **Mis Consultas**, **Progreso y Medallas** y **Crear tu cuenta**. Color: rojo institucional (#8B2E3B / #7C0303).
* **Subtítulos de sección (Title Medium - H2):** Tamaño de 16-18sp con peso semibold (weight: 600) en color gris oscuro (#333333), empleados en bloques de contenido secundario como "Seleccionar Paciente", "Horarios disponibles" y "Cita Actual".
* **Etiquetas de formulario (Label Large/Medium):** Textos concisos de 12-14sp en gris medio (#666666) y peso medium (weight: 500) para identificar inputs (DNI, Teléfono, Contraseña).
* **Cuerpo de texto (Body Large/Medium):** Contenido explicativo y guías nutricionales en 14-16sp, peso regular (weight: 400), alineación natural a la izquierda y un interlineado (*line-height*) de 1.5 a 1.6 para evitar cansancio visual.
* **Énfasis de métricas clínicas:** Cifras clave como dosificación de gotas (ej. "1.36 mg de hierro"), porcentajes de adherencia terapéutica, nombres de especialistas y estados clínicos se destacan con peso semibold (weight: 600) o acento en color rojo institucional.
* **Textos auxiliares y metadatos (Label Small / Body Small):** Información complementaria como distancias a postas ("0.5 km"), horas de registro y notas de pie en tamaño de 11-12sp con tono gris neutro (#999999).
* **Enlaces y accionables interactivos:** Enlaces como "¿Ya tienes cuenta? Inicia sesión" utilizan color rojo institucional (#8B2E3B) con peso semibold o subrayado ligero para indicar con claridad su interactividad.
 
**Sistema de Colores Android (Material 3 Color Roles)**
 
La paleta cromática de Ferova Family en Android se estructura mediante los roles de color de Material You, equilibrando la sobriedad médica con la calidez maternal:
 
* **Primary (Rojo/Marrón institucional):** #8B2E3B / #7C0303 - Tono fundamental para botones primarios, headers, iconos activos de navegación, FAB y títulos de mayor jerarquía. Transmite rigor en salud y compromiso terapéutico.
* **Surface y Background (Blanco Puro):** #FFFFFF - Superficie base para tarjetas, diálogos, hojas inferiores y fondos de contenido, asegurando luminosidad y alto contraste.
* **Surface Variant / Fondo Alternativo:** #F5F5F5 / #F8FAFC - Fondo de lienzos generales, cajas de texto de formularios y agrupaciones secundarias.
* **Outline (Gris Medio):** #CCCCCC / #E0E0E0 - Color de bordes en tarjetas delineadas (*OutlinedCard*), divisores de listas y límites de campos en reposo.
* **On Surface (Gris Oscuro):** #333333 - Color primario para texto de lectura, títulos secundarios e iconos estándar, asegurando contraste óptimo frente a fondos claros.
* **Semantic Success (Verde Clínico):** #2ECC71 - Indicador de dosis completada, confirmación de cita y estados activos (badges "Confirmada", "Activo").
* **Secondary Container (Rojo Claro / Rosa):** #F5D5D8 - Superficie de fondo para alertas sanitarias, avisos de dosis próximas y bloques que demandan atención sin generar alarma desmedida.
* **Tertiary / Informative (Azul-Gris):** #5A6B7D - Color de soporte empleado en avatares de médicos especialistas, detalles de servicios clínicos e iconos informativos.
* **Accent Gold (Amarillo Pastel / Ámbar):** #F4E4A6 - Color para badges de logros, estrellas y medallas por días consecutivos de adherencia al tratamiento.
* **Tonos pastel para avatares:** Azul claro (#87CEEB) y rosa pastel (#FFB6C1) para personalizar e identificar de forma visualmente agradable a cada niño registrado.
 
**Animaciones y Micro-interacciones Android (Material Motion)**
 
La experiencia en Android se apoya en los principios de movimiento de Material Design 3, ofreciendo transiciones naturales y retroalimentación inmediata:
 
* **Efecto Ripple:** Todos los componentes interactivos (botones, filas de listas, cards pulsables y tabs) responden al toque mediante una onda de tinta táctil (*ripple effect*) semitransparente, confirmando el contacto físico de forma instantánea.
* **Transiciones de pantalla (Material Shared Axis y Predictive Back):** Las navegaciones entre niveles jerárquicos aplican transiciones de eje compartido (*Shared Axis* X/Y) con duración de 300-350ms y curva *Emphasized Easing*, mientras que el retorno de pantalla respeta la animación predictiva de Android 14+.
* **Transformación de contenedores (Container Transform):** Al seleccionar una cita o un especialista, la tarjeta se expande suavemente hacia la vista de detalle mediante una transición continua de contenedor (duración de 250-300ms).
* **Elevación tonal interactiva:** Las tarjetas de citas y consultas incrementan su elevación tonal al ser presionadas (de Level 1 a Level 2), proporcionando un sutil realce visual.
* **Animación de indicadores de progreso:** Los anillos circulares de absorción de hierro y barras de avance animan su recorrido desde 0 hasta el porcentaje correspondiente al cargar la pantalla (800-1000ms con curva *ease-out*), sincronizando la cifra numérica en pantalla.
* **Desplazamiento fluido con física nativa:** Las listas y vistas de contenido incorporan el desplazamiento elástico nativo de Android (*overscroll stretch effect*) y admiten el ocultamiento progresivo de la barra de navegación inferior al realizar scroll descendente continuo.
* **Estados de carga elegantes:** Se emplean indicadores circulares (*CircularProgressIndicator* M3) en color rojo institucional o esqueletos de carga (*skeletons*) grises para anticipar la llegada de información desde el servidor.
* **Respuesta háptica nativa (Haptic Feedback):** Se utiliza la API de vibración de Android (`HapticFeedbackConstants.CONFIRM` y `HapticFeedbackConstants.REJECT`) en hitos decisivos:
  - Confirmación al registrar la toma de la dosis diaria de hierro.
  - Confirmación exitosa al agendar una cita médica en la posta.
  - Alerta sutil al intentar programar una cita en un horario no disponible.
 
**Consideraciones de Accesibilidad**
 
* **Ratio de contraste:** Cumplimiento riguroso de contraste mínimo de 4.5:1 para texto normal y 3.0:1 para elementos gráficos y texto grande, conforme a WCAG 2.1 nivel AA.
* **Superficies táctiles mínimas:** Todos los botones, iconos interactivos y campos de entrada poseen un tamaño mínimo de **48×48dp**, cumpliendo estrictamente con los lineamientos de accesibilidad de Google y las validaciones de Android Accessibility Scanner.
* **Etiquetado semántico (*contentDescription*):** Todos los botones basados exclusivamente en iconos (flecha de retroceso, botón de menú, iconos del tab bar) cuentan con descripciones de contenido explícitas para compatibilidad con el lector de pantalla **TalkBack**.
* **Independencia del color:** Ningún estado clínico o de tratamiento se transmite únicamente mediante variaciones cromáticas; se combinan iconos temáticos (check, reloj, cruz), texto descriptivo y color.
* **Soporte de escalado de texto (sp):** Todos los tamaños tipográficos se declaran en unidades `sp` (*scale-independent pixels*), respetando los ajustes de tamaño de fuente configurados por el usuario en el sistema operativo Android sin romper el layout.

## 4.2. Information Architecture

En esta sección se define la arquitectura de información del ecosistema **Ferova**, entendida como la organización, el etiquetado, la búsqueda y la navegación de los contenidos que soportan las Epics definidas en el Capítulo III. El análisis se desarrolla sobre los tres frentes de interacción del producto:

- **Landing Page de Sanuvi:** sitio web estático de captación, orientado al visitante que aún no es usuario.
- **Ferova Family:** aplicación móvil dirigida a los apoderados del paciente, responsables de administrar el tratamiento de hierro en el hogar.
- **Ferova Clinic:** aplicación web dirigida al personal de salud (enfermeras y administradores de posta), responsable del seguimiento clínico y de la gestión de las postas de salud.

Dado que los tres productos consumen la misma **API Application** descrita en la sección 4.8, la arquitectura de información se diseñó sobre un modelo de contenido compartido (paciente, tratamiento, control de hemoglobina, cita, posta, consulta y logro), pero con esquemas de organización, vocabulario y profundidad de navegación diferenciados según el rol y el contexto de uso de cada audiencia.

### 4.2.1. Organization Systems

Los sistemas de organización determinan cómo se agrupa y jerarquiza la información antes de ser presentada. En el ecosistema Ferova se emplean cuatro esquemas de manera combinada:

**1. Organización por audiencia (role-based)**

Constituye el esquema de primer nivel de toda la plataforma. Tras la autenticación, la API resuelve el rol del usuario (apoderado, enfermera o administrador) y determina qué aplicación y qué conjunto de destinos se habilitan. Un mismo contenido —por ejemplo, el tratamiento de un paciente— se expone con distinto grado de detalle: el apoderado observa la dosis del día y su racha de cumplimiento, mientras que la enfermera accede al esquema de dosificación en mg/kg/día, a la serie histórica de hemoglobina y al nivel de riesgo calculado. Este esquema evita que el personal de salud deba filtrar información doméstica y que el apoderado se enfrente a terminología clínica innecesaria.

**2. Organización jerárquica (visual hierarchy)**

Se aplica dentro de cada pantalla para diferenciar lo urgente de lo informativo. La jerarquía se construye con posición, tamaño tipográfico y color semántico, definidos en la sección 4.1:

- En **Ferova Clinic**, el Panel General ordena a los pacientes por nivel de riesgo clínico: los casos con hemoglobina en descenso o adherencia interrumpida se ubican en la parte superior con indicador rojo (`#7C0303`), seguidos de los casos en observación y, finalmente, de los pacientes estables.
- En **Ferova Family**, la pantalla *Tratamiento / Hoy* prioriza la dosis pendiente del día como elemento de mayor peso visual, relegando a segundo plano la racha acumulada, las insignias obtenidas y el resumen nutricional.

**3. Organización secuencial (step-by-step)**

Se utiliza en todos los procesos donde la omisión de un dato invalida el registro clínico. El usuario avanza por pasos con indicador de progreso, validación por paso y posibilidad de retroceder sin perder lo ingresado:

| Proceso | Aplicación | Secuencia definida |
|:---|:---|:---|
| Registro de usuario y verificación | Family / Clinic | Datos personales → credenciales → verificación de correo → confirmación |
| Recuperación de contraseña | Family / Clinic | Solicitud de correo → código enviado vía Resend → nueva contraseña → confirmación |
| Registro de paciente | Family | Datos del menor → vínculo con el apoderado → posta de atención → confirmación |
| Reserva de cita médica | Family | Selección de paciente → selección de distrito y posta → fecha y horario disponible → confirmación |
| Registro de cumplimiento de dosis | Family | Selección de paciente → confirmación de la toma → observaciones opcionales |
| Registro de control de hemoglobina | Clinic | Búsqueda del paciente → valor de Hb en g/dL y fecha → recálculo de riesgo → cierre del control |
| Inicio y cierre de tratamiento | Clinic | Verificación del historial → esquema de dosificación → seguimiento → alta del paciente |
| Registro de posta y asignación | Clinic (Admin) | Datos de la posta → ubicación vía Google Maps API → horarios de atención → asignación de enfermeras |

**4. Organización matricial (facetada)**

Se aplica donde el usuario debe explorar volúmenes altos de información sin una ruta predefinida. La matriz permite cruzar dimensiones de forma libre mediante filtros combinables:

- **Lista de pacientes (Clinic):** cruce de nivel de riesgo, estado del tratamiento, posta asignada y rango de fechas del último control.
- **Analítica y reportes de postas (Clinic – Admin):** cruce de posta, distrito, periodo y cobertura de adherencia, como insumo para los reportes de seguimiento.
- **Diario nutricional (Family):** cruce de fecha y tipo de comida para consultar el hierro absorbido y los alimentos registrados.
- **Historial de citas y de dosis (Family):** cruce de paciente y rango de fechas.

### 4.2.2. Labeling Systems

El sistema de etiquetado traduce el modelo de datos a un vocabulario comprensible para cada audiencia. Se establecieron las siguientes convenciones transversales, coherentes con el *Tone of Voice* de la sección 4.1:

- Los **destinos de navegación** se etiquetan con sustantivos cortos (*Pacientes*, *Citas*, *Nutrición*), nunca con frases.
- Las **acciones** se etiquetan con verbo en infinitivo más objeto (*Registrar dosis*, *Reservar cita*, *Generar reporte*), evitando etiquetas ambiguas como "Aceptar" u "OK".
- El **vocabulario se adapta al rol**: en Ferova Clinic se emplea terminología clínica estandarizada (*hemoglobina*, *g/dL*, *adherencia*, *nivel de riesgo*, *alta del paciente*); en Ferova Family se emplea lenguaje cotidiano (*dosis de hoy*, *gotitas de hierro*, *alimentos que ayudan a absorber el hierro*).
- Se conserva el término **apoderado del paciente** en lugar de "familia" o "madre" en todas las etiquetas de interfaz, para no excluir a otros cuidadores responsables.
- Toda etiqueta numérica se acompaña de su unidad explícita (`g/dL`, `mg`, `días`) y toda fecha se muestra en formato `dd/mm/aaaa`.
- Los iconos nunca se utilizan como etiqueta única en destinos de navegación: siempre se acompañan de texto, conforme a los criterios de accesibilidad declarados en la sección 4.1.

**Landing Page (Sanuvi)**

| Etiqueta | Contenido asociado |
|:---|:---|
| Inicio | Propósito de la plataforma, eslogan y botones de llamado a la acción: acceder a la web o descargar la aplicación. |
| El problema | Datos estadísticos sobre la prevalencia de la anemia infantil en el Perú y su impacto en el desarrollo del menor. |
| Solución | Descripción general de Ferova y de cómo articula el hogar con la posta de salud. |
| Para quién | Beneficios diferenciados por rol: apoderados del paciente y personal de salud. |
| Cómo funciona | Línea de tiempo paso a paso del recorrido completo, desde el diagnóstico en la posta hasta el seguimiento diario en el hogar. |
| Testimonios | Experiencias de apoderados y personal de salud que han utilizado la plataforma. |
| Descarga y acceso | Enlaces a las tiendas de aplicaciones y acceso a Ferova Clinic. |
| Sobre Sanuvi | Misión, visión y equipo detrás del producto. |

**Ferova Family (apoderado del paciente)**

| Etiqueta | Contenido asociado |
|:---|:---|
| Tratamiento / Hoy | Dosis pendiente del día, registro de cumplimiento, racha acumulada, puntos obtenidos y avance del tratamiento del paciente seleccionado. |
| Nutrición | Diario nutricional: registro de alimentos consumidos, hierro absorbido del día, resumen nutricional y consulta de alimentos ricos en hierro. |
| Citas | Próxima cita, reserva de nuevas citas, consulta de postas y horarios disponibles, y agenda con el historial de citas. |
| Mi Familia | Pacientes registrados por el apoderado, datos de cada menor, evolución de su hemoglobina, logros e insignias obtenidas y posta asignada. |
| Consultas | Mensajería con la enfermera responsable del paciente: consultas abiertas, historial de consultas atendidas y creación de una nueva consulta. |
| Mi cuenta | Datos del apoderado, preferencias de recordatorios y cierre de sesión. |

**Ferova Clinic (personal de salud)**

| Etiqueta | Rol | Contenido asociado |
|:---|:---|:---|
| Panel General | Enfermera / Admin | Indicadores del día, pacientes que requieren atención según riesgo, agenda de citas y accesos rápidos. |
| Pacientes | Enfermera | Listado de pacientes asignados, registro y vinculación de pacientes, detalle del menor, seguimiento del nivel de hemoglobina y alta del paciente. |
| Tratamientos | Enfermera | Inicio del tratamiento, esquema de dosificación, estado y detalle del tratamiento, y seguimiento de la adherencia. |
| Historial Clínico | Enfermera | Registro y actualización del historial médico de cada paciente, con sus controles de hemoglobina. |
| Consultas | Enfermera | Bandeja de teleconsultas por paciente, conversación con el apoderado y cierre de consulta. |
| Agenda | Enfermera | Citas programadas en la posta asignada y disponibilidad de horarios. |
| Postas de Salud | Admin | Registro de postas, ubicación, horarios de atención y consulta de postas registradas. |
| Enfermeras | Admin | Consulta de enfermeras disponibles y asignación de enfermeras a una posta de salud. |
| Analítica y Reportes | Admin | Métricas de seguimiento por posta y distrito, y generación de reportes de cobertura y adherencia. |
| Configuración | Enfermera / Admin | Datos del profesional, posta activa y cierre de sesión. |

### 4.2.3. SEO Tags and Meta Tags

Las etiquetas de posicionamiento se aplican sobre los productos accesibles mediante navegador: la Landing Page de Sanuvi, principal responsable de la captación orgánica, y las vistas públicas de Ferova Clinic.

| Página | Title | Description | Keywords | Author |
|--------|-------|-------------|----------|--------|
| Landing Page | Ferova \| Seguimiento del tratamiento de la anemia infantil en el Perú | Ferova, una iniciativa de Sanuvi, conecta a los apoderados con el personal de salud para no perder el hilo del tratamiento de hierro: recordatorios de dosis, control de hemoglobina y citas en la posta. | anemia infantil, tratamiento de hierro, adherencia al tratamiento, hemoglobina, suplementación con hierro, posta de salud, salud infantil Perú, Sanuvi, Ferova | Sanuvi |
| Ferova Clinic (acceso) | Iniciar sesión \| Ferova Clinic | Acceso para enfermeras y administradores de postas de salud al seguimiento de pacientes en tratamiento contra la anemia infantil. | Ferova Clinic, acceso personal de salud, seguimiento de pacientes, anemia infantil | Sanuvi |
| Ferova Family (ficha de tienda) | Ferova Family — Tratamiento de anemia infantil | Registra la dosis diaria de hierro de tu niño, lleva su diario nutricional y reserva sus citas en la posta de salud desde una sola aplicación. | anemia, hierro, niños, tratamiento, dosis, salud | Sanuvi |

**Etiquetas fundamentales de la Landing Page**

```html
<meta charset="UTF-8">
```
Indica al navegador cómo interpretar los caracteres de texto de la página. `UTF-8` corresponde a una codificación universal que garantiza la correcta visualización de los caracteres especiales del castellano, como la "ñ" y las vocales acentuadas, presentes de forma constante en el contenido del producto.

```html
<meta name="viewport" content="width=device-width, initial-scale=1.0">
```
Establece que la página se adapte a la resolución del dispositivo, ajustando el ancho del contenido al ancho de la pantalla y fijando un nivel de zoom inicial 1:1. Resulta indispensable considerando que una proporción relevante de los apoderados accede al sitio desde un teléfono móvil.

```html
<title>Ferova | Seguimiento del tratamiento de la anemia infantil en el Perú</title>
<meta name="description" content="Ferova, una iniciativa de Sanuvi, conecta a los apoderados con el personal de salud para no perder el hilo del tratamiento de hierro: recordatorios de dosis, control de hemoglobina y citas en la posta.">
<meta name="keywords" content="anemia infantil, tratamiento de hierro, adherencia al tratamiento, hemoglobina, posta de salud, salud infantil Perú, Sanuvi, Ferova">
<meta name="author" content="Sanuvi">
```
El `title` y la `description` constituyen el texto que el motor de búsqueda presenta en sus resultados. Se redactaron incorporando el problema ("anemia infantil") y el ámbito geográfico ("Perú"), por tratarse de los términos con los que el público objetivo realiza efectivamente la búsqueda.

```html
<html lang="es-PE">
<meta name="robots" content="index, follow">
<link rel="canonical" href="https://sanuvi.github.io/ferova/">
```
El atributo `lang` informa el idioma y la variante regional del contenido; `robots` autoriza expresamente la indexación del sitio de captación; y `canonical` declara la dirección preferente de la página para evitar contenido duplicado.

**Etiquetas de previsualización en redes sociales (Open Graph y Twitter Cards)**

```html
<meta property="og:type" content="website">
<meta property="og:title" content="Ferova | Seguimiento del tratamiento de la anemia infantil">
<meta property="og:description" content="Recordatorios de dosis, control de hemoglobina y coordinación con la posta de salud, en una sola plataforma.">
<meta property="og:image" content="https://sanuvi.github.io/ferova/assets/og-cover.png">
<meta property="og:locale" content="es_PE">
<meta name="twitter:card" content="summary_large_image">
```
Estas etiquetas controlan la tarjeta de previsualización que se genera al compartir el enlace en redes sociales y en aplicaciones de mensajería, canal de difusión previsto para la captación de apoderados en comunidades y campañas de salud.

**Consideración sobre las aplicaciones**

Ferova Family y Ferova Clinic no son indexadas por motores de búsqueda: la primera por tratarse de una aplicación móvil nativa y la segunda por encontrarse detrás del inicio de sesión. En consecuencia, el posicionamiento de Ferova Family se trabaja mediante la optimización de su ficha de tienda (*App Store Optimization*), utilizando el título, la descripción y las palabras clave consignadas en la tabla anterior, mientras que en Ferova Clinic las vistas privadas se declaran con `<meta name="robots" content="noindex, nofollow">` para impedir su indexación.

### 4.2.4. Searching Systems

Los sistemas de búsqueda se diseñaron en función del volumen de información que administra cada rol. En Ferova Family predomina el filtrado sobre conjuntos pequeños y conocidos, mientras que en Ferova Clinic la búsqueda constituye el punto de partida del flujo de trabajo diario.

**Ferova Family**

| Ubicación | Mecanismo | Criterio |
|:---|:---|:---|
| Nutrición | Búsqueda por texto | Nombre del alimento, dentro del catálogo de alimentos ricos en hierro. |
| Nutrición | Filtro facetado | Tipo de comida (desayuno, almuerzo, cena) y nivel de aporte de hierro. |
| Nutrición | Filtro por fecha | Consulta del diario nutricional de un día o de un rango de días. |
| Citas | Búsqueda por ubicación | Distrito y posta de salud disponible, con consulta de horarios de atención. |
| Citas | Filtro por estado | Citas próximas, atendidas o canceladas. |
| Mi Familia | Selector de paciente | Cambio de paciente activo cuando el apoderado tiene más de un menor registrado. |
| Tratamiento | Filtro por fecha | Historial de cumplimiento de dosis por semana o por mes. |

**Ferova Clinic**

| Ubicación | Mecanismo | Criterio |
|:---|:---|:---|
| Barra superior | Búsqueda global persistente | DNI o apellido del menor; resuelve directamente al detalle del paciente. |
| Pacientes | Filtro facetado | Nivel de riesgo clínico, estado del tratamiento y posta asignada. |
| Pacientes | Búsqueda por documento | DNI del apoderado, para vincular un paciente ya registrado en la plataforma. |
| Tratamientos | Filtro por estado | Tratamientos en curso, interrumpidos o finalizados. |
| Historial Clínico | Búsqueda por paciente | Paciente registrado, con acceso a sus controles de hemoglobina. |
| Consultas | Filtro por estado y paciente | Bandeja de consultas abiertas, respondidas o cerradas. |
| Agenda | Filtro por fecha | Citas del día, de la semana o de un rango definido. |
| Postas de Salud (Admin) | Búsqueda y filtro | Nombre de la posta y distrito. |
| Enfermeras (Admin) | Filtro por disponibilidad | Enfermeras sin posta asignada o con capacidad disponible. |
| Analítica y Reportes (Admin) | Filtro combinado | Posta, distrito y rango de fechas, como parámetros del reporte a generar. |

**Comportamiento común de la búsqueda**

- Los filtros activos se representan como *chips* removibles sobre el listado, de modo que el usuario siempre reconozca por qué el conjunto de resultados se encuentra reducido.
- La búsqueda global de Ferova Clinic ofrece sugerencias a partir del tercer carácter ingresado y resalta la coincidencia dentro del resultado.
- Los conjuntos extensos de resultados se presentan paginados, indicando el total de coincidencias encontradas.
- Los estados vacíos no se limitan a informar la ausencia de resultados: proponen la acción siguiente ("No se encontró al paciente. Registrar un nuevo paciente"), en concordancia con las pautas de microcopy de la sección 4.1.

### 4.2.5. Navigation Systems

El sistema de navegación determina el acceso efectivo a las funcionalidades implementadas. Se distinguen cuatro tipos de navegación —global, local, contextual y utilitaria—, con una instanciación propia por producto.

**1. Landing Page (Sanuvi)**

Navegación de una sola página con barra superior fija y desplazamiento anclado hacia cada sección: *Inicio*, *El problema*, *Solución*, *Para quién*, *Cómo funciona*, *Testimonios* y *Sobre Sanuvi*. La barra mantiene de forma permanente los dos llamados a la acción del producto —descargar Ferova Family e ingresar a Ferova Clinic—, de modo que la conversión no dependa de la posición del visitante dentro de la página. El pie de página replica los enlaces de sección e incorpora los datos de contacto y las políticas del producto.

**2. Ferova Family (móvil)**

La navegación global se resuelve mediante la **barra de navegación inferior persistente** definida en la sección 4.1.3, con cuatro destinos alineados al recorrido diario del apoderado:

- **Tratamiento / Hoy** — punto de entrada por defecto de la aplicación.
- **Nutrición**
- **Citas**
- **Mi Familia**

La limitación a cuatro destinos responde a un criterio ergonómico: cada elemento conserva así un área táctil suficiente dentro de la zona cómoda del pulgar. En consecuencia, los contenidos restantes se resuelven por otras vías de navegación:

- **Navegación utilitaria:** *Consultas* y *Mi cuenta* se acceden desde la barra superior de la aplicación, con indicador numérico (*badge*) cuando existen mensajes de la enfermera o recordatorios pendientes.
- **Navegación local:** dentro de *Mi Familia*, cada paciente despliega pestañas internas de *Datos*, *Hemoglobina* y *Logros*; dentro de *Citas* se diferencian *Próximas* e *Historial*.
- **Navegación contextual:** las tarjetas de acceso rápido de la pantalla de inicio conducen directamente a la acción sugerida por el estado del tratamiento (registrar la dosis del día, registrar un alimento o revisar la próxima cita). 
- El registro de la dosis diaria se resuelve mediante una hoja inferior deslizable, sin abandonar la pantalla actual, cumpliendo el criterio de dos toques establecido en la sección 4.1.3.

**3. Ferova Clinic (web)**

La navegación global se estructura sobre la **barra lateral izquierda** descrita en la sección 4.1.2, cuyos destinos se instancian según el rol autenticado:

| Rol | Destinos de la barra lateral |
|:---|:---|
| Enfermera | Panel General · Pacientes · Tratamientos · Historial Clínico · Consultas · Agenda · Configuración |
| Administrador | Panel General · Postas de Salud · Enfermeras · Analítica y Reportes · Configuración |

Los destinos no habilitados para el rol no se muestran en la interfaz y, adicionalmente, su ruta se encuentra protegida en el cliente y validada en la API, de modo que la restricción no dependa únicamente de la capa visual.

Complementan la navegación global:

- **Navegación utilitaria:** la barra superior conserva el selector de posta activa, la búsqueda global por DNI o apellido del menor y el perfil del profesional.
- **Navegación local:** el detalle del paciente organiza su contenido en pestañas de *Resumen*, *Tratamiento*, *Controles de Hemoglobina*, *Historial* y *Consultas*, evitando que el profesional pierda el contexto del caso al desplazarse entre secciones.
- **Navegación contextual:** el Panel General expone accesos directos a las tareas del día (registrar un control de hemoglobina, responder una consulta pendiente o atender la cita próxima), y las alertas de riesgo conducen al paciente involucrado en un solo clic.
- **Migas de pan (*breadcrumbs*):** las vistas de tercer nivel muestran su ruta de procedencia —por ejemplo, `Pacientes › Luis Ramírez › Control de Hemoglobina`—, de modo que el usuario pueda retroceder sin recurrir al botón del navegador.

**4. Coherencia entre productos**

Las tres interfaces comparten tres reglas de navegación transversales: el destino activo siempre se encuentra señalizado, toda acción de registro ofrece una salida explícita sin pérdida de datos, y ninguna funcionalidad crítica se ubica a más de tres niveles de profundidad desde el punto de entrada de la aplicación.

## 4.3. Landing Page UI Design

### 4.3.1. Landing Page Wireframe

Para elaborar nuestro prototipo de baja fidelidad, hemos utilizado la plataforma Figma, que nos permite crear, representar y exportar nuestros prototipos. Gracias a esta herramienta, podemos presentar un Wireframe de una buena calidad de una manera sencilla.

<p style="word-break: break-all; overflow-wrap: break-word; white-space: normal;">
  Enlace: <a href="https://www.figma.com/design/8SDOF7pysWSWxqzSrdOfnh/PruebaIHC?node-id=0-1&t=p67FuxKKSjztKY2p-1" target="_blank" style="word-break: break-all; overflow-wrap: break-word;">
    https://www.figma.com/design/8SDOF7pysWSWxqzSrdOfnh/PruebaIHC?node-id=0-1&t=p67FuxKKSjztKY2p-1
  </a>
</p>



<img src="../assets/img/chapter-IV/Landing Page/LP Mock Up.png" alt="Landing Page Wireframe">

### 4.3.2. Landing Page Mock-up

Hemos finalizado con éxito el mock-up de la página de inicio, aplicando los principios y elementos de diseño clave. Gracias a estas directrices, la experiencia para los usuarios de nuestra plataforma será mucho más sencilla e intuitiva.

<p style="word-break: break-all; overflow-wrap: break-word; white-space: normal;">
  Enlace: <a href="https://www.figma.com/design/8SDOF7pysWSWxqzSrdOfnh/PruebaIHC?node-id=0-1&t=p67FuxKKSjztKY2p-1" target="_blank" style="word-break: break-all; overflow-wrap: break-word;">
    https://www.figma.com/design/8SDOF7pysWSWxqzSrdOfnh/PruebaIHC?node-id=0-1&t=p67FuxKKSjztKY2p-1
  </a>
</p>

<img src="../assets/img/chapter-IV/Landing Page/LP Wireframe.png" alt="Landing Page Mock Up">

**Segmentos de la Landing Page**

<img src="../assets/img/chapter-IV/Landing Page/LP Aplicación.png" alt="Landing Page Aplicación">

**La aplicación** <br>
Es una app que ayuda a controlar y dar seguimiento al tratamiento de la anemia, facilitando el registro de dosis, el monitoreo y la comunicación con personal de salud. <br>

<img src="../assets/img/chapter-IV/Landing Page/LP Aplicación.png" alt="Landing Page Aplicación">

**El problema** <br>
La anemia infantil sigue siendo alta en Perú, principalmente por el abandono del tratamiento y la falta de información y seguimiento adecuado.
<br>
<img src="../assets/img/chapter-IV/Landing Page/LP Problema.png" alt="Landing Page Problema">

**Las funcionalidades** <br>
Incluye registro de dosis, recordatorios, monitoreo del progreso, teleconsultas e información nutricional para apoyar el tratamiento.
<br>
<img src="../assets/img/chapter-IV/Landing Page/LP Funcionalidades.png" alt="Landing Page Funcionalidades">

**Público objetivo** <br>
Está dirigida a cuidadores de niños y personal de salud, priorizando simplicidad para usuarios y herramientas de seguimiento para profesionales.
<br>
<img src="../assets/img/chapter-IV/Landing Page/LP Segmentos.png" alt="Landing Page Segmentos">

**Testimonios** <br>
Los usuarios destacan que la app mejora la organización del tratamiento y facilita el seguimiento, generando confianza en su uso.
<br>
<img src="../assets/img/chapter-IV/Landing Page/LP Testimonios.png" alt="Landing Page Testimonios">

## 4.4. Mobile Applications UX/UI Design

### 4.4.1. Mobile Applications Wireframes

Los siguientes wireframes corresponden a la aplicación móvil de Ferova Family, una plataforma integral de cuidado de la salud familiar con enfoque en seguimiento nutricional y gestión de citas médicas.

#### Principios Aplicados
 
**-Jerarquía funcional clara:**
 
El flujo de navegación prioriza las acciones más relevantes para los usuarios (madres/padres/apoderados), como gestión de citas médicas, seguimiento del estado nutricional de sus hijos, visualización de postas cercanas y comunicación directa con especialistas médicos.
 
**-Consistencia y patrones de diseño:**
 
Los componentes mantienen uniformidad en su comportamiento visual e interactivo, asegurando coherencia entre pantallas y módulos. Todos los wireframes utilizan una estructura vertical de una columna con navegación bottom-tab persistente.
 
**-Accesibilidad en interfaces:**
 
Se aplican contrastes adecuados, fuentes legibles, botones de tamaño óptimo (mínimo 44x44pt) y una estructura de navegación compatible con teclado y lectores de pantalla.
 
**-Diseño adaptativo:**
 
Los wireframes consideran que la aplicación será utilizada tanto en iPhones como en tablets, por lo que el diseño es responsivo y se ajusta a distintos anchos de pantalla.
 
**-Arquitectura de información enfocada al flujo de tareas:**
 
La estructura prioriza la eficiencia operativa, permitiendo a los tutores registrar alimentos, gestionar citas, seguir el progreso de salud y contactar especialistas en el menor número de clics posible.
 
---

### Módulo de Autenticación

#### Patalla de Registro e Inicio de seccion

**Descripción:** Panel de acceso para usuarios registrados. Permite ingresar credenciales (DNI y contraseña) y acceder a la plataforma. Incluye opción de recuperación de contraseña y enlace para crear nueva cuenta. Tambien contamos con el Formulario completo para nuevos usuarios. Captura información personal (nombre, apellido, DNI, teléfono, email) y credenciales de acceso. Incluye validaciones en tiempo real y términos y condiciones.

<div align="center">
  <img src="../assets/img/chapter-IV/Wireframe/login and register.png" width=500>
</div>

#### Pantalla de Recuperación de Contraseña
 
**Descripción:**
Flujo de recuperación de contraseña dividido en pasos: verificación de identidad, validación de código y creación de nueva contraseña.

<div align="center">
  <img src="../assets/img/chapter-IV/Wireframe/recovery password.png" width=500>
</div>


---

### Módulo de Home / Dashboard
 
#### Pantalla Principal (Home)
 
**Descripción:**
Panel principal con resumen de información clave del niño seleccionado. Muestra:
- Identificación del niño actual (selector para cambiar entre múltiples niños)
- Diario de hoy (horarios programados de medicamento/suplementos)
- Métricas de progreso (hierro absorbido)
- Accesos rápidos a funciones principales (Nueva entrada, Postas cercanas, Logros)
- Tip de salud diario

<div align="center">
  <img src="../assets/img/chapter-IV/Wireframe/home.png" width=300>
</div>

  
---

### Módulo de Nutrición
 
#### Pantalla de Diario Nutricional
 
**Descripción:**
Resumen diario del estado nutricional del niño seleccionado. Muestra gráfico circular de absorción de hierro, lista de alimentos ingeridos y opciones para agregar nuevas entradas.

 <div align="center">
  <img src="../assets/img/chapter-IV/Wireframe/Diario Nutricional.png" width=300>
</div>

#### Pantalla de Historial Nutricional
 
**Descripción:**
Timeline de entradas nutricionales organizadas por fecha. Muestra historial completo de alimentos registrados con detalles de absorción de hierro.

<div align="center">
  <img src="../assets/img/chapter-IV/Wireframe/Historial Nutricional.png" width=300>
</div>

   
#### Pantalla NutriHierro - Búsqueda y Registro de Alimentos
 
**Descripción:**
Interfaz para buscar y registrar alimentos específicos con contenido de hierro. Incluye categorías, búsqueda por nombre y modal de confirmación de cantidad.
 
<div align="center">
  <img src="../assets/img/chapter-IV/Wireframe/Busqueda y agregacion de alimentos.png" width=500>
</div>

---

### Módulo de Citas Médicas
 
#### Pantalla de Citas
 
**Descripción:**
Gestión central de citas médicas. Muestra cita próxima, historial de citas (confirmadas/canceladas) y opciones para agendar nuevas citas.

<div align="center">
  <img src="../assets/img/chapter-IV/Wireframe/Citas.png" width=500>
</div>

 
#### Pantalla de Reserva de Cita
 
**Descripción:**
Flujo de 2-3 pasos para agendar una nueva cita: seleccionar paciente, fecha y hora, y confirmar.
 
<strong>Elementos principales (Paso 1 - Seleccionar Paciente):</strong>

- Header: "Reserva Cita" con botón atrás
- Selector de paciente: Avatares circulares
- Subsección: "Fecha Seleccionada" (editable)
- Subsección: "Horarios disponibles" con tabla de slots
  - Horarios en formato 08:00, 09:00, 10:00, 16:00
  - Indicador de disponibilidad (Disponible/Ocupado)
  - Botón de confirmación

<strong>Elementos principales (Paso 2 - Seleccionar Fecha):</strong>

- Calendario interactivo (mes/año navegable)
- Fechas disponibles resaltadas
- Selección visual de fecha elegida
- Botón: "Continuar"

<strong>Elementos principales (Paso 3 - Confirmar):</strong>

- Resumen de información:
  - Paciente seleccionado
  - Centro médico
  - Fecha y hora
  - Servicios disponibles
- Botón: "Confirmar Reserva"

<div align="center">
  <img src="../assets/img/chapter-IV/Wireframe/Reserva de cita.png" width=500>
</div>


#### Pantalla de Detalle de Posta Médica
 
**Descripción:**
Información detallada de un centro médico/posta, incluyendo servicios disponibles, horarios y opción de reservar cita.

<div align="center">
  <img src="../assets/img/chapter-IV/Wireframe/Detalle de la posta.png" width=300>
</div>
 
---
 
### Módulo de Postas Cercanas
 
#### Pantalla de Postas Cercanas
 
**Descripción:**
Mapa interactivo que muestra centros médicos cercanos a la ubicación del usuario, con información resumida de cada posta en cards.

 <div align="center">
  <img src="../assets/img/chapter-IV/Wireframe/postas-cercanas.png" width=300>
</div>

---

### Módulo de Comunicación / Consultas
 
#### Pantalla de Consultas (Directorio de Especialistas)
 
**Descripción:**
Listado de especialistas médicos disponibles para consultas. Muestra nombre, especialidad, estado y opción de escribir consulta.

<div align="center">
  <img src="../assets/img/chapter-IV/Wireframe/Pantalla de Consultas.png" width=300>
</div>
   
#### Pantalla de Redacción de Consulta
 
**Descripción:**
Formulario para enviar una consulta médica a un especialista específico. Incluye campo de texto libre y información del especialista asignado.

<div align="center">
  <img src="../assets/img/chapter-IV/Wireframe/Redacción de Consulta.png" width=300>
</div>
 
#### Pantalla de Chat con Especialista
 
**Descripción:**
Conversación bidireccional con un especialista médico. Muestra historial de mensajes, estado de sincronización y opciones de respuesta.


<div align="center">
  <img src="../assets/img/chapter-IV/Wireframe/Chat Mensajeria.png" width=300>
</div>
 
#### Pantalla de Mis Consultas
 
**Descripción:**
Listado de consultas activas del usuario. Muestra especialistas asignados, estado de consultas y acceso rápido a conversaciones.

<div align="center">
  <img src="../assets/img/chapter-IV/Wireframe/Mis Consultas.png" width=300>
</div>
 
 
---

### Módulo de Progreso y Logros
 
#### Pantalla de Progreso y Medallas
 
**Descripción:**
Panel visual que muestra evolución del tratamiento, gráficos de hemoglobina y logros/medallas completadas por el niño.

 <div align="center">
  <img src="../assets/img/chapter-IV/Wireframe/Progreso y Medallas.png" width=300>
</div>

 
---
### Módulo de Historial de Dosis
 
#### Pantalla de Historial de Dosis
 
**Descripción:**
Registro completo de dosis de medicamento/suplemento administradas. Muestra timeline con confirmaciones y omisiones.

  <div align="center">
  <img src="../assets/img/chapter-IV/Wireframe/Historial de Dosis.png" width=300>
</div>

---

### Módulo de Gestión de Pacientes
 
#### Pantalla de Agregar Paciente
 
**Descripción:**
Formulario para registrar un nuevo paciente (niño) a la cuenta familiar. Captura información demográfica y médica básica que será utilizada para personalizar el seguimiento de salud y el tratamiento nutricional.
 
  <div align="center">
  <img src="../assets/img/chapter-IV/Wireframe/Agregar Paciente.png" width=300>
</div>



### 4.4.2. Mobile Applications Wireflow Diagrams

Cada Wireflow Diagram representa el recorrido visual e interactivo que realiza el usuario dentro de la aplicación para cumplir un objetivo específico (User Goal). En cada flujo se detalla la secuencia de pantallas y acciones que permiten alcanzar dicho propósito, desde la navegación inicial hasta la confirmación o registro de una tarea.

Los wireflow diagrams están conectados mediante líneas de flujo que indican el orden de navegación y las decisiones del usuario en cada punto clave de la aplicación.



**UG-01 — Agregar Nuevo Paciente**

El flujo muestra cómo el usuario accede a la opción de agregar un nuevo paciente desde la pantalla Home. El usuario selecciona el botón "Agregar" en el selector de niños, accede al formulario de registro donde completa información personal (nombre, apellido, fecha de nacimiento, género, peso, altura) y confirma guardando el registro. El nuevo paciente se integra inmediatamente al sistema y aparece en el selector de niños.

<div align="center">
  <img src="../assets/img/chapter-IV/wireflow/5.png" width=500>
</div>


> **Relacionado con User Goal:**
> 
> Como apoderado, quiero registrar a un nuevo paciente,
> para gestionar su información y realizar el seguimiento de su tratamiento.


---

**UG-02 — Agendar Cita Médica**

El flujo presenta cómo el usuario agenda una nueva cita médica. Comenzando desde la pantalla de Citas, el usuario selecciona "Agendar nueva cita", elige el paciente (niño), selecciona una fecha en el calendario interactivo, elige un horario disponible de la lista de slots, revisa el resumen de información y confirma la reserva. Tras la confirmación, el usuario recibe una notificación visual y la cita aparece en su listado.

<div align="center">
  <img src="../assets/img/chapter-IV/wireflow/4.png" width=500>
</div>

> **Relacionado con User Goal:**
> 
> Como apoderado, quiero reservar una cita para mi paciente,
> para programar su atención en una posta de salud disponible.


---

**UG-03 — Registrar Alimento en Diario Nutricional**

El flujo muestra el proceso de registrar un alimento en el diario nutricional. Desde la pantalla Home o Diario Nutricional, el usuario toca "+ Nueva Entrada", accede a la pantalla de búsqueda NutriHierro, busca o selecciona un alimento de la lista de categorías, abre el modal de cantidad, ingresa la cantidad y unidad del alimento, y confirma el registro. El alimento se agrega al diario del día y se actualiza el gráfico de absorción de hierro.

<div align="center">
  <img src="../assets/img/chapter-IV/wireflow/7.png" width=500>
</div>

> **Relacionado con User Goal:**
> 
> Como apoderado, quiero registrar los alimentos consumidos por mi paciente,
> para llevar un seguimiento de su alimentación y del hierro aportado por los alimentos.

---

**UG-04 — Enviar Consulta a Especialista**

El flujo detalla cómo el usuario envía una consulta médica a un especialista. Desde la pantalla Consultas, el usuario visualiza el listado de especialistas disponibles, selecciona uno específico, toca "Escribir Consulta", accede al formulario de redacción de consulta donde escribe su mensaje, y confirma el envío tocando el botón "Enviar Consulta". La consulta se sincroniza con la plataforma.

<div align="center">
  <img src="../assets/img/chapter-IV/wireflow/6.png" width=500>
</div>

> **Relacionado con User Goal:**
>
> Como apoderado, quiero enviar una consulta a un especialista,
>para resolver dudas relacionadas con el seguimiento y tratamiento de mi paciente.

---

**UG-05 — Comunicarse con Especialista mediante Chat**

El flujo presenta la conversación bidireccional entre usuario y especialista. Desde "Mis Consultas", el usuario selecciona una consulta activa, accede al chat con el especialista, lee los mensajes recibidos, escribe su respuesta en el campo de entrada, y envía el mensaje tocando el botón de envío. El mensaje se sincroniza en tiempo real y aparece en la conversación con timestamp y confirmación de lectura.

<div align="center">
  <img src="../assets/img/chapter-IV/wireflow/9.png" width=500>
</div>

> **Relacionado con User Goal:**
>
> Como apoderado, quiero comunicarme mediante un chat con el personal de salud,
> para realizar consultas y dar seguimiento a la atención de mi paciente.


---

**UG-06 — Recuperar Contraseña Olvidada**

El flujo muestra el proceso paso a paso para recuperar acceso a una cuenta. Desde la pantalla de Login, el usuario toca "¿Olvidaste la contraseña?" y accede a la pantalla de recuperación. Ingresa su email o DNI, toca "Enviar Código" y el sistema envía un código de verificación. En el siguiente paso, el usuario ingresa los 4 dígitos del código recibido y toca "Verificar Código". Tras la validación, accede a la pantalla de creación de nueva contraseña donde ingresa la nueva contraseña, confirma y toca "Actualizar Contraseña". Finalmente es redirigido a la pantalla de Login con la opción de iniciar sesión con sus nuevas credenciales.

<div align="center">
  <img src="../assets/img/chapter-IV/wireflow/1.png" width=500>
</div>

> **Relacionado con User Goal:**
> 
> Como usuario, quiero recuperar mi contraseña,
> para volver a acceder a mi cuenta cuando no recuerde mis credenciales.

---

**UG-07 — Crear Nueva Cuenta de Usuario**

El flujo detalla el proceso de registro de un nuevo usuario. Desde la pantalla de Login, el usuario toca "¿No tienes cuenta? Regístrate" o accede directamente a la pantalla Crear Cuenta. Completa todos los campos requeridos (nombre, apellido, DNI, teléfono, email, contraseña), acepta los términos y condiciones, y toca "Registrarse". El sistema valida la información, crea la cuenta, y navega automáticamente a Home con la sesión iniciada.


<div align="center">
  <img src="../assets/img/chapter-IV/wireflow/10.png" width=500>
</div>

> **Relacionado con User Goal:**
> 
> Como nuevo usuario, quiero crear una cuenta en la plataforma,
> para acceder a las funcionalidades de Ferova y gestionar la información de mis pacientes.


---

**UG-08 — Confirmar Dosis del Tratamiento**

El flujo detalla cómo el usuario confirma la administración de una dosis de medicamento/suplemento. Desde la pantalla Home, el usuario visualiza la sección "Dosis de hoy" con el horario programado (ej: "Horario programado"). El usuario toca el botón "Confirmar Dosis", el usuario confirma la dosis, y el sistema registra la administración. Tras la confirmación, se actualiza el historial de dosis, se suma un punto al contador de logros, El usuario puede retornar a Home o continuar explorando otras secciones.

<div align="center">
  <img src="../assets/img/chapter-IV/wireflow/8.png" width=500>
</div>

> **Relacionado con User Goal:**
>
> Como apoderado, quiero confirmar las dosis programadas de mi paciente
> y consultar su historial, para registrar y verificar el cumplimiento del tratamiento.


### 4.4.3. Mobile Applications Mock-ups

Versión Mobile Mock-ups - Ferova Family (Aplicación de Salud Familiar Integral)

Los siguientes mock-ups representan el diseño de alta fidelidad de la interfaz de usuario de Ferova Family, mostrando la implementación visual completa de todos los módulos, componentes y flujos de la aplicación. Cada pantalla refleja la identidad visual, tipografía, paleta de colores y patrones de interacción documentados en las secciones anteriores de esta guía de estilo.

---

### Módulo de Autenticación

<div align="center">
  <img src="../assets/img/chapter-IV/mockup/Login y Registro.png" width=500>
</div>

 
#### Pantalla de Login
 
Vista de inicio de sesión con credenciales requeridas. Muestra:
- Header con fondo rojo oscuro y logo de Ferova Family
- Título "Iniciar sesión" con descripción explicativa
- Campo de entrada: DNI (8 dígitos) con ícono de usuario
- Campo de entrada: Contraseña (enmascarado) con ícono de ojo para mostrar/ocultar
- Link: "¿Olvidaste la contraseña?" para recuperación de acceso
- Botón principal: "Iniciar Sesión" (rojo oscuro, full width)
- Link secundario: "¿No tienes cuenta? Registrate" para crear cuenta
- Footer: Iconos de acceso rápido (Ayuda, Seguridad, Privacidad)

#### Pantalla de Registro / Crear Cuenta
 
Vista de creación de nueva cuenta. Muestra:
- Header: Ícono de Ferova Family (gota de sangre)
- Título: "Crear tu cuenta"
- Subtítulo: "Únete a nuestra comunidad de cuidado integral"
  
  <strong>Campos de formulario:</strong>
  - Nombre completo (placeholder: "Ej: Maria Elena")
  - Apellido completo (placeholder: "Ej: Garcia Lopez")
  - DNI (8 dígitos)
  - Teléfono (formato internacional)
  - Correo Electrónico
  - Contraseña (con visibilidad toggle)
  - Confirmar Contraseña (con visibilidad toggle)

- Checkbox: "Acepto términos y condiciones de salud y privacidad"
- Botón principal: "Registrarse →" (rojo oscuro)
- Link: "¿Ya tienes cuenta? Inicia sesión"
---

### Módulo de Recuperación de Contraseña

<div align="center">
  <img src="../assets/img/chapter-IV/mockup/Recuperacion de contraseña.png" width=500>
</div>

 
#### Pantalla 1: Recuperación Inicial
 
Vista para iniciar el proceso de recuperación. Muestra:
- Botón atrás y título "Volver"
- Título: "¿Olvidastes tu Contraseña?"
- Descripción: "Ingresa tu correo para recibir un código de recuperación"
- Campo de entrada: Correo Electrónico con ícono de sobre
- Botón principal: "Enviar Código" (púrpura)
- Link: "Volver al inicio de Sesión"
- Footer: "Ferova protege tus datos personales"
- 
#### Pantalla 2: Verificación de Identidad
 
Vista para ingresar código OTP. Muestra:
- Botón atrás "Volver"
- Título: "Verificar tu identidad"
- Descripción: "Hemos enviado un código de 4 dígitos a tu correo"
- Campos de entrada: 4 inputs para dígitos individuales del código
- Botón principal: "Verificar Código" (púrpura)
- Link: "¿No recibistes el código? Reenviar"
- 
#### Pantalla 3: Nueva Contraseña
 
Vista para crear nueva contraseña con validaciones. Muestra:
- Botón atrás "Volver"
- Título: "Nueva Contraseña"
- Descripción: "Crea una contraseña segura para proteger tu cuenta"
- Campo: Nueva Contraseña (enmascarado con toggle)
- Campo: Confirmar Contraseña (enmascarado con toggle)
- Sección: "Requisitos de seguridad"
  - Mínimo 8 caracteres (indicador visual)
  - Al menos un número (indicador visual)
  - Un carácter especial (@, #, $) (indicador visual)
- Botón principal: "Actualizar Contraseña ↻" (púrpura)
  
---

### Módulo de Home / Dashboard


<div align="center">
  <img src="../assets/img/chapter-IV/mockup/home.png" width=500>
</div>

 
#### Pantalla Principal - Home
 
Vista principal con resumen de información del niño seleccionado. Muestra:
- Header: Fondo rojo oscuro con "Ferova Family" y ícono de notificaciones
- Saludo: "¡Hola María!" con subtítulo "Juntos por la salud de tus pequeños"
- Sección "Mis Niños":
  - Avatares circulares de niños (Mateo, Lucia, Agregar)
  - Contador "2 activos"
- Sección "Dosis de hoy":
  - Fecha (Domingo 21 de abril)
  - Horario programado
  - Botón: "Confirmar Dosis" (gris-azulado)
  - Link: "Ver historial" con ícono
- Sección "Métricas de progreso":
  - Card "Logro": Racha Actual 5 días, Puntos 50 
  - Card "Nutrición": Hierro Absorbido Hoy 1.36 mg con ícono
- Sección "Accesos Rápidos" (con íconos y descripciones):
  - Nueva entrada de alimento
  - Ver Postas Cercanas
  - Mis Logros y Medallas
- Bottom Navigation: Inicio (activo), Diario, Citas, Consultas
  
---

### Módulo de Registro de Paciente

<div align="center">
  <img src="../assets/img/chapter-IV/mockup/Registro de paciente.png" width=200>
</div>

 
#### Pantalla de Registro de Nuevo Paciente
 
Vista para agregar un nuevo niño a la familia. Muestra:
- Header: Fondo rojo oscuro con botón atrás
- Título: "Registro del paciente"
- Avatar ilustrado del niño (animado, personaje)
- Título: "¡Bienvenido/a!"
- Subtítulo: "Comencemos el camino hacia una vida llena de vitalidad para tu pequeño/a"
- Formulario:
  - Campo: "Nombres del niño/a" (placeholder: "Ej: Mateo Alejandro")
  - Campo: "Apellidos" (placeholder: "Ej: Garcia Ruiz")
  - Campo: "Fecha de nacimiento" (formato mm/dd/yyyy con calendar picker)
  - Selector de género: Dos botones (♂ Masculino | ♀ Femenino)
  - Campo: "Peso Actual (KG)" (format decimal)
  - Campo: "Talla/ Altura (CM)" (numeric)
- Botón principal: "Registrar a mi pequeño ♥" (rojo oscuro)
- Nota: "Al registrar, aceptas que FerosaFamily guarde los datos de salud para el seguimiento del tratamiento"
---

### Módulo de Nutrición

<div align="center">
  <img src="../assets/img/chapter-IV/mockup/Busqueda y Registro del alimento.png" width=500>
</div>

#### Pantalla de Diario Nutricional
 
Vista del diario nutricional del día con gráfico circular. Muestra:
- Header: "Diario Nutricional" con selector de niño (Mateo)
- Gráfico circular: Visualización de hierro absorbido 1.36 mg en color rojo oscuro
- Sección "Alimentos de Hoy": Contador "3 registros"
  - Lista de alimentos con:
    - Ícono de alimento
    - Nombre
    - Cantidad (mg de hierro)
    - Indicador de tipo (Hemo/No Hemo/Alerta Inhibidor)
- Botón principal: "+ Nueva Entrada" (rojo oscuro)
- Link: "Ver Historial"
- Sección "Tip de hoy": Consejo nutricional con ícono
- Bottom Navigation
#### Pantalla NutriHierro - Búsqueda de Alimentos
 
Vista para buscar y registrar alimentos. Muestra:
- Header: "NutriHierro" con botón atrás
- Título: "¿Qué comemos hoy?"
- Subtítulo: "Busca alimentos en hierro para fortalecer a tu pequeño"
- Buscador: Campo "Buscar alimentos (ej. Lentejas)" con ícono de búsqueda
- Tabs de categorías: Carnes, Verduras, Legumbres, Pescados
- Lista de alimentos:
  - Nombre del alimento (Lúcuma, Naranja, Mango, Plátano, Mandarina, Papaya)
  - Indicador de tipo "No hemo"
  - Cantidad de mg de hierro (0.4 mg, 0.1 mg, etc.)
- Botón principal: "Ver más información" (rojo oscuro)
#### Pantalla NutriHierro - Registro de Alimento (Modal)
 
Modal para confirmar cantidad de alimento. Muestra:
- Título: Nombre del alimento seleccionado "Lentejas cocidas"
- Campo: Cantidad (input number con valor "150")
- Selector: Unidad (Gramos)
- Botón principal: "Registrar" (rojo oscuro)
#### Pantalla de Historial Nutricional
 
Vista del histórico de registros por fecha. Muestra:
- Header: "Historial Nutricional" con botón atrás
- Organizador por fechas:
  - "20 de Abril" - Badge "1 inhibidor" - "3.2 mg de hierro absorbido" - "4 alimentos"
  - "19 de Abril" - Badge "Sin inhibidores" - "4.5 mg de hierro absorbido" - "5 alimentos"
  - "18 de Abril" - Badge "2 inhibidores" - "2.8 mg de hierro absorbido" - "4 alimentos"
  - Y más fechas...
- Scroll vertical para histórico completo
---

### Módulo de Citas Médicas

<div align="center">
  <img src="../assets/img/chapter-IV/mockup/Citas.png" width=500>
</div>

 <div align="center">
  <img src="../assets/img/chapter-IV/mockup/Reserva de cita.png" width=500>
</div>

#### Pantalla de Citas
 
Vista de gestión de citas médicas. Muestra:
- Header: "Citas"
- Selector de paciente: Avatares (Mateo, Lucia)
- Sección "Cita Actual":
  - Card principal con fondo rojo oscuro
  - Fecha y hora: "PRÓXIMA FECHA: 09:00 AM - 15 de Octubre"
  - Paciente: Lucia
  - Sede: Posta Medica Huascar
  - Botón: "Cancelar Cita"
- Sección "Historial de Citas":
  - Card: "Posta Medica Huascar - CANCELADA"
  - Card: "Centro de Salud Rosa - CONFIRMADA"
- Botón principal: "Agendar nueva cita →" (rojo oscuro)
- Nota: Cuando no hay citas, muestra estado vacío con "No tienes citas programadas" y botón "Agendar nueva cita →"
- Bottom Navigation
#### Pantalla de Postas Cercanas
 
Vista de mapa con postas médicas cercanas. Muestra:
- Header: "Postas Cercanas" con botón atrás
- Mapa interactivo: Fondo con marcadores de postas (pines rojo oscuro con ícono de cruz)
- Cards de postas debajo del mapa:
  - Ícono médico (cruz)
  - Nombre de posta (Posta Medica Huascar)
  - Distancia (0.5 km)
  - Indicador de estado: "Activo" (punto verde)
  - Botón: "Ver detalles" (rojo oscuro)
  - Otras postas: Centro de Salud Rosa (1.5 km), Posta Materno Infantil (1.2 km), Posta del niño (2.8 km)
#### Pantalla de Detalle de Posta
 
Vista de información detallada de centro médico. Muestra:
- Header: Botón atrás "Detalle de posta"
- Título: "Posta Santa Anita"
- Dirección: "Jr. Las Flores 456" con ícono de ubicación
- Sección "Días de atención":
  - Información: "Miércoles - Thursdal - Friday"
  - Indicador: "Activo"
- Sección "Contacto":
  - Ícono teléfono "Central de atención"
  - Número clickeable: "912345678"
- Sección "Servicios disponibles":
  - Categorías en tags: "General Medicine", "Dentistry", "Pediatría", "Nutrición"
- Botón principal: "Reserva de citas" (rojo oscuro)
#### Pantalla de Reserva de Cita - Seleccionar Paciente
 
Vista inicial de reserva. Muestra:
- Header: "Reserva Cita" con botón atrás
- Selector de paciente: Avatares (Mateo, Lucia)
- Card: "Fecha Seleccionada"
  - Fecha: "11 OCT - Miércoles 11 de Octubre"
  - Link: "Editar"
- Sección "Horarios disponibles":
  - Grid de horarios: 08:00, 11:00 (Ocupado), 09:00, 14:00 (Ocupado), 10:00, 15:00 (Ocupado), 16:00
- Botón principal: "Continuar →" (rojo oscuro)
#### Pantalla de Reserva de Cita - Seleccionar Fecha
 
Vista con calendario interactivo. Muestra:
- Header: "Reserva Cita" con botón atrás
- Selector de paciente: Avatares
- Sección "Octubre 2026":
  - Calendario navegable
  - Día 11 seleccionado (fondo rojo oscuro)
  - Días grises para meses anteriores/siguientes
- Botón principal: "Continuar →" (rojo oscuro)
#### Pantalla de Cita Confirmada
 
Vista de confirmación exitosa. Muestra:
- Ícono grande de checkmark en círculo rojo oscuro
- Título: "¡Cita Confirmada!"
- Subtítulo: "Tu cita ha sido agendada con éxito en nuestro sistema"
- Card de resumen:
  - Centro Médico: "Posta Medica Huascar"
  - Fecha: "11 de Octubre, 2023"
  - Hora: "9:00"
  - Paciente: Avatar + "Mateo"
- Botón principal: "Volver al Inicio" (rojo oscuro)
---
 
### Módulo de Progreso y Medallas

 <div align="center">
  <img src="../assets/img/chapter-IV/mockup/Progreso y medallas.png" width=500>
</div>
 
#### Pantalla de Progreso - Variante 1 (Medallas Bloqueadas)
 
Vista de progreso del tratamiento. Muestra:
- Header: Fondo rojo oscuro "Progreso y Medallas" con botón atrás
- Sección "Progreso":
  - Estado: "Activo" (punto verde)
  - Puntos Totales: "70" 
- Cards de progreso:
  - "Racha actual: 7 días"
  - "Mas Larga: 30 días"
- Sección "Evolución de Hemoglobina":
  - Gráfico de línea con evolución (7.2 a 11.2 g/dl)
  - Valor actual: 11.2 g/dl
  - Fechas en eje X
- Sección "Medallas":
  - "First Week": Ícono cerrado, progreso 0%, "Completa los 7 días sin fallar"
  - "Half Treatment": Ícono cerrado, progreso 0%, "Completa la mitad del tratamiento (45 días)"
  - "Treatment Completed": Ícono cerrado, progreso 0%, "Completa la mitad del tratamiento (45 días)"
- Botón principal: "Volver al Inicio" (rojo oscuro)
#### Pantalla de Progreso - Variante 2 (Medallas en Progreso)
 
Vista similar pero con medallas parcialmente desbloqueadas:
- Secciones iguales a Variante 1
- Medallas con barra de progreso visible
- "First Week": Progreso avanzado hacia desbloqueada
#### Pantalla de Progreso - Variante 3 (Medallas Completadas)
 
Vista con medallas completadas (ícono amarillo/dorado). Muestra:
- Todas las medallas desbloqueadas
- Ícono de medal en color dorado
- Texto "Completa" en cada medalla
- Animación de progreso completo
---

### Módulo de Comunicación / Consultas

 <div align="center">
  <img src="../assets/img/chapter-IV/mockup/Comunicacion.png" width=600>
</div>
 
#### Pantalla de Consultas - Sin Especialista Asignado
 
Vista inicial de módulo de consultas. Muestra:
- Header: Fondo rojo oscuro con ícono de consultas
- Título: "Aún no tienes una enfermera asignada"
- Descripción: "Para hacer una consulta, primero la enfermera debe asigner a tu pequeño en tu lista de pacientes..."
- Botón principal: "Ver Postas Cercanas" (rojo oscuro) con ícono de ubicación
- Bottom Navigation
#### Pantalla de Consultas - Listado de Especialistas
 
Vista del directorio de especialistas. Muestra:
- Header: "Consultas"
- Lista de especialistas:
  - Daniel Baca - Vitaly Arturo (asignado) - Botón "Escribir Consulta" (rojo oscuro)
  - Mateo Flores - Vitaly Arturo (asignado) - Botón "Escribir Consulta"
  - Lucia Mendoza - Vitaly Arturo (asignado) - Botón "Escribir Consulta"
  - Paoly Gonzalez - Sin enfermero asignado - Botón gris "Espera la asignación"
  - Sergio Julca - Vitaly Arturo - Botón "Consulta activa" (con checkmark verde)
- Botón principal: "Mis Consultas" (rojo oscuro) con ícono
- Bottom Navigation
#### Pantalla de Redacción de Consulta
 
Vista para escribir consulta. Muestra:
- Header: "Consulta para [Nombre de Paciente]"
- Información del especialista:
  - Avatar circular (color turquesa)
  - Nombre: "Enf. Elena García"
  - Status: "Asignada al tratamiento"
- Tabs: "TU MENSAJE" (activo, rojo) | "RELACIONADO CON PACIENTE"
- Área de texto: "Escribe aquí tus dudas sobre [Paciente]..." con placeholder
- Nota: "Esta comunicación es privada y segura" con ícono de candado
- Botón principal: "Enviar Consulta" (rojo oscuro) con ícono de avión
#### Pantalla de Mis Consultas
 
Vista del listado de consultas activas. Muestra:
- Header: "Mis Consultas"
- Cards de consultas:
  - Paoly Gonzalez - Vitaly Arturo - Enfermero
  - Última palabra: "Hola señora..."
  - Timestamp: "Hoy hace 15 min"
  - Badge: "ABIERTA" (rojo)
- Botón principal: "Mis Consultas" (rojo oscuro)
- Bottom Navigation
#### Pantalla de Chat con Especialista
 
Vista de conversación con especialista. Muestra:
- Header: "Enf. Diana Briceño - En línea"
- Badge: "SINCRONIZADO CON CLOUD"
- Área de chat:
  - Mensaje del especialista (bubble rojo con texto blanco):
    "¡Hola Elena! Sí, hoy se la tomó mucho mejor mezclada con un poquito de zumo de naranja como me recomendaste."
    Timestamp: "10:42 AM" con checkmarks
  - Respuesta del usuario (bubble blanco con texto negro):
    "¿Qué buena noticia! La vitamina C del zumo ayudará a que absorba mucho mejor el hierro. ¿Has notado algún efecto secundario o malestar estomacal?"
    Timestamp: "09:25 AM"
- Campo de entrada: "Escribe un mensaje..." con ícono de emoji
- Botón de envío: Ícono de avión (rojo)
---

### Módulo de Historial de Dosis

 <div align="center">
  <img src="../assets/img/chapter-IV/mockup/historial de dosis.png" width=450>
</div>
 
#### Pantalla de Historial de Dosis
 
Vista del registro de dosis administradas. Muestra:
- Header: "Historial de Dosis" con botón atrás
- Información del paciente:
  - Avatar circular
  - Nombre: "Mateo" o "Lucia"
  - Medicamento: "Amoxicilina - 500ml" o "Sulfato Ferroso - Gotas"
- Organizador por período:
  - "HOY"
    - 08:00 AM - Confirmada a las 08:15 AM - Badge "CONFIRMED" (verde)
  - "AYER"
    - 08:00 PM - Omitida - Sin confirmación - Badge "OMITTED" (rojo)
    - 08:00 AM - Confirmada a las 08:05 AM - Badge "CONFIRMED"
  - "15 ABR"
    - 08:00 PM - Omitida - Badge "OMITTED"
    - 08:00 AM - Confirmada - Badge "CONFIRMED"
- Indicadores visuales: Checkmark (verde) para confirmadas, X (rojo) para omitidas
---


### 4.4.4. Mobile Applications User Flow Diagrams

Los siguientes diagramas representan los principales flujos de interacción de la aplicación móvil FerovaFamily, utilizada por los apoderados para gestionar la información de sus pacientes, realizar el seguimiento del tratamiento, registrar información nutricional, gestionar citas y comunicarse con el personal de salud.

**Mobile User Flow 1: Confirmación de dosis**

> **Relacionado con el User Goal:**
>
> Como apoderado, quiero confirmar las dosis programadas de mi paciente, para registrar el cumplimiento de su
> tratamiento y realizar su seguimiento.

 <div align="center">
  <img src="../assets/img/chapter-IV/mockup flow/Confirmacion de dosis Flow.png" width=450>
</div>


Este flujo inicia cuando el apoderado accede a la pantalla principal de FerovaFamily y consulta las dosis programadas del paciente seleccionado. Desde esta sección puede confirmar una dosis correspondiente al tratamiento. Una vez realizada la confirmación, la dosis queda registrada y puede ser consultada posteriormente en el historial.

---

**Mobile User Flow 2: Historial de dosis**

> **Relacionado con el User Goal:**
> Como apoderado, quiero consultar el historial de dosis de mi paciente,
> para verificar las dosis que han sido confirmadas u omitidas durante su tratamiento.

 <div align="center">
  <img src="../assets/img/chapter-IV/mockup flow/Hisorial de dosis Flow.png" width=450>
</div>

Este flujo inicia cuando el apoderado selecciona la opción “Ver historial” desde la sección de dosis. La aplicación muestra los registros correspondientes a diferentes fechas, permitiendo identificar las dosis confirmadas y omitidas.

---

**Mobile User Flow 3: Registro y búsqueda de alimentos**

> **Relacionado con el User Goal:**
> Como apoderado, quiero registrar los alimentos consumidos por mi paciente,
> para llevar un seguimiento de su alimentación y del hierro aportado por los alimentos.

 <div align="center">
  <img src="../assets/img/chapter-IV/mockup flow/Registrar y Busqueda de alimentos.png" width=450>
</div>

Este flujo inicia desde el Diario Nutricional. El apoderado selecciona “Nueva entrada”, busca el alimento correspondiente, selecciona el alimento, indica la cantidad consumida y confirma el registro. La información se incorpora al diario nutricional.

---

**Mobile User Flow 4: Registro de paciente**

> **Relacionado con el User Goal:**
> Como apoderado, quiero registrar a un nuevo paciente,
> para gestionar su información y realizar el seguimiento de su tratamiento.

 <div align="center">
  <img src="../assets/img/chapter-IV/mockup flow/Registro de Paciente Flow.png" width=450>
</div>


El flujo inicia cuando el apoderado selecciona “Agregar” en la sección “Mis Niños”. Luego completa los datos solicitados, como nombres, apellidos, fecha de nacimiento, sexo, peso y talla. Finalmente, selecciona “Registrar a mi pequeño” y el paciente queda incorporado a su cuenta.

---

**Mobile User Flow 5: Reserva de cita**

> **Relacionado con el User Goal:**
> Como apoderado, quiero reservar una cita para mi paciente,
> para programar su atención en una posta de salud disponible.

 <div align="center">
  <img src="../assets/img/chapter-IV/mockup flow/Reserva de Cita Flow.png" width=450>
</div>

El flujo inicia desde “Ver Postas Cercanas”. El apoderado consulta las postas disponibles, selecciona una posta y revisa sus detalles. Posteriormente selecciona “Reservar cita”, elige al paciente, selecciona una fecha y un horario disponible y confirma la reserva.

---

**Mobile User Flow 6: Historial nutricional**

> **Relacionado con el User Goal:**
> Como apoderado, quiero consultar el historial nutricional de mi paciente,
> para revisar los registros de alimentación y el hierro absorbido en diferentes fechas.

 <div align="center">
  <img src="../assets/img/chapter-IV/mockup flow/Ver Historial Nutricional Flow.png" width=450>
</div>

El flujo inicia desde “Diario Nutricional”, donde el apoderado selecciona “Ver historial”. La aplicación muestra los registros nutricionales organizados por fecha, incluyendo información sobre el hierro absorbido y los alimentos registrados.

---

**Mobile User Flow 7: Progreso y medallas**

> **Relacionado con el User Goal:**
> Como apoderado, quiero consultar el progreso y las medallas de mi paciente,
> para conocer su evolución durante el seguimiento del tratamiento y visualizar los logros obtenidos.

 <div align="center">
  <img src="../assets/img/chapter-IV/mockup flow/Ver Progreso y Medallas de un paciente.png" width=450>
</div>

El flujo inicia desde la pantalla principal, seleccionando “Mis Logros y Medallas”. La aplicación muestra información relacionada con el progreso, rachas, evolución de hemoglobina y medallas obtenidas o pendientes de desbloquear.

---

**Mobile User Flow 8: Cancelación de cita**

> **Relacionado con el User Goal:**
> Como apoderado, quiero cancelar una cita de mi paciente,
> para gestionar las citas programadas cuando ya no sea posible asistir.

 <div align="center">
  <img src="../assets/img/chapter-IV/mockup flow/Cancelar Cita Flow.png" width=450>
</div>


El flujo inicia desde la sección “Citas”, donde el apoderado selecciona una cita previamente registrada. Luego selecciona “Cancelar cita” y la aplicación muestra una ventana de confirmación. Si confirma la operación, la cita pasa al estado de cancelada.

---

**Mobile User Flow 9: Comunicación**

> **Relacionado con el User Goal:**
> Como apoderado, quiero comunicarme con el personal de salud,
> para realizar consultas relacionadas con el seguimiento de mi paciente.

 <div align="center">
  <img src="../assets/img/chapter-IV/mockup flow/Comunicacion Flow.png" width=450>
</div>

El flujo inicia desde la sección “Consultas”, donde el apoderado puede visualizar las consultas disponibles y seleccionar una conversación. Dentro de ella puede revisar los mensajes existentes y enviar nuevos mensajes al personal de salud.

## 4.5. Mobile Applications Prototyping

### 4.5.1. Android Mobile Applications Prototyping

En cuanto a la arquitectura de información, el prototipo móvil de FerovaFamily emplea una navegación jerárquica clara, acompañada de flujos secuenciales en procesos clave como el registro de pacientes, la confirmación de dosis, el registro de alimentos y la gestión de citas. Asimismo, se definieron etiquetas y categorías orientadas a las necesidades de los apoderados, facilitando el acceso a funcionalidades como el seguimiento del tratamiento, el diario nutricional, las postas de salud, las citas y las consultas con el personal de salud.

Asimismo, se implementaron interacciones responsivas, estados visuales, validaciones en formularios y retroalimentación inmediata ante las acciones del usuario. Estos elementos permiten que la consulta de información y ejecución de tareas se realicen de manera clara y eficiente dentro del contexto móvil, facilitando el seguimiento del tratamiento de los pacientes.

Además, se grabó un video donde se explican los principales flujos de interacción del prototipo móvil de FerovaFamily, mostrando cómo las decisiones de diseño se reflejan en la experiencia del apoderado y en las diferentes funcionalidades de seguimiento y gestión disponibles en la aplicación.

<div align="center">
  <img src="../assets/img/chapter-IV/androind-1.png">
</div>

<div align="center">
  <img src="../assets/img/chapter-IV/androind-2.png">
</div>
<br>

**Enlace del video:** https://me-l.co/mqsu78sl

### 4.5.2. iOS Mobile Applications Prototyping

En cuanto a la arquitectura de información, el prototipo móvil de FerovaFamily para iOS mantiene una navegación jerárquica coherente con las convenciones de diseño de la plataforma, incorporando flujos secuenciales en procesos clave como el registro de pacientes, la confirmación de dosis, el registro de alimentos y la gestión de citas. Se definieron etiquetas intuitivas y categorías orientadas a las necesidades de los apoderados, facilitando el acceso a funcionalidades como el seguimiento del tratamiento, el diario nutricional, las postas de salud, las citas y las consultas con el personal de salud.

Asimismo, se implementaron interacciones adaptadas al contexto de iOS, como estados de selección, transiciones entre pantallas y retroalimentación visual ante las acciones del usuario. También se incorporaron validaciones visuales en formularios y mensajes de confirmación que permiten comprender el resultado de las acciones realizadas. Estos elementos aseguran que tanto el acceso a la información como la ejecución de tareas se realicen de manera clara y eficiente, manteniendo una experiencia coherente con las convenciones de la plataforma iOS.

Además, se grabó un video donde se explican los principales flujos de interacción del prototipo iOS, mostrando cómo las decisiones de diseño se reflejan en la experiencia del apoderado y cómo se adaptan a las convenciones y expectativas de los usuarios de esta plataforma.

<div align="center">
  <img src="../assets/img/chapter-IV/ios-1.png">
</div>

<div align="center">
  <img src="../assets/img/chapter-IV/ios-2.png">
</div>

 <br>

**Enlace del video:** https://me-l.co/m22cabc2

## 4.6. Web Applications UX/UI Design

### 4.6.1. Web Applications Wireframes

Los siguientes wireframes corresponden a la aplicación web de **Ferova Clinic**, una plataforma de gestión clínica y administrativa diseñada específicamente para el personal de salud y administradores de postas médicas. El objetivo de estos esquemas de baja fidelidad es definir la estructura de la información, la disposición de los elementos y los flujos de trabajo sin distracciones visuales, garantizando que la herramienta responda a las altas exigencias operativas de los usuarios.

#### Principios Aplicados

**- Eficiencia operativa y navegación (Dashboard Layout):**
La interfaz adopta una estructura robusta de panel de control, utilizando una barra lateral izquierda (Sidebar) persistente y una barra superior (Topbar). Esto permite al personal cambiar rápidamente entre módulos (pacientes, citas, consultas) sin perder el contexto de su sesión, reduciendo la carga cognitiva y el número de clics.

**- Jerarquía de datos clínicos:**
El diseño prioriza la visibilidad de la información crítica por encima del pliegue (above the fold). Elementos como los indicadores de riesgo de los pacientes, el estado de adherencia y las citas del día se posicionan estratégicamente para que los profesionales puedan identificar urgencias y tomar decisiones inmediatas con un simple escaneo visual.

**- Diseño modular para resoluciones de escritorio:**
A diferencia del diseño móvil, Ferova Clinic aprovecha el espacio horizontal de los monitores de escritorio. Se emplean componentes modulares como tarjetas (cards) para agrupar métricas, tablas de datos expansibles para el listado de pacientes, y vistas divididas (master-detail) para el módulo de mensajería, optimizando la lectura masiva de datos.

**- Flujos de tareas secuenciales (Wizards):**
Para minimizar errores en el ingreso de información médica o administrativa, los procesos complejos —como el registro de una nueva posta de salud, la configuración de un esquema de tratamiento o la actualización de un historial clínico— se estructuran en pasos lógicos y secuenciales, guiando al usuario de principio a fin de manera clara.

---

### Módulo IAM (Identity and Access Management)

#### Pantallas de Autenticación y Recuperación

**Descripción:**
Panel de acceso y gestión de credenciales para el personal de salud. Se observa una estructura centrada que incluye el inicio de sesión, el formulario de registro para nuevos profesionales (con campos para datos personales e institucionales) y el flujo paso a paso para la recuperación de contraseña (solicitud de código y creación de nueva clave)[cite: 1].

<div align="center">
  <img src="../assets/img/chapter-IV/web-wireframes-01.png" alt="Web Wireframes-01">
</div>

---

### Módulo de Home / Dashboard

#### Pantalla Principal (Panel General)

**Descripción:**
Panel de control principal (Dashboard) diferenciado por roles. La vista superior (orientada a enfermeras) destaca el número de pacientes en riesgo, citas programadas y accesos rápidos a tareas frecuentes. La vista inferior (orientada a coordinadores) muestra métricas globales, porcentajes de adherencia y un listado de estado de las diferentes postas médicas[cite: 2].

<div align="center">
  <img src="../assets/img/chapter-IV/web-wireframes-02.png" alt="Web Wireframes-02">
</div>

---

### Módulo de Agenda de Citas (Healthy-Management)

#### Pantalla de Agenda de Citas

**Descripción:**
Gestión centralizada de las atenciones programadas. Presenta un buscador superior, tarjetas de resumen con el total de citas y próximas atenciones, seguido de una cuadrícula con el listado de pacientes citados. Cada registro indica la hora, el estado de la cita mediante un badge (ej. "Confirmada") y los datos de la posta médica[cite: 3].

<div align="center">
  <img src="../assets/img/chapter-IV/web-wireframes-03.png" alt="Web Wireframes-03">
</div>

---

### Módulo de Tratamientos (Treatment - Tracking)

#### Pantallas de Inicio y Seguimiento de Tratamiento

**Descripción:**
Módulo orientado al control de los esquemas de medicación. Se visualizan formularios para iniciar un nuevo tratamiento, un panel para clasificar el tipo de riesgo de los pacientes y una vista de "Mis Tratamientos" que permite al profesional monitorear el progreso y adherencia de los casos activos mediante indicadores visuales[cite: 4].

<div align="center">
  <img src="../assets/img/chapter-IV/web-wireframes-04.png" alt="Web Wireframes-04">
</div>

---

### Módulo de Gestión de Pacientes (Patient Management)

#### Pantallas de Control de Hemoglobina y Registro Médico

**Descripción:**
Dedicado a la gestión clínica individual. Incluye flujos para asignar pacientes a profesionales y dar de alta. La sección principal detalla formularios extensos para registrar nuevos controles de hemoglobina, actualizar métricas (peso, talla) y consultar el historial cronológico de las evaluaciones clínicas previas del menor[cite: 5].

<div align="center">
  <img src="../assets/img/chapter-IV/web-wireframes-05.png" alt="Web Wireframes-05">
</div>

---

### Módulo de Comunicación (Consultation)

#### Pantalla de Bandeja de Consultas

**Descripción:**
Interfaz para la comunicación directa con los apoderados. Utiliza un patrón de vista dividida: a la izquierda, una bandeja de entrada con el listado de pacientes y un buscador; a la derecha, el área de conversación detallada (chat) donde el profesional puede revisar el historial de mensajes y redactar respuestas[cite: 6].

<div align="center">
  <img src="../assets/img/chapter-IV/web-wireframes-06.png" alt="Web Wireframes-06">
</div>

---

### Módulo de Analítica y Mapas

#### Pantalla de Mapa de Calor

**Descripción:**
Herramienta de análisis geográfico para coordinadores y administradores. Se visualiza un mapa central de gran tamaño diseñado para mostrar la concentración de pacientes según su nivel de riesgo (Crítico, Moderado, Bajo), complementado por un panel lateral que detalla métricas específicas por cada establecimiento de salud[cite: 7].

<div align="center">
  <img src="../assets/img/chapter-IV/web-wireframes-07.png" alt="Web Wireframes-07">
</div>

---

### Módulo de Administración de Postas (Health Facilities)

#### Pantallas de Registro y Gestión de Postas

**Descripción:**
Flujos administrativos para gestionar la infraestructura de salud. Se implementa un patrón secuencial (wizard) de 4 pasos para registrar una "Nueva Posta" (datos, ubicación, horario y asignación de personal). También incluye vistas para buscar postas existentes y asignar o reasignar enfermeras a los distintos centros[cite: 8].

<div align="center">
  <img src="../assets/img/chapter-IV/web-wireframes-08.png" alt="Web Wireframes-08">
</div>

### 4.6.2. Web Applications Wireflow Diagrams

Los siguientes diagramas de flujo de baja fidelidad (Wireflows) ilustran las secuencias de interacción clave que el personal de salud (enfermeras) y los administradores realizan dentro de Ferova Clinic. Estos flujos mapean el recorrido del usuario pantalla por pantalla, incluyendo decisiones y acciones críticas para cumplir objetivos específicos (User Goals).

---

**Web Wireflow 1: Visualización de Riesgo Clínico de Paciente**

> **Relacionado con el User Goal:**
> Como personal de salud, quiero identificar rápidamente a los pacientes en situación de riesgo desde mi panel principal, para revisar su historial detallado y tomar medidas preventivas.

El flujo inicia en el Panel General (Dashboard), donde el profesional identifica a los pacientes categorizados por niveles de riesgo (Crítico, Moderado, Bajo)[cite: 9]. Al hacer clic en un nivel específico, el sistema filtra y despliega la lista correspondiente de pacientes[cite: 9]. Desde allí, el usuario selecciona un paciente y navega progresivamente por sus detalles clínicos, revisando gráficas de adherencia y evolución de la hemoglobina para un análisis completo de su estado actual[cite: 9].

<div align="center">
  <img src="../assets/img/chapter-IV/web-wireflow-01.png" alt="Web Wireflow 01">
</div>

---

**Web Wireflow 2: Asignación de Pacientes**

> **Relacionado con el User Goal:**
> Como personal de salud, quiero buscar y vincular a un paciente registrado en el sistema a mi lista de atención, para iniciar su seguimiento clínico formal.

El flujo arranca en la sección de pacientes, donde el profesional selecciona la opción para asignar un nuevo paciente y realiza la búsqueda[cite: 10]. El sistema presenta una bifurcación lógica: si el paciente existe, muestra sus datos básicos y permite confirmar la asignación, mostrando una pantalla de éxito; si el paciente no está registrado, se muestra un estado vacío (empty state) indicando que no se encontraron resultados[cite: 10].

<div align="center">
  <img src="../assets/img/chapter-IV/web-wireflow-02.png" alt="Web Wireflow 02">
</div>

---

**Web Wireflow 3: Inicio de Tratamiento**

> **Relacionado con el User Goal:**
> Como personal de salud, quiero configurar el esquema de medicación de un paciente recién asignado, para que el apoderado reciba las indicaciones en su aplicación móvil.

Desde la lista general, el usuario inicia la acción para asignar un tratamiento[cite: 11]. El flujo se divide en distintas rutas de navegación que convergen en el formulario de "Iniciar Tratamiento"[cite: 11]. En este formulario, el profesional define el suplemento, la dosis y la frecuencia; tras guardar, el sistema confirma la acción y redirige a la vista de resumen del esquema creado[cite: 11].

<div align="center">
  <img src="../assets/img/chapter-IV/web-wireflow-03.png" alt="Web Wireflow 03">
</div>

---

**Web Wireflow 4: Dar de Alta a un Paciente**

> **Relacionado con el User Goal:**
> Como personal de salud, quiero registrar el alta médica de un paciente que ha completado exitosamente su esquema o cuyos niveles de hemoglobina se han regularizado, para cerrar su caso.

El profesional navega a su lista de pacientes activos y selecciona la acción "Dar de Alta" para un caso específico[cite: 12]. El sistema despliega un modal superpuesto solicitando la confirmación de la acción para prevenir cierres accidentales[cite: 12]. Al confirmar, el estado del paciente se actualiza en el listado general reflejando su nueva condición[cite: 12].

<div align="center">
  <img src="../assets/img/chapter-IV/web-wireflow-04.png" alt="Web Wireflow 04">
</div>

---

**Web Wireflow 5: Registro y Actualización de Historial Médico**

> **Relacionado con el User Goal:**
> Como personal de salud, quiero actualizar la historia clínica del paciente con nuevos datos antropométricos o antecedentes, para mantener su expediente al día.

El flujo detalla el ingreso al perfil del paciente y la navegación hacia la sección del historial médico[cite: 13]. Al elegir actualizar, se abre un formulario detallado donde el usuario ingresa la nueva información[cite: 13]. Tras completar los datos, se confirma el guardado y el sistema refleja la actualización en la vista consolidada del historial del paciente[cite: 13].

<div align="center">
  <img src="../assets/img/chapter-IV/web-wireflow-05.png" alt="Web Wireflow 05">
</div>

---

**Web Wireflow 6: Control de Hemoglobina**

> **Relacionado con el User Goal:**
> Como personal de salud, quiero registrar un nuevo valor de hemoglobina tras un tamizaje, para permitir que el sistema recalcule el nivel de riesgo clínico.

Desde la vista del paciente, el profesional accede a la pestaña de controles y selecciona agregar un nuevo registro[cite: 14]. El sistema muestra un formulario donde se ingresa la fecha y el valor en g/dL de la muestra obtenida[cite: 14]. Tras la confirmación, el nuevo valor se añade a la lista histórica y actualiza las gráficas de evolución[cite: 14].

<div align="center">
  <img src="../assets/img/chapter-IV/web-wireflow-06.png" alt="Web Wireflow 06">
</div>

---

**Web Wireflow 7: Gestión de Citas**

> **Relacionado con el User Goal:**
> Como personal de salud, quiero revisar la agenda de atenciones programadas, para organizar mi carga de trabajo diaria en la posta médica.

El usuario accede al módulo de Citas desde la navegación global, donde el sistema presenta una bifurcación según los filtros aplicados[cite: 15]. El flujo muestra la vista con el listado completo de citas programadas y, como alternativa, el estado de pantalla vacía (empty state) que indica que no hay pacientes citados para los parámetros seleccionados[cite: 15].

<div align="center">
  <img src="../assets/img/chapter-IV/web-wireflow-07.png" alt="Web Wireflow 07">
</div>

---

**Web Wireflow 8: Flujo de Consultas (Comunicación)**

> **Relacionado con el User Goal:**
> Como personal de salud, quiero leer y responder los mensajes enviados por los apoderados, para brindar soporte remoto y asegurar la correcta administración del suplemento.

El profesional visualiza los mensajes entrantes en la bandeja de consultas[cite: 16]. Al seleccionar un chat específico, se despliega la vista de conversación donde puede redactar una respuesta[cite: 16]. El flujo incluye acciones complementarias, como modales de confirmación para cerrar la consulta o enviar el mensaje, actualizando así el hilo de la conversación[cite: 16].

<div align="center">
  <img src="../assets/img/chapter-IV/web-wireflow-08.png" alt="Web Wireflow 08">
</div>

---

**Web Wireflow 9: Flujos de "Mis Tratamientos" (Monitoreo)**

> **Relacionado con el User Goal:**
> Como personal de salud, quiero supervisar el progreso general de todos los tratamientos activos bajo mi cargo, para identificar rápidamente los casos de baja adherencia.

El usuario ingresa a la vista "Mis Tratamientos", visualizando las tarjetas resumen de cada caso activo[cite: 17]. El flujo muestra cómo el profesional puede seleccionar un tratamiento, abrir un modal de edición para ajustar parámetros o visualizar vistas detalladas del estado de adherencia del paciente seleccionado[cite: 17].

<div align="center">
  <img src="../assets/img/chapter-IV/web-wireflow-09.png" alt="Web Wireflow 09">
</div>

---

**Web Wireflow 10: Registro de Posta (Rol Administrador)**

> **Relacionado con el User Goal:**
> Como administrador del sistema, quiero dar de alta un nuevo establecimiento de salud, para integrarlo a la red de Ferova Clinic y permitir la asignación de personal.

Este flujo exclusivo para administradores inicia con la selección de "Nueva Posta"[cite: 18]. El usuario navega por un asistente (wizard) secuencial: ingresa datos generales, ubica la posta en un mapa, define horarios y asigna enfermeras al centro[cite: 18]. El proceso culmina con el guardado exitoso y la aparición del nuevo registro en el listado de establecimientos[cite: 18].

<div align="center">
  <img src="../assets/img/chapter-IV/web-wireflow-10.png" alt="Web Wireflow 10">
</div>

---

**Web Wireflow 11: Flujo Heat Map (Rol Administrador)**

> **Relacionado con el User Goal:**
> Como administrador, quiero visualizar el mapa de calor de las postas médicas, para analizar geográficamente la concentración de pacientes según su nivel de riesgo clínico.

El flujo inicia en el panel general del administrador (Dashboard), donde se observan métricas globales[cite: 19]. Desde allí, el usuario navega hacia el módulo del "Mapa de Calor"[cite: 19]. El sistema presenta una bifurcación interactiva que permite visualizar el mapa con diferentes agrupaciones de datos, mostrando círculos de colores superpuestos (clusters) que representan la densidad y el estado de riesgo de los pacientes en diversas zonas[cite: 19].

<div align="center">
  <img src="../assets/img/chapter-IV/web-wireflow-11.png" alt="Web Wireflow 11">
</div>

### 4.6.3. Web Applications Mock-ups

<img src="../assets/img/chapter-IV/web-mockups.png" alt="Web Mock-ups">

<!-- COMPLETAR -->

### 4.6.4. Web Applications User Flow Diagrams

**User Goal 1:** [enunciado]

<img src="../assets/img/chapter-IV/web-userflow-01.png" alt="Web User Flow 1">

<!-- COMPLETAR -->

## 4.7. Web Applications Prototyping

<img src="../assets/img/chapter-IV/web-prototype.png" alt="Web Prototype">

**Enlace del video:** [URL de Microsoft Stream]

<!-- COMPLETAR -->

## 4.8. Domain-Driven Software Architecture

La arquitectura de software de Ferova Platform se organiza mediante un enfoque orientado al dominio, utilizando el modelo C4 para representar progresivamente la estructura de la solución. Esta representación permite visualizar el sistema desde una perspectiva general hasta el detalle de sus componentes internos.

La arquitectura considera como actores principales al Apoderado y al Personal de Salud, quienes interactúan con la plataforma mediante diferentes aplicaciones. La solución está compuesta por una aplicación web para el personal de salud, una aplicación móvil para los apoderados y una API que centraliza la lógica de negocio y el acceso a los datos.

Asimismo, Ferova Platform integra servicios externos como Resend, utilizado para el envío de correos electrónicos, y Google Maps API, utilizado para consultar información relacionada con la ubicación de las postas de salud.

Para representar esta arquitectura se emplearon tres niveles del modelo C4: Contexto, Contenedores y Componentes, desarrollados mediante Structurizr.


### 4.8.1. Software Architecture Context Diagram

El Context Diagram presenta una visión general de Ferova Platform y permite identificar los principales actores y sistemas externos que interactúan con la solución.

<div align ="center">
  <img src="../assets/img/chapter-IV/1.png">
</div>

En el centro del contexto se encuentra Ferova Platform, que proporciona las funcionalidades necesarias para que los apoderados realicen el seguimiento del tratamiento de sus pacientes y para que el personal de salud gestione y supervise su atención.

Los principales actores identificados son:

- **Apoderado:** madre, padre o cuidador responsable del paciente, quien utiliza la plataforma para gestionar la información del paciente, realizar el seguimiento del tratamiento, consultar su evolución, gestionar citas y comunicarse con el personal de salud.

- **Personal de Salud:** profesionales responsables de gestionar y realizar el seguimiento de los pacientes, así como atender las consultas de los apoderados.

Además, Ferova Platform mantiene comunicación con servicios externos. Resend permite gestionar el envío de correos electrónicos, particularmente aquellos relacionados con procesos como la recuperación de contraseña. Google Maps API permite consultar información de ubicación asociada a las postas de salud.

### 4.8.2. Software Architecture Container Diagrams

El Container Diagram descompone Ferova Platform en los principales contenedores que conforman la solución y muestra cómo estos interactúan entre sí.

<div align ="center">
  <img src="../assets/img/chapter-IV/2.png">
</div>

La plataforma está organizada principalmente en los siguientes contenedores:

- **Web Site:** sitio web público que presenta información sobre Ferova y permite a los usuarios acceder a la aplicación web o descargar la aplicación móvil.
- **Web Application:** aplicación web destinada al personal de salud, mediante la cual puede gestionar pacientes y realizar el seguimiento de tratamientos, controles y citas.
- **Mobile Application:** aplicación móvil destinada a los apoderados, que permite gestionar pacientes, registrar y consultar información relacionada con el tratamiento, consultar citas y mantener comunicación con el personal de salud.
- **API Application:** backend principal de la plataforma, responsable de centralizar la lógica de negocio, autenticación, gestión de pacientes, tratamientos, citas, seguimiento y comunicación.
- **Base de datos:** contenedor encargado de almacenar la información operativa de la plataforma, incluyendo usuarios, pacientes, tratamientos, citas, controles y demás información requerida por los módulos funcionales.

La Web Application y la Mobile Application utilizan la API Application mediante comunicaciones HTTP/HTTPS para consultar y registrar información. A su vez, la API utiliza la base de datos para leer y escribir la información necesaria para la operación de la plataforma.

En este nivel también se representan las integraciones externas. La plataforma utiliza Resend para el envío de correos electrónicos y Google Maps API para consultar información de ubicación de las postas de salud.

De esta manera, el diagrama permite observar la separación entre las interfaces utilizadas por los usuarios, la capa encargada de la lógica de negocio y la persistencia de información.

### 4.8.3. Software Architecture Components Diagrams

El Component Diagram presenta una descomposición interna de los contenedores principales de Ferova Platform, permitiendo identificar las responsabilidades funcionales que conforman cada aplicación.

**Web Application**

La aplicación web utilizada por el personal de salud se organiza en componentes orientados a las principales funcionalidades de gestión y seguimiento:

<div align ="center">
  <img src="../assets/img/chapter-IV/3.png">
</div>

- **Identity and Management:** gestiona la autenticación, autorización y administración de los usuarios del personal de salud.
- **Patient Management:** permite gestionar la información de los pacientes y su asignación al personal de salud.
- **Treatment Tracking:** gestiona el seguimiento de tratamientos, controles y estado de los pacientes.
- **Health Facility:** permite consultar y gestionar información relacionada con las postas de salud.
- **Communication:** gestiona las comunicaciones y consultas entre el personal de salud y los apoderados.
- **Analytics Reporting:** permite consultar métricas e indicadores para analizar información relacionada con el seguimiento de los pacientes.

Estos componentes mantienen relaciones funcionales entre sí y utilizan la API Application para acceder a las funcionalidades y datos proporcionados por el backend.

**API Application**

La API Application concentra la lógica de negocio de Ferova Platform y se encuentra organizada en componentes funcionales que representan las principales responsabilidades del backend:

<div align ="center">
  <img src="../assets/img/chapter-IV/4.png">
</div>

- **Identity and Management:** gestiona autenticación, autorización y administración de usuarios.
- **Patient Management:** gestiona la información de los pacientes y su relación con el personal de salud.
- **Treatment Tracking:** gestiona tratamientos, controles y seguimiento de los pacientes.
- **Health Facility:** administra la información relacionada con las postas de salud y su ubicación.
- **Communication Management:** gestiona las comunicaciones entre apoderados y personal de salud.
- **Analytics Reporting:** genera métricas e indicadores a partir de la información disponible en la plataforma.
- **Achievements & Rewards:** gestiona logros, puntos y recompensas relacionados con el seguimiento del tratamiento.
- **Nutritional Diary:** gestiona el registro y seguimiento de información nutricional de los pacientes.

Los componentes del backend mantienen relaciones entre sí para intercambiar información necesaria para ejecutar las funcionalidades del sistema. Por ejemplo, Patient Management proporciona información utilizada por Treatment Tracking, mientras que los datos de tratamientos y controles son utilizados por Analytics Reporting y Achievements & Rewards.

La API también mantiene comunicación con servicios externos. El componente Identity and Management utiliza Resend para el envío de códigos de verificación relacionados con la recuperación de contraseña, mientras que Health Facility utiliza Google Maps API para consultar información de ubicación de las postas de salud.

Finalmente, los componentes del backend interactúan con la base de datos MongoDB para almacenar y recuperar la información necesaria para la operación de la plataforma.



## 4.9. Software Object-Oriented Design

### 4.9.1. Class Diagrams

El diagrama de clases representa la estructura estática del dominio de Ferova Platform, mostrando las principales clases que intervienen en la gestión de pacientes y el seguimiento de su tratamiento.

El modelo incluye entidades relacionadas con la administración de usuarios y pacientes, historias clínicas, controles de hemoglobina, tratamientos, establecimientos de salud, citas, asignación de personal de salud y comunicación entre usuarios. Asimismo, incorpora las clases asociadas al seguimiento nutricional y al sistema de logros y recompensas.

Entre las principales clases representadas se encuentran User, Patient, MedicalRecord, Control, Treatment, HealthFacility, Appointment, NurseAssignment, Consultation, Message, RiskScore, Achievement, Badge, DailyDose, NutritionalDiary, FoodEntry y FoodItem. También se incluyen enumeraciones utilizadas para representar estados y categorías del dominio, como Role, TreatmentStatus, RiskLevel, AnemiaStatus y AchievementStatus.

Las relaciones entre estas clases permiten representar, entre otros aspectos, la asociación de pacientes con usuarios, la gestión de historias clínicas y controles, el seguimiento de tratamientos, la asignación de personal de salud, la programación de citas, el registro de consultas y mensajes, el seguimiento nutricional y la obtención de logros durante el tratamiento.

<div aling="center">
  <img src="../assets/img/chapter-IV/Untitled.png">
</div>

### 4.9.2. Class Dictionary

El diccionario de clases describe los principales elementos que conforman el modelo orientado a objetos de Ferova Platform, detallando las clases, atributos y métodos definidos en el diagrama.

**User**

| Clase | Atributo / Método  | Tipo     | Descripción                                                    |
| ----- | ------------------ | -------- | -------------------------------------------------------------- |
| User  | id                 | string   | Identificador único del usuario.                               |
| User  | name               | string   | Nombre del usuario.                                            |
| User  | last_name          | string   | Apellido del usuario.                                          |
| User  | password           | Password | Contraseña utilizada para la autenticación.                    |
| User  | role               | Role     | Rol asignado al usuario dentro de la plataforma.               |
| User  | email              | Email    | Correo electrónico del usuario.                                |
| User  | phone              | Phone    | Número telefónico del usuario.                                 |
| User  | created_at         | DateTime | Fecha y hora de creación del usuario.                          |
| User  | validateName()     | string   | Valida el nombre registrado del usuario.                       |
| User  | validateLastName() | string   | Valida el apellido registrado del usuario.                     |
| User  | changePassword()   | void     | Permite cambiar la contraseña del usuario.                     |
| User  | updateProfile()    | void     | Actualiza la información del perfil.                           |
| User  | Deactive()         | void     | Desactiva al usuario.                                          |
| User  | Active()           | void     | Activa al usuario.                                             |
| User  | changeRole()       | void     | Permite cambiar el rol del usuario.                            |
| User  | isMother()         | bool     | Determina si el usuario corresponde al rol de madre/apoderada. |
| User  | isStaff()          | bool     | Determina si el usuario pertenece al personal de salud.        |

**Patient**

| Clase   | Atributo / Método     | Tipo          | Descripción                                       |
| ------- | --------------------- | ------------- | ------------------------------------------------- |
| Patient | id                    | string        | Identificador único del paciente.                 |
| Patient | name                  | string        | Nombre del paciente.                              |
| Patient | last_name             | string        | Apellido del paciente.                            |
| Patient | BirthDate             | string        | Fecha de nacimiento del paciente.                 |
| Patient | weight                | CurrentWeight | Peso actual del paciente.                         |
| Patient | height                | CurrentHeight | Talla o altura actual del paciente.               |
| Patient | motherId              | string        | Identificador de la madre o apoderada.            |
| Patient | nurseId               | string        | Identificador del personal de salud asignado.     |
| Patient | gender                | Gender        | Género del paciente.                              |
| Patient | facilityId            | string        | Identificador del establecimiento de salud.       |
| Patient | medicalRecord         | MedicalRecord | Historia clínica asociada al paciente.            |
| Patient | assignNurse()         | void          | Permite asignar un personal de salud al paciente. |
| Patient | Discharge()           | void          | Gestiona el alta del paciente.                    |
| Patient | UpdateWeight()        | void          | Actualiza el peso del paciente.                   |
| Patient | UpdateHeight()        | void          | Actualiza la altura del paciente.                 |
| Patient | assignMedicalRecord() | void          | Asigna la historia clínica al paciente.           |

**MedicalRecord**

| Clase         | Atributo / Método | Tipo              | Descripción                                         |
| ------------- | ----------------- | ----------------- | --------------------------------------------------- |
| MedicalRecord | id                | string            | Identificador de la historia clínica.               |
| MedicalRecord | CreatedAt         | DateTime          | Fecha de creación de la historia clínica.           |
| MedicalRecord | UpdatedAt         | DateTime          | Fecha de última actualización.                      |
| MedicalRecord | hemoglobinLevel   | HemoglobinLevel   | Nivel de hemoglobina registrado.                    |
| MedicalRecord | weight            | Weight            | Peso registrado en la historia clínica.             |
| MedicalRecord | height            | Height            | Altura registrada en la historia clínica.           |
| MedicalRecord | antecedentes      | List<Antecedente> | Antecedentes registrados del paciente.              |
| MedicalRecord | motivoConsulta    | string            | Motivo de la consulta médica.                       |
| MedicalRecord | observaciones     | string            | Observaciones registradas por el personal de salud. |
| MedicalRecord | controles         | List<Control>     | Controles asociados a la historia clínica.          |
| MedicalRecord | sintomas          | List<string>      | Síntomas registrados del paciente.                  |
| MedicalRecord | patientId         | string            | Identificador del paciente asociado.                |

**Control**

| Clase   | Atributo / Método       | Tipo             | Descripción                                         |
| ------- | ----------------------- | ---------------- | --------------------------------------------------- |
| Control | id                      | string           | Identificador único del control.                    |
| Control | date                    | DateTime         | Fecha del control.                                  |
| Control | hemoglobine_level       | HemoglobineLevel | Nivel de hemoglobina registrado durante el control. |
| Control | anemiaStatus            | AnemiaStatus     | Estado de anemia determinado para el paciente.      |
| Control | CalculateAnemiaStatus() | AnemiaStatus     | Calcula el estado de anemia del paciente.           |

**Treatment**

| Clase     | Atributo / Método        | Tipo            | Descripción                                           |
| --------- | ------------------------ | --------------- | ----------------------------------------------------- |
| Treatment | id                       | string          | Identificador del tratamiento.                        |
| Treatment | patientId                | string          | Identificador del paciente.                           |
| Treatment | nurseId                  | string          | Identificador del personal de salud responsable.      |
| Treatment | supplement               | string          | Suplemento indicado para el tratamiento.              |
| Treatment | quantity                 | string          | Cantidad indicada del suplemento.                     |
| Treatment | dosingHours              | string          | Horario o frecuencia de administración.               |
| Treatment | durationDays             | int             | Duración del tratamiento en días.                     |
| Treatment | StartDate                | DateTime        | Fecha de inicio del tratamiento.                      |
| Treatment | status                   | TreatmentStatus | Estado actual del tratamiento.                        |
| Treatment | adherenceScore           | double          | Porcentaje o puntuación de adherencia al tratamiento. |
| Treatment | currentStreak            | int             | Racha actual de cumplimiento.                         |
| Treatment | totalConfirmed           | int             | Cantidad total de dosis confirmadas.                  |
| Treatment | totalOmitted             | int             | Cantidad total de dosis omitidas.                     |
| Treatment | CompletionObservation    | string?         | Observación relacionada con la finalización.          |
| Treatment | AbandonmentObservation   | string?         | Observación relacionada con el abandono.              |
| Treatment | riskScore                | RiskScore       | Nivel de riesgo asociado al tratamiento.              |
| Treatment | validate()               | void            | Valida la información del tratamiento.                |
| Treatment | completedTreatment()     | void            | Registra la finalización del tratamiento.             |
| Treatment | abandonTreatment()       | void            | Registra el abandono del tratamiento.                 |
| Treatment | UpdateAdherenceMetrics() | void            | Actualiza las métricas de adherencia.                 |
| Treatment | UpdateRiskScore()        | void            | Actualiza el nivel de riesgo.                         |
| Treatment | IsActive()               | bool            | Determina si el tratamiento está activo.              |
| Treatment | IsCompleted()            | bool            | Determina si el tratamiento está completado.          |
| Treatment | IsAbandoned()            | bool            | Determina si el tratamiento fue abandonado.           |

**HealthFacility**

| Clase          | Atributo / Método     | Tipo                  | Descripción                                         |
| -------------- | --------------------- | --------------------- | --------------------------------------------------- |
| HealthFacility | id                    | string                | Identificador del establecimiento de salud.         |
| HealthFacility | name                  | string                | Nombre del establecimiento.                         |
| HealthFacility | address               | string                | Dirección del establecimiento.                      |
| HealthFacility | districtId            | string                | Identificador del distrito.                         |
| HealthFacility | districtName          | string                | Nombre del distrito.                                |
| HealthFacility | phone                 | string                | Número telefónico del establecimiento.              |
| HealthFacility | services              | list<string>          | Servicios disponibles.                              |
| HealthFacility | operating_schedule    | OperatingSchedule     | Horario de atención.                                |
| HealthFacility | schedule_of_operation | ScheduleOfOperation   | Información del funcionamiento del establecimiento. |
| HealthFacility | status                | string                | Estado del establecimiento.                         |
| HealthFacility | nurse_assignments     | List<NurseAssignment> | Asignaciones del personal de salud.                 |
| HealthFacility | activate()            | void                  | Activa el establecimiento.                          |
| HealthFacility | deactivate()          | void                  | Desactiva el establecimiento.                       |
| HealthFacility | updateServices()      | void                  | Actualiza los servicios disponibles.                |
| HealthFacility | assignNurse()         | void                  | Asigna personal de salud.                           |
| HealthFacility | isActive()            | bool                  | Determina si el establecimiento está activo.        |
| HealthFacility | isInactive()          | bool                  | Determina si el establecimiento está inactivo.      |

**Appoitment**

| Clase       | Atributo / Método | Tipo   | Descripción                                 |
| ----------- | ----------------- | ------ | ------------------------------------------- |
| Appointment | id                | string | Identificador de la cita.                   |
| Appointment | facilityId        | string | Identificador del establecimiento de salud. |
| Appointment | patientId         | string | Identificador del paciente.                 |
| Appointment | motherId          | string | Identificador de la madre o apoderada.      |
| Appointment | nurseId           | string | Identificador del personal de salud.        |
| Appointment | appointmentDate   | string | Fecha de la cita.                           |
| Appointment | AppointmentTime   | string | Hora de la cita.                            |
| Appointment | status            | string | Estado de la cita.                          |
| Appointment | cancel()          | void   | Cancela la cita.                            |
| Appointment | confirm()         | void   | Confirma la cita.                           |

**NurseAssigment**

| Clase           | Atributo / Método | Tipo   | Descripción                                   |
| --------------- | ----------------- | ------ | --------------------------------------------- |
| NurseAssignment | id                | string | Identificador de la asignación.               |
| NurseAssignment | facilityId        | string | Identificador del establecimiento de salud.   |
| NurseAssignment | nurseId           | string | Identificador del personal de salud asignado. |

**Consultation**

| Clase        | Atributo / Método            | Tipo          | Descripción                             |
| ------------ | ---------------------------- | ------------- | --------------------------------------- |
| Consultation | id                           | string        | Identificador de la consulta.           |
| Consultation | patientId                    | string        | Identificador del paciente.             |
| Consultation | motherId                     | string        | Identificador de la madre o apoderada.  |
| Consultation | nurseId                      | string        | Identificador del personal de salud.    |
| Consultation | message                      | List<Message> | Lista de mensajes de la consulta.       |
| Consultation | CreatedAt                    | DateTime      | Fecha de creación de la consulta.       |
| Consultation | ClosedAt                     | DateTime      | Fecha de cierre de la consulta.         |
| Consultation | SendMessage(Message message) | void          | Envía un mensaje dentro de la consulta. |
| Consultation | Close()                      | void          | Cierra la consulta.                     |
| Consultation | IsOpen()                     | bool          | Determina si la consulta está abierta.  |

**Message**

| Clase   | Atributo / Método | Tipo          | Descripción                  |
| ------- | ----------------- | ------------- | ---------------------------- |
| Message | id                | string        | Identificador del mensaje.   |
| Message | senderId          | string        | Identificador del remitente. |
| Message | senderRole        | MessageSender | Rol del remitente.           |
| Message | content           | string        | Contenido del mensaje.       |
| Message | sentAt            | DateTime      | Fecha y hora de envío.       |

**RiskScore**

| Clase     | Atributo / Método    | Tipo      | Descripción                           |
| --------- | -------------------- | --------- | ------------------------------------- |
| RiskScore | id                   | string    | Identificador del registro de riesgo. |
| RiskScore | score                | int       | Puntuación calculada de riesgo.       |
| RiskScore | riskLevel            | RiskLevel | Nivel de riesgo determinado.          |
| RiskScore | CalculateAt          | DateTime  | Fecha de cálculo del riesgo.          |
| RiskScore | validate()           | void      | Valida la información del riesgo.     |
| RiskScore | updateScore()        | void      | Actualiza la puntuación de riesgo.    |
| RiskScore | CalculateRiskLevel() | int       | Calcula el nivel de riesgo.           |

**DailyDose**

| Clase     | Atributo / Método | Tipo       | Descripción                             |
| --------- | ----------------- | ---------- | --------------------------------------- |
| DailyDose | id                | string     | Identificador de la dosis.              |
| DailyDose | treatmentId       | string     | Identificador del tratamiento asociado. |
| DailyDose | ScheduledDate     | DateTime   | Fecha programada para la dosis.         |
| DailyDose | ConfirmedAt       | DateTime   | Fecha y hora de confirmación.           |
| DailyDose | status            | DoseStatus | Estado de la dosis.                     |
| DailyDose | Confirmed()       | void       | Registra la confirmación de la dosis.   |
| DailyDose | MarkAsOmitted()   | void       | Registra la dosis como omitida.         |

**Achievement**

| Clase       | Atributo / Método      | Tipo              | Descripción                                         |
| ----------- | ---------------------- | ----------------- | --------------------------------------------------- |
| Achievement | id                     | string            | Identificador del logro.                            |
| Achievement | patientId              | string            | Identificador del paciente.                         |
| Achievement | motherId               | string            | Identificador de la madre o apoderada.              |
| Achievement | treatmentId            | string            | Identificador del tratamiento.                      |
| Achievement | durationDays           | int               | Duración asociada al logro.                         |
| Achievement | currentStreak          | int               | Racha actual.                                       |
| Achievement | longestStreak          | int               | Racha más larga alcanzada.                          |
| Achievement | best_streak            | int               | Mejor racha registrada.                             |
| Achievement | streakStart            | DateTime          | Fecha de inicio de la racha.                        |
| Achievement | totalPoints            | int               | Total de puntos obtenidos.                          |
| Achievement | status                 | AchievementStatus | Estado del logro.                                   |
| Achievement | OnDoseConfirmed()      | void              | Procesa el logro al confirmar una dosis.            |
| Achievement | OnDoseOmitted()        | void              | Procesa el logro cuando se omite una dosis.         |
| Achievement | OnTreatmentCompleted() | void              | Procesa el logro al completar el tratamiento.       |
| Achievement | OnTreatmentAbandoned() | void              | Procesa el logro cuando se abandona el tratamiento. |

**Bage**

| Clase | Atributo / Método             | Tipo   | Descripción                                               |
| ----- | ----------------------------- | ------ | --------------------------------------------------------- |
| Badge | id                            | string | Identificador de la insignia.                             |
| Badge | AchievementId                 | string | Identificador del logro relacionado.                      |
| Badge | type                          | string | Tipo de insignia.                                         |
| Badge | name                          | string | Nombre de la insignia.                                    |
| Badge | description                   | string | Descripción de la insignia.                               |
| Badge | milestone                     | string | Hito que representa la insignia.                          |
| Badge | isUnlocked                    | bool   | Indica si la insignia ha sido desbloqueada.               |
| Badge | Unclock()                     | void   | Desbloquea la insignia.                                   |
| Badge | CanBeUnlockedWithStreak()     | bool   | Determina si puede desbloquearse mediante una racha.      |
| Badge | CanBeUnlockedWithBestStreak() | bool   | Determina si puede desbloquearse mediante la mejor racha. |

**NutritionalDiary**

| Clase            | Atributo / Método       | Tipo     | Descripción                                  |
| ---------------- | ----------------------- | -------- | -------------------------------------------- |
| NutritionalDiary | id                      | string   | Identificador del diario nutricional.        |
| NutritionalDiary | patientId               | string   | Identificador del paciente.                  |
| NutritionalDiary | motherId                | string   | Identificador de la madre o apoderada.       |
| NutritionalDiary | date                    | DateTime | Fecha del registro nutricional.              |
| NutritionalDiary | totalIronAbsorbed       | double   | Cantidad total de hierro absorbido.          |
| NutritionalDiary | hasInhibitor            | bool     | Indica si se registró un alimento inhibidor. |
| NutritionalDiary | updateMetrics()         | void     | Actualiza las métricas nutricionales.        |
| NutritionalDiary | markInhibitorDetected() | void     | Registra la detección de un inhibidor.       |
| NutritionalDiary | resetDailyIron()        | void     | Reinicia el registro diario de hierro.       |

**FoodEntry**

| Clase     | Atributo / Método | Tipo     | Descripción                                  |
| --------- | ----------------- | -------- | -------------------------------------------- |
| FoodEntry | id                | string   | Identificador del registro alimenticio.      |
| FoodEntry | foodItemId        | string   | Identificador del alimento.                  |
| FoodEntry | diaryId           | string   | Identificador del diario nutricional.        |
| FoodItem  | quantity          | double   | Cantidad consumida.                          |
| FoodEntry | unit              | string   | Unidad utilizada para registrar la cantidad. |
| FoodEntry | ironContributed   | double   | Cantidad de hierro aportada.                 |
| FoodEntry | RegisteredAt      | DateTime | Fecha y hora del registro.                   |
| FoodEntry | UpdateQuantity()  | void     | Actualiza la cantidad registrada.            |

**FoodItem**

| Clase    | Atributo / Método | Tipo            | Descripción                                                          |
| -------- | ----------------- | --------------- | -------------------------------------------------------------------- |
| FoodItem | id                | string          | Identificador del alimento.                                          |
| FoodItem | name              | string          | Nombre del alimento.                                                 |
| FoodItem | nutrientContent   | NutrientContent | Información nutricional del alimento.                                |
| FoodItem | isInhibitor       | bool            | Indica si el alimento es inhibidor.                                  |
| FoodItem | category          | string          | Categoría del alimento.                                              |
| FoodItem | IsHemolron()      | bool            | Determina una característica relacionada con el hierro del alimento. |
| FoodItem | IsNonHemolron()   | bool            | Determina si corresponde a la categoría indicada de hierro.          |

**Enumerations**

| Enumeración       | Valores representados              | Descripción                                        |
| ----------------- | ---------------------------------- | -------------------------------------------------- |
| Role              | Mother, Nurse, Admin               | Define los roles de los usuarios de la plataforma. |
| TreatmentStatus   | Active, Completed, Abandoned       | Representa el estado del tratamiento.              |
| RiskLevel         | LOW, MEDIUM, HIGH                  | Representa el nivel de riesgo calculado.           |
| AnemiaStatus      | Mild, Moderate, Severe, Controlled | Representa el estado de anemia determinado.        |
| AchievementStatus | ACTIVE, COMPLETED, ABANDONED       | Representa el estado del logro.                    |



## 4.10. Database Design

El diseño de la base de datos de Ferova Platform define la estructura de almacenamiento necesaria para soportar las principales funcionalidades de la plataforma. Se utiliza un enfoque de base de datos NoSQL, permitiendo manejar información estructurada y documental asociada a los diferentes contextos funcionales del sistema.

La información se organiza de acuerdo con los principales dominios de la plataforma, incluyendo la gestión de usuarios, pacientes, tratamientos, establecimientos de salud, seguimiento nutricional, logros y recompensas, así como la comunicación entre los apoderados y el personal de salud.

Esta organización permite mantener los datos asociados a cada contexto de negocio y facilita su consulta y actualización desde los componentes correspondientes de la aplicación.

### 4.10.1. Relational/Non-Relational Database Diagram

El diagrama de base de datos representa la estructura de almacenamiento NoSQL utilizada por Ferova Platform. A diferencia de un modelo relacional tradicional basado exclusivamente en tablas y relaciones, el modelo utilizado permite representar información mediante documentos y colecciones, manteniendo los datos agrupados de acuerdo con las necesidades de cada contexto funcional.

**IAM**

El contexto IAM (Identity and Access Management) contiene la información necesaria para la identificación y gestión de acceso de los usuarios de la plataforma.

<br>

<div align ="center">
  <img src="../assets/img/chapter-IV/IAM-DATA-BASE-NOT-RELATIONAL.png">
</div>

<br>
La estructura está compuesta por:

| Colección           | Descripción                                                                                                                 |
| ------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `User`              | Almacena la información de los usuarios, incluyendo nombre, apellido, contraseña, DNI, correo, teléfono y rol.              |
| `Rol`               | Contiene los roles disponibles dentro de la plataforma.                                                                     |
| `password_recovery` | Almacena los códigos utilizados para la recuperación de contraseña, junto con su fecha de expiración y el usuario asociado. |

La colección User incluye información de auditoría relacionada con la creación y actualización de los registros.

**Patient Management**

El contexto Patient Management almacena la información correspondiente a los pacientes y sus registros médicos.

<br>

<div align ="center">
  <img src="../assets/img/chapter-IV/DIAGRMA DE BASE DE DATOS NO RELACIONAL PATIENT.png">
</div>

<br>

| Colección         | Descripción                                                                                                                                                                                 |
| ----------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `Patient`         | Almacena los datos personales y clínicos básicos del paciente, así como referencias a su madre/apoderada y personal de salud asignado.                                                      |
| `medical_records` | Contiene los registros médicos del paciente, incluyendo fecha, nivel de hemoglobina, peso, talla, sexo, motivo de consulta, observaciones, antecedentes, controles, síntomas y tratamiento. |

La información de medical_records permite mantener el historial asociado al seguimiento clínico de cada paciente.

**Treatment Tracking**

El contexto Treatment Tracking almacena la información relacionada con el seguimiento del tratamiento.

<br>

<div align ="center">
  <img src="../assets/img/chapter-IV/database-Treatment Tracking.png">
</div>

 <br>

| Colección     | Descripción                                                                                                                                                                     |
| ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `treatments`  | Almacena la información del tratamiento, paciente asociado, personal de salud responsable, suplemento, cantidad, frecuencia, duración, fechas, estado y métricas de adherencia. |
| `daily_doses` | Registra las dosis programadas, su fecha de confirmación, estado y horas transcurridas sin confirmación.                                                                        |
| `risk_scores` | Almacena la puntuación de riesgo del tratamiento, nivel de riesgo, fecha de cálculo y justificación.                                                                            |

La colección daily_doses permite registrar individualmente el cumplimiento de las dosis asociadas a un tratamiento.

**Health Facility**

El contexto Health Facility contiene la información necesaria para gestionar las postas o establecimientos de salud y las actividades relacionadas con ellos.

<br>

<div align ="center">
  <img src="../assets/img/chapter-IV/healytu facilty diagram database.png">
</div>

<br>

| Colección           | Descripción                                                                                                              |
| ------------------- | ------------------------------------------------------------------------------------------------------------------------ |
| `districts`         | Contiene los distritos utilizados para identificar la ubicación de los establecimientos.                                 |
| `health_facilities` | Almacena el nombre, dirección, distrito, coordenadas geográficas, horario de atención y estado del establecimiento.      |
| `appointments`      | Registra las citas de los pacientes, incluyendo establecimiento, paciente, apoderado, personal de salud, fecha y estado. |
| `nurse_assignments` | Registra la asignación del personal de salud a los establecimientos.                                                     |

La colección health_facilities incluye las coordenadas lat y lng, utilizadas para representar la ubicación geográfica de las postas.

**Achievements & Rewards**

El contexto Achievements & Rewards almacena la información asociada a los logros obtenidos durante el seguimiento del tratamiento.

<br>

<div align ="center">
  <img src="../assets/img/chapter-IV/database-diagrama-achievements-rewards.png">
</div>

<br>

| Colección     | Descripción                                                                                                  |
| ------------- | ------------------------------------------------------------------------------------------------------------ |
| `Achievement` | Registra los logros asociados al paciente y tratamiento, incluyendo rachas de cumplimiento, puntos y estado. |
| `badges`      | Contiene las insignias asociadas a los logros, incluyendo nombre, descripción, hito y estado de desbloqueo.  |


La información de Achievement permite registrar el progreso del paciente durante el tratamiento, mientras que badges representa los reconocimientos obtenidos.

**Nutritional Diary**

El contexto Nutritional Diary permite almacenar la información relacionada con el registro nutricional.

<br>

<div align ="center">
  <img src="../assets/img/chapter-IV/Nutritional_diary_diagram_database.png">
</div>

<br>


| Colección           | Descripción                                                                                                                                    |
| ------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------- |
| `nutritional_diary` | Almacena el diario nutricional asociado al paciente y apoderado, incluyendo fecha, hierro absorbido e identificación de alimentos inhibidores. |
| `food_entries`      | Registra los alimentos consumidos dentro de un diario nutricional, incluyendo cantidad, unidad y aporte de hierro.                             |
| `food_items`        | Contiene el catálogo de alimentos, su información nutricional, contenido de hierro, tipo de hierro, clasificación como inhibidor y categoría.  |

La relación entre nutritional_diary y food_entries permite registrar los alimentos consumidos durante cada registro nutricional.

**Communication**

El contexto Communication permite gestionar las consultas entre los apoderados y el personal de salud.

<br>

<div align ="center">
  <img src="../assets/img/chapter-IV/diagram data base comunication.png">
</div>

<br>

| Colección       | Descripción                                                                                                                                |
| --------------- | ------------------------------------------------------------------------------------------------------------------------------------------ |
| `consultations` | Almacena las consultas realizadas entre pacientes, apoderados y personal de salud, incluyendo estado, fecha de creación y fecha de cierre. |
| `messages`      | Almacena los mensajes pertenecientes a cada consulta, incluyendo remitente, rol del remitente, contenido y fecha de envío.                 |

En este contexto, los mensajes se encuentran asociados a una consulta específica mediante consultationId.
