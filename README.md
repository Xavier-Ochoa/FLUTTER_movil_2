# 🌍 Sitios Turísticos — Flutter App

Aplicación móvil desarrollada con **Flutter** que muestra 10 sitios turísticos famosos del mundo, permite marcarlos como favoritos y ver su ubicación geográfica en Google Maps.

> **Autor:** Luis Xavier Ochoa Calle  
> **Versión:** 1.0.0+1  
> **SDK Dart:** ^3.12.1

---

## 📱 ¿Qué hace la app?

- Muestra **10 sitios turísticos** famosos del mundo con foto, nombre, ubicación, descripción y coordenadas geográficas.
- Puedes **marcar o desmarcar favoritos** tocando la estrella ⭐ de cada sitio. El contador en la barra superior se actualiza en tiempo real.
- Al tocar las **coordenadas** o el botón **ROUTE**, abre **Google Maps** directamente en la ubicación del sitio.
- Las fotos se cargan desde internet con indicador de carga.

---

## 🗺️ Sitios turísticos incluidos

| # | Sitio | País | Coordenadas |
|---|-------|------|-------------|
| 1 | Torre Eiffel | 🇫🇷 Francia | 48.8584, 2.2945 |
| 2 | Machu Picchu | 🇵🇪 Perú | -13.1631, -72.5450 |
| 3 | Coliseo Romano | 🇮🇹 Italia | 41.8902, 12.4922 |
| 4 | Gran Muralla China | 🇨🇳 China | 40.4319, 116.5704 |
| 5 | Taj Mahal | 🇮🇳 India | 27.1751, 78.0421 |
| 6 | Sagrada Familia | 🇪🇸 España | 41.4036, 2.1744 |
| 7 | Cataratas del Iguazú | 🇦🇷 Argentina | -25.6953, -54.4367 |
| 8 | Cristo Redentor | 🇧🇷 Brasil | -22.9519, -43.2105 |
| 9 | Petra | 🇯🇴 Jordania | 30.3285, 35.4444 |
| 10 | Mitad del Mundo | 🇪🇨 Ecuador | -0.0022, -78.4558 |

---

## 📸 Capturas de pantalla
<img width="200" height="554" alt="image" src="https://github.com/user-attachments/assets/2f151f69-2d0c-496c-bc9b-acc5e394b6db" />

> **¿Cómo agregar tus capturas?**
> 1. Corre la app en tu emulador o celular.
> 2. Toma capturas de pantalla.
> 3. Crea una carpeta llamada `screenshots/` en la raíz del proyecto.
> 4. Guarda las imágenes ahí y reemplaza esta sección con el bloque de abajo.

```
screenshots/
├── home.png          → Lista principal de sitios
├── favoritos.png     → Sitios marcados como favoritos
└── maps.png          → Redirección a Google Maps
```

Una vez tengas las capturas, reemplaza esta sección con:

```markdown
| Pantalla principal | Favoritos activos | Google Maps |
|---|---|---|
| ![Home](screenshots/home.png) | ![Favoritos](screenshots/favoritos.png) | ![Maps](screenshots/maps.png) |
```

---

## 🛠️ Tecnologías usadas

| Tecnología | Para qué sirve |
|---|---|
| Flutter | Framework principal de la app |
| Dart ^3.12.1 | Lenguaje de programación |
| Material Design 3 | Diseño visual de la interfaz |
| `url_launcher ^6.3.0` | Abrir Google Maps desde la app |
| `Image.network` | Cargar fotos desde internet |

---

## 🧩 Widgets del proyecto

La app usa tanto `StatelessWidget` como `StatefulWidget` según lo que necesita cada parte:

| Widget | Tipo | ¿Qué hace? |
|---|---|---|
| `MyApp` | `StatelessWidget` | Configura el tema y arranca la app |
| `TouristHomePage` | `StatefulWidget` | Maneja la lista de favoritos global |
| `ImageSection` | `StatelessWidget` | Muestra la foto del sitio desde internet |
| `TitleSection` | `StatelessWidget` | Muestra nombre, país y estrella de favorito |
| `FavoriteWidget` | `StatefulWidget` | Estrella animada que se activa al tocar |
| `ButtonSection` | `StatelessWidget` | Botones CALL, ROUTE y SHARE |
| `ButtonWithText` | `StatelessWidget` | Ícono + etiqueta de cada botón |
| `TextSection` | `StatelessWidget` | Descripción del sitio turístico |
| `GeoSection` | `StatelessWidget` | Coordenadas con enlace directo a Maps |

---

## 🚀 Cómo correr el proyecto

### Paso 1 — Requisitos previos

Asegúrate de tener instalado:
- [Flutter](https://docs.flutter.dev/get-started/install) (compatible con Dart ^3.12.1)
- Android Studio o VS Code con la extensión de Flutter
- Un emulador Android o un celular conectado

### Paso 2 — Clona el repositorio

```bash
git clone https://github.com/tu-usuario/flutter_application_1.git
cd flutter_application_1
```

### Paso 3 — Instala las dependencias

```bash
flutter pub get
```

### Paso 4 — Corre la app

```bash
flutter run
```

---

## ⚙️ Configuración adicional para Android

Para que Google Maps pueda abrirse desde la app, agrega este permiso en:

📄 `android/app/src/main/AndroidManifest.xml`

```xml
<manifest xmlns:android="...">

    <!-- Agregar esta línea -->
    <uses-permission android:name="android.permission.INTERNET"/>

    <application ...>
```

---

## 📂 Estructura del proyecto

```
flutter_application_1/
├── lib/
│   └── main.dart               ← Todo el código de la app
├── android/
│   └── app/src/main/
│       └── AndroidManifest.xml ← Agregar permiso INTERNET aquí
├── screenshots/                ← Crear esta carpeta y agregar tus capturas
│   ├── home.png
│   ├── favoritos.png
│   └── maps.png
├── pubspec.yaml                ← Dependencias del proyecto
└── README.md
```

---

## 📦 Dependencias — pubspec.yaml

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  url_launcher: ^6.3.0
```

---

## 👨‍💻 Autor

**Luis Xavier Ochoa Calle**  
Proyecto desarrollado con Flutter como parte del aprendizaje de desarrollo móvil.

---

## 📄 Licencia

Este proyecto es de uso educativo y personal.  
© 2025 Luis Xavier Ochoa Calle — Todos los derechos reservados.
