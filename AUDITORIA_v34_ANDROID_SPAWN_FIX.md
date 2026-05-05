# HideGround v34 - Fix Android setup spawn EINVAL en Windows

Problema:
- En Windows, `node ./scripts/android.mjs setup` fallaba en:
  npm.cmd run build
  con `spawn EINVAL`.

Causa:
- Windows puede fallar al ejecutar `.cmd` / `.bat` directamente desde `spawn` en algunos entornos de PowerShell/PATH.

Solución:
- El script Android ahora ejecuta npm/npx/gradlew.bat mediante:
  cmd.exe /d /s /c ...
- También se ajustó gradlew a `.\gradlew.bat`.

Comando:
npm run android:setup
