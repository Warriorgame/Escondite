# HideGround fix v5 - presentación XP

Cambios aplicados en `src/pages/MatchIntro.tsx`:

- Se elimina el bloque de emoji aleatorio de la tarjeta de presentación.
- El icono del jugador pasa a ser el elemento principal de la tarjeta.
- Debajo del icono se muestra el rango/liga y el nivel del jugador.
- Debajo se muestra el nombre del jugador.
- El título del jugador aparece abajo en una franja dorada llamativa.
- Arriba a la derecha aparece `#<posición>` con el ranking global por XP.
- Se consulta `total_xp` desde `profiles` y se calcula el ranking de XP con los perfiles ordenados por `total_xp`.

Validación realizada:

- `tsc --noEmit --pretty false` ejecutado correctamente.
- Búsqueda estática: no quedan emojis decorativos ni imports `Shield`/`Sparkles` en `MatchIntro.tsx`.

Nota:

- `npm run build` no se pudo completar en este entorno porque este ZIP no incluye `node_modules` y aquí no está disponible `vite` local. En tu máquina, ejecuta `npm install` y luego `npm run build`.
