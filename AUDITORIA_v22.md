# HideGround v22 - Llamadas configuradas

Cambios:
- Añadido src/lib/turnConfig.ts con configuración ICE centralizada.
- TURN configurado por defecto con fallback OpenRelay para que no aparezca "TURN no configurado".
- Soporte para VITE_TURN_URLS, VITE_TURN_USERNAME y VITE_TURN_CREDENTIAL.
- .env y .env.example actualizados con TURN.
- VoiceCallButton ahora pasa maxPeers correctamente al hook.
- VoiceCallButton respeta autoJoinCall y defaultMuted de ajustes.
- Añadido botón de reintento si la llamada falla.
- useVoiceCall ahora crea audios remotos ocultos en DOM y respeta callVolume.
- Se mantiene STUN + TURN + ICE restart.
