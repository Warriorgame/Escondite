# HideGround fix v2

Corrige:

- Favicon/icono del juego.
- Separación del tutorial y permisos.
- Crash de `RoleReveal.tsx` por `settings.koAfterSeconds` undefined.
- Error no controlado `Uncaught (in promise) Object`.
- Base SQL para arreglar `rooms?code=eq.TEST01` con Supabase.

## Aplicar archivos al proyecto

Desde la raíz del proyecto React/Vite:

```bash
node /RUTA_DEL_ZIP_DESCOMPRIMIDO/scripts/apply-hideground-fixes-v2.cjs
npm run build
npm run dev
```

## Arreglar Supabase

En Supabase > SQL Editor ejecuta:

```txt
supabase/supabase_fix_rooms_v2.sql
```

Si sigue el 400, ejecuta:

```txt
supabase/supabase_diagnose_rooms.sql
```

y mira si `rooms.code` no es `text`, si no existe, o si hay políticas raras.

## Separar tutorial/permisos

Lee:

```txt
SEPARAR_TUTORIAL_PERMISOS.md
```

El script copia los componentes, pero no fuerza el cambio de rutas porque cada App.tsx puede estar montado distinto.

## RoleReveal

Si el script no lo deja perfecto, aplica el cambio de:

```txt
ROLE_REVEAL_PATCH_MANUAL.md
```
