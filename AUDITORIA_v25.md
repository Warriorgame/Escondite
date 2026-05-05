# HideGround v25 - Instalador Gemma/Ollama y ruta APK

Cambios:
- npm run dev:ai ahora intenta instalar Ollama automáticamente en Windows usando winget.
- Si Ollama ya existe, lo detecta aunque no esté en PATH.
- Busca ollama.exe en rutas típicas de Windows.
- Arranca ollama serve si no está activo.
- Descarga gemma3:1b si falta.
- Arranca HideGround cuando Gemma ya está listo.
- Añadido APK_IA_LOCAL_GEMMA.md.
- Se deja claro que para APK no se debe usar Ollama; la ruta correcta es MediaPipe/LiteRT con Gemma 3 1B .task.
