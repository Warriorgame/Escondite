# HideGround v23 - IA local real con Gemma

Cambios:
- Eliminado el asistente puramente simulado/reglas como motor principal.
- Añadido src/lib/gemmaLocal.ts.
- IA local llama realmente a Ollama.
- Modelo oculto por defecto: gemma3:1b.
- Añadido proxy Vite /ollama -> http://127.0.0.1:11434.
- Añadido contexto de sistema completo de HideGround.
- Añadido historial reciente para contexto entre mensajes.
- La IA mantiene estilo resumido/normal/detallado.
- Si el tema no es HideGround, bloquea la respuesta.
- Si Ollama no está disponible, muestra aviso y comando de instalación.
- Añadido IA_LOCAL_GEMMA.md con instalación.
- .env y .env.example actualizados con VITE_GEMMA_MODEL y VITE_OLLAMA_URL.
