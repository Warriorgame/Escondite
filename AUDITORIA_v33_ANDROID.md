# HideGround v33 - Android Studio ready

Cambios:
- Proyecto preparado para Android Studio con Capacitor.
- Capacitor config ajustado a producción Android:
  - appId: com.hideground.app
  - appName: HideGround
  - webDir: dist
  - sin server.url localhost
- Añadida dependencia @capacitor/android.
- Añadidos scripts:
  - android:setup
  - android:open
  - android:sync
  - android:debug
  - android:release
- Añadido scripts/android.mjs.
- El script crea/sincroniza android, parchea AndroidManifest.xml, pone permisos, iconos y nombre de app.
- Añadidos iconos Android en android-assets.
- Añadidos resources/icon.png y resources/splash.png.
- Añadidos BATs:
  - abrir-android-studio.bat
  - compilar-apk-debug.bat
- Añadido ANDROID_STUDIO_COMPILAR.md.

Comando recomendado:
npm install
npm run android:setup
npm run android:debug
