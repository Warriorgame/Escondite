# HideGround v32 - Captura por choque de móviles

Cambio principal:
- Para pillar/capturar ya no basta con estar cerca por GPS.
- La captura real se confirma tras chocar/tocar los dos móviles.

Cambios aplicados:
- manualCapture pasa a estar activo por defecto.
- El host engine ya no captura automáticamente por radio GPS cuando manualCapture está activo.
- En ActiveGame, el buscador tiene botón "Chocar móviles".
- El panel explica: hay que chocar/tocar ambos móviles y elegir jugador.
- La captura registra evento con method: mobile_bump.
- Se usa capturePlayer, no eliminatePlayer.
- Se añade recompensa de partida por "Captura por choque".
- Se muestra distancia aproximada al objetivo para evitar capturas a distancia.
- Se bloquea si está demasiado lejos salvo DevLab.
- Configuración y tutorial actualizados.
- IA entrenada para explicar que el GPS ayuda a encontrar, pero pillar se hace chocando/tocando móviles.
- DevLab usa manualCapture true.
