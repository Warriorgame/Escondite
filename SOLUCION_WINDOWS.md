# HideGround — solución Windows localhost

## Problema que te salió

1. `cd urban-hideaway-main` falló porque estabas ya dentro de la carpeta donde se extrajo el proyecto.
2. `npm install` intentó descargar desde un registry interno raro:
   `packages.applied-caas-gateway1.internal.api.openai.org`
3. Como no instaló dependencias, `vite` no existía y por eso `npm run localhost` falló.

## Solución rápida

Desde PowerShell, dentro de la carpeta del proyecto:

```powershell
npm config set registry https://registry.npmjs.org/
npm config delete proxy
npm config delete https-proxy
Remove-Item -Recurse -Force node_modules -ErrorAction SilentlyContinue
Remove-Item -Force package-lock.json -ErrorAction SilentlyContinue
npm cache clean --force
npm install --registry=https://registry.npmjs.org/
npm run localhost
```

O usa directamente:

```powershell
powershell -ExecutionPolicy Bypass -File .\RUN_LOCALHOST_WINDOWS.ps1
```

Abre:

```text
http://127.0.0.1:5173
```
