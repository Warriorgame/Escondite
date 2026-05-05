# IA local dentro de APK: decisión técnica correcta

## Punto importante

Ollama NO se debe meter dentro de una APK de HideGround.

Ollama funciona como servidor local de escritorio. En Windows va bien porque HideGround puede llamar a `http://127.0.0.1:11434`, pero en Android eso no sirve igual:
- la APK no trae Ollama dentro;
- `127.0.0.1` sería el propio móvil;
- el usuario tendría que instalar otro servicio externo;
- en Play Store sería una solución mala y frágil.

## Solución correcta para APK

Para APK hay que cambiar el motor de IA a un runtime móvil nativo:

### Opción recomendada
Google AI Edge / MediaPipe LLM Inference API.

Modelo:
```txt
Gemma 3 1B .task / LiteRT
```

Ventajas:
- corre dentro del móvil;
- no necesita servidor externo;
- no necesita Ollama;
- se puede integrar como parte nativa Android;
- es la ruta correcta para una APK.

## Arquitectura futura

```txt
React/Capacitor UI
        ↓
Capacitor Plugin: HideGroundGemma
        ↓
Android Kotlin
        ↓
MediaPipe LLM Inference API
        ↓
Gemma 3 1B .task / LiteRT
```

## Estado actual de este ZIP

Para desarrollo en PC:
```bash
npm run dev:ai
```

Esto instala/arranca Ollama y usa:
```txt
gemma3:1b
```

Para APK futura:
- mantener la pantalla IA;
- sustituir `gemmaLocal.ts` por un puente Capacitor nativo;
- cargar Gemma 3 1B `.task`;
- responder desde Android sin Ollama.

## Conclusión

- PC: Ollama + `gemma3:1b`.
- APK: MediaPipe/LiteRT + Gemma 3 1B `.task`.
