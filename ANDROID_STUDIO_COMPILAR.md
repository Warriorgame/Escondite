# HideGround Android Studio / APK

## Ruta recomendada en Windows

Para evitar errores `spawn EINVAL`, usa los BAT directos:

```txt
setup-android-directo.bat
```

Para compilar APK debug:

```txt
compilar-apk-debug-directo.bat
```

## Comandos manuales equivalentes

Desde la carpeta `escondite`:

```powershell
npm install
npm run build
npx cap add android
npx cap sync android
node .\scripts\patch-android-only.mjs
npx cap open android
```

Para compilar APK:

```powershell
npm run build
npx cap sync android
node .\scripts\patch-android-only.mjs
cd android
.\gradlew.bat assembleDebug
```

APK generado:

```txt
android\app\build\outputs\apk\debug\app-debug.apk
```

## No copies salidas de consola

En PowerShell solo pegues comandos, no pegues líneas que empiezan por:

```txt
PS C:\...
>
npm warn...
added...
ERROR...
```

Eso son salidas, no comandos.

## Package ID

```txt
com.hideground.app
```

## Nombre app

```txt
HideGround
```
