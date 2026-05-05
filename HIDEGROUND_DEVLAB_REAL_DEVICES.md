# DevLab Real Devices

Esta versión cambia el DevLab para que las pantallas divididas no sean una maqueta local.

## Qué significa "real"

Cada iframe/dispositivo usa:

- `devPlayerId` propio.
- `devRoomCode` propio.
- `window.name` para mantener identidad aunque React Router cambie de ruta.
- `rooms`, `players`, `profiles`, `events`, `messages` y `photos` reales en Supabase.
- Perfil real por jugador, con XP/monedas/nivel/poderes editables desde el panel admin.

## Problema que arregla

Antes, cuando una pantalla navegaba dentro de la app podía perder los query params. Al perderlos, volvía al jugador de `localStorage`, y varias pantallas acababan actuando como el mismo dispositivo.

Ahora cada pantalla conserva su identidad incluso si pasa por:

- Home
- Lobby
- Role Reveal
- Hiding
- Active Game
- Profile
- Settings

## Uso recomendado

1. Entra en `/dev-tools`.
2. Pulsa `Crear/reset sala`.
3. Configura roles, estado y GPS.
4. Pulsa `Aplicar jugadores`.
5. Elige `Qué abre cada dispositivo`:
   - `Ruta automática según fase real`: test de partida.
   - `Home real del dispositivo`: test del flujo completo.
   - `Perfil del jugador`: probar tienda/recompensas.
6. Usa `Abrir` para sacar un dispositivo a una pestaña separada.

## Importante

Esto sigue siendo DevLab, pero ahora manipula datos reales de Supabase. No uses códigos de sala reales de producción para hacer resets.
