# HideGround v27 - Gemma velocidad y texto de carga

Cambios:
- Texto de carga cambiado:
  - Antes: Gemma está pensando...
  - Ahora: HideGround está comprobando la respuesta...
- Prompt de sistema reducido para que Gemma responda más rápido.
- num_ctx reducido a 2048.
- num_predict reducido:
  - resumido: 55
  - normal: 90
  - detallado: 140
- Timeout de respuesta reducido a 15 segundos.
- dev:ai ahora precarga Gemma en memoria antes de abrir Vite.
- Si Gemma tarda demasiado, la app devuelve una respuesta fallback y no se queda colgada.
