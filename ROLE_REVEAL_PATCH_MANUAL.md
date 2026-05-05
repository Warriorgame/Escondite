# Parche manual obligatorio si el script no toca RoleReveal.tsx completo

El error real viene de dos cosas:

1. Supabase devuelve error 400 en la consulta `rooms?code=eq.TEST01`.
2. `RoleReveal.tsx` no controla ese error y luego intenta leer `room.settings.koAfterSeconds` cuando `room` o `settings` es `undefined`.

## Cambia esto

```ts
const { data, error } = await supabase
  .from('rooms')
  .select('*')
  .eq('code', code)
  .single();

if (error) throw error;
setRoom(data);
```

## Por esto

```ts
import { getRoomByCodeSafe } from '@/lib/supabaseRooms';
import { DEFAULT_ROOM_SETTINGS, normalizeRoomSettings } from '@/lib/roomDefaults';

const { room, error } = await getRoomByCodeSafe(supabase, code);

if (error) {
  console.error('[HideGround] No se pudo cargar la sala:', error);
  setError?.('No se pudo cargar la sala. Revisa la configuración de Supabase.');
  return;
}

if (!room) {
  setError?.('No existe una sala con ese código.');
  return;
}

setRoom({
  ...room,
  settings: normalizeRoomSettings(room.settings),
});
```

## Cambia cualquier lectura peligrosa

```ts
room.settings.koAfterSeconds
```

por:

```ts
room?.settings?.koAfterSeconds ?? DEFAULT_ROOM_SETTINGS.koAfterSeconds
```

## Importante

`.single()` revienta si no hay fila exacta. Para salas por código usa `.maybeSingle()` o `getRoomByCodeSafe()`.
