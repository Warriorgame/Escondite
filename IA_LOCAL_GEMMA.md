# IA local real de HideGround con Gemma

La IA local usa **Gemma 3 1B** mediante **Ollama**.

## Forma recomendada

En vez de `npm run dev`, usa:

```bash
npm run dev:ai
```

Ese comando hace esto:

1. Comprueba que Ollama existe.
2. Arranca `ollama serve` si no está activo.
3. Descarga `gemma3:1b` si falta.
4. Arranca HideGround.
5. Conecta la pantalla de IA a `/ollama/api/chat`.

## Windows

Doble clic:

```txt
iniciar-hideground-con-ia.bat
```

## Linux / Mac

```bash
./iniciar-hideground-con-ia.sh
```

## Comandos manuales

```bash
ollama pull gemma3:1b
ollama serve
npm run dev
```

## Por qué antes fallaba

El navegador intentaba llamar a Ollama, pero Ollama no estaba iniciado:

```txt
127.0.0.1:11434/api/chat ERR_CONNECTION_REFUSED
```

Ahora la app incluye un arranque automático para evitar ese error usando:

```bash
npm run dev:ai
```

## Modelo

```txt
gemma3:1b
```

En Ollama viene cuantizado para ejecutarse localmente.
