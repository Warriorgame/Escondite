# Separar tutorial de permisos

El ZIP añade estos archivos:

- `src/components/onboarding/TutorialScreen.tsx`
- `src/components/onboarding/PermissionsScreen.tsx`
- `src/components/onboarding/OnboardingRouter.tsx`

## Integración recomendada

En `src/App.tsx`, envuelve tus rutas así:

```tsx
import { OnboardingRouter } from '@/components/onboarding/OnboardingRouter';
import { ErrorBoundary } from '@/components/ErrorBoundary';

export default function App() {
  return (
    <ErrorBoundary>
      <OnboardingRouter>
        {/* Aquí van tus Routes actuales */}
      </OnboardingRouter>
    </ErrorBoundary>
  );
}
```

Resultado:

1. Primero sale el tutorial.
2. Al terminar, sale la pantalla de permisos.
3. Después entra al juego.

Ya no se pide cámara/micro/notificaciones dentro del tutorial.

## Reset para probar

En consola del navegador:

```js
localStorage.removeItem('hideground_tutorial_done');
localStorage.removeItem('hideground_permissions_done');
location.reload();
```
