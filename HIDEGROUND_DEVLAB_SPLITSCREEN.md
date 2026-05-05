# HideGround DevLab Split Screen

Ruta: `/dev-tools`

## Funciones añadidas

- Crear/resetear sala de test.
- Elegir número de jugadores: 2, 3, 4, 5, 6, 8, 10 o 12.
- Dividir pantalla en 1, 2, 3, 4, 6, 9 o 12 vistas.
- Cada vista usa un `devPlayerId` distinto, por lo que se pueden probar varias cuentas desde el mismo PC.
- Cambiar rol por jugador: buscador, escondido, infiltrado o espectador.
- Cambiar estado: alive, captured o eliminated.
- Cambiar posición GPS manualmente con lat/lng.
- Mover jugadores con botones ↑ ↓ ← → en pasos de 10 metros.
- Sincronizar jugador individual o todos.
- Cambiar fase de partida desde el panel.
- Ver logs internos del panel.

## Uso rápido

1. Abrir `http://127.0.0.1:5173/dev-tools`.
2. Pulsar `Crear/reset sala`.
3. Ajustar jugadores, roles y posiciones.
4. Elegir fase `lobby`, `role-reveal`, `hiding` o `active`.
5. Cambiar pantallas visibles para probar varios jugadores a la vez.

## Nota técnica

Se parcheó `getPlayerId()` para aceptar `?devPlayerId=...` y `?devName=...`. También las pantallas principales aceptan `?devRoomCode=...`, para que cada iframe pueda entrar como un usuario distinto sin pelearse con el mismo localStorage.
