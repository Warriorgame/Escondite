# HideGround DevLab Admin Fix

## Cambios

- DevLab ahora tiene panel Admin para dar XP, monedas, nivel, estadísticas, cosméticos y poderes.
- Se corrigió el error 406 de Supabase cambiando consultas `.single()` de salas a `.maybeSingle()`.
- Se corrigió el error 400 al crear sala DevLab: `shrink_phases` ya no se envía como array, sino como número.
- DevLab autocrea la sala si intentas sincronizar jugadores o cambiar fase antes de crearla.
- Código de sala limitado a 6 caracteres alfanuméricos para cumplir la restricción de Supabase.
- React Router ya usa los future flags de v7 para eliminar los warnings repetidos.
- Se silencia el aviso informativo de React DevTools en consola.

## Uso recomendado

1. Abrir `/dev-tools`.
2. Pulsar `Crear/reset sala`.
3. Pulsar `Aplicar jugadores`.
4. Usar el bloque `Admin / recompensas` para dar XP, monedas, nivel o maxear un jugador.
5. Cambiar fase y probar la pantalla dividida.
