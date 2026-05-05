# HideGround v24 - Arreglo real de Gemma local

Problema detectado:
- La app sí llamaba a Gemma, pero Ollama no estaba arrancado.
- Por eso aparecía:
  - /ollama/api/chat 500
  - 127.0.0.1:11434/api/chat ERR_CONNECTION_REFUSED

Cambios:
- Eliminado intento directo del navegador a 127.0.0.1:11434 para evitar doble error en consola.
- La IA usa solo el proxy /ollama/api/chat.
- Añadido npm run dev:ai.
- Añadido scripts/dev-with-gemma.mjs.
- El script arranca Ollama, descarga gemma3:1b si falta y luego arranca HideGround.
- Añadido iniciar-hideground-con-ia.bat.
- Añadido iniciar-hideground-con-ia.sh.
- Actualizado IA_LOCAL_GEMMA.md.
- .env y .env.example mantienen VITE_GEMMA_MODEL y VITE_OLLAMA_URL.

Uso correcto:
- Ejecutar npm run dev:ai
- No npm run dev si quieres IA local real funcionando automáticamente.
