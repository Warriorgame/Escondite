# HideGround v35 - Android BAT directo

Problema:
- El usuario seguía ejecutando una versión antigua 1.8.0.
- `scripts/android.mjs` fallaba en Windows con spawn EINVAL al ejecutar npm.cmd.

Solución:
- Añadidos BAT directos que no usan el wrapper Node para lanzar npm/npx/gradlew:
  - setup-android-directo.bat
  - compilar-apk-debug-directo.bat
- Añadido scripts/patch-android-only.mjs para aplicar permisos/iconos/nombre sin ejecutar comandos externos.
- Documentación actualizada.
