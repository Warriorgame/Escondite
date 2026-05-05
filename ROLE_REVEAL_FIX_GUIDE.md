# Corrección concreta de `RoleReveal.tsx`

El crash viene de esto:

```ts
room.settings.koAfterSeconds
```

Si `room` o `settings` llega como `undefined`, React revienta. La solución correcta es doble:

1. No lanzar error sin control cuando Supabase devuelve 400.
2. Normalizar `settings` antes de pintar la pantalla.

## Cambios mínimos

Arriba de `src/pages/RoleReveal.tsx`, añade:

```ts
import { DEFAULT_ROOM_SETTINGS, normalizeRoomSettings } from '@/lib/roomDefaults';
```

Busca la consulta a Supabase que sea parecida a:

```ts
const { data, error } = await supabase
  .from('rooms')
  .select('*')
  .eq('code', code)
  .single();
```

Cámbiala por:

```ts
const { data, error } = await supabase
  .from('rooms')
  .select('*')
  .eq('code', String(code || '').trim().toUpperCase())
  .maybeSingle();

if (error) {
  console.error('[HideGround] No se pudo cargar la sala:', error);
  setRoom(null);
  setLoading(false);
  return;
}

if (!data) {
  console.warn('[HideGround] Sala no encontrada');
  setRoom(null);
  setLoading(false);
  return;
}

setRoom({
  ...data,
  settings: normalizeRoomSettings(data.settings),
});
```

Busca la línea que use:

```ts
room.settings.koAfterSeconds
```

Y cámbiala por:

```ts
(room?.settings?.koAfterSeconds ?? DEFAULT_ROOM_SETTINGS.koAfterSeconds)
```

Si tienes una variable `settings`, usa:

```ts
const safeSettings = normalizeRoomSettings(room?.settings);
```

Y después:

```ts
safeSettings.koAfterSeconds
```

## Resultado

- Si Supabase devuelve 400, ya no se rompe la pantalla.
- Si `settings` está vacío, se usa `koAfterSeconds: 60`.
- Si la sala no existe, se muestra estado controlado en vez de pantalla blanca.
