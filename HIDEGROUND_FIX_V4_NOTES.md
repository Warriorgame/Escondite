# HideGround fix v4

- Tutorial y permisos quedan separados.
- Al terminar el tutorial se vuelve a Inicio; no se fuerza la pantalla de permisos.
- El menú ya no usa “Cómo jugar”: ahora hay `Tutorial` y `Permisos`.
- DevLab simula dispositivos diferentes con `devPlayerId` + `window.name`, así no se convierten todos en el mismo jugador al navegar.
- DevLab puede abrir Inicio, Crear, Unirme, Lobby, RoleReveal, ActiveGame, etc. La app sigue siendo la app normal dentro de cada pantalla.
- DevLab permite añadir/quitar pantallas y elegir rol por jugador.
- Eliminado `upsert(... onConflict: 'id')` en players; sustituido por update/insert seguro para evitar 409.
- `RoleReveal` ya no deja promesas sin capturar y tiene fallback para DevLab.
- Favicon actualizado con el icono entregado.

Si Supabase sigue devolviendo 400/409, ejecutar `supabase/supabase_hideground_repair_v4.sql`.
