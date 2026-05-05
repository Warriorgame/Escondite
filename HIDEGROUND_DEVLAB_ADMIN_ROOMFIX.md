# HideGround DevLab Admin + Room Fix

## Arreglado

- Eliminados los avisos repetidos de React Router v7 añadiendo los `future flags` al `BrowserRouter`.
- Filtrado del mensaje informativo de React DevTools en consola durante desarrollo.
- Eliminados los `406` de Supabase al consultar salas vacías: se sustituyeron consultas `maybeSingle()` por consultas normales con `limit(1)`.
- `DevLab` ya crea/autocrea la sala `TEST01` sin depender de una consulta singular que genera error visual en Network.
- Creación/reset de sala más robusta: usa `upsert` mínimo de sala y luego aplica datos extra.
- Panel admin añadido/reforzado:
  - Dar XP a un jugador.
  - Dar monedas a un jugador.
  - Fijar nivel.
  - Dar stats demo.
  - Maxear jugador.
  - Dar XP a todos.
  - Dar monedas a todos.
  - Maxear todos los jugadores.

## Uso recomendado

1. Abrir `/dev-tools`.
2. Crear/reset sala.
3. Aplicar jugadores.
4. Usar Admin / recompensas para probar ligas, tienda, poderes, títulos y progresión.

## Nota

Si Supabase remoto no tiene todas las migraciones aplicadas, funciones como `match_powers`, iconos, títulos o infiltrado pueden fallar por columnas/constraints antiguas. Las migraciones están incluidas en `supabase/migrations`.
