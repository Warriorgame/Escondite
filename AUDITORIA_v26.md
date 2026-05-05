# HideGround v26 - Fix spawn EINVAL en Windows

Problema:
- Ollama se instalaba correctamente.
- Gemma se descargaba correctamente.
- Fallaba al arrancar Vite con: spawn EINVAL.

Causa:
- En Windows, lanzar npm.cmd desde Node con spawn puede fallar según entorno/PowerShell/PATH.

Solución:
- En Windows, dev-with-gemma.mjs ahora arranca Vite mediante:
  cmd.exe /d /s /c "npm run dev"
- En Linux/Mac mantiene npm run dev directo.
- Añadido manejador de error claro si Vite no arranca.

Uso:
- Cierra el Vite viejo con Ctrl+C.
- Ejecuta npm run dev:ai.
