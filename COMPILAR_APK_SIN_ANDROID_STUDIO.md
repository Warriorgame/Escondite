# Compilar APK sin Android Studio

Este ZIP está preparado para compilar el APK en la nube usando GitHub Actions.

No necesitas Android Studio en tu PC.
No necesitas Android SDK en tu PC.
No necesitas permisos de administrador para compilar.

## Pasos

### 1. Crea un repositorio en GitHub

Crea un repositorio nuevo, por ejemplo:

```txt
hideground-apk
```

### 2. Sube el contenido de la carpeta `escondite`

Debe quedar así en la raíz del repositorio:

```txt
package.json
src/
public/
scripts/
.github/workflows/build-apk.yml
capacitor.config.ts
```

No subas una carpeta padre que deje `escondite/package.json` dentro. El `package.json` debe estar en la raíz.

### 3. Ejecuta la compilación

En GitHub:

```txt
Actions → Build HideGround APK → Run workflow
```

### 4. Descarga el APK

Cuando termine:

```txt
Actions → última ejecución → Artifacts → HideGround-debug-apk
```

Dentro estará:

```txt
app-debug.apk
```

## Qué hace automáticamente

1. Instala Node.
2. Instala Java.
3. Ejecuta `npm install`.
4. Ejecuta `npm run build`.
5. Crea el proyecto Android con Capacitor.
6. Aplica permisos, iconos y nombre HideGround.
7. Compila el APK debug.
8. Lo deja descargable como artifact.

## APK generado

```txt
android/app/build/outputs/apk/debug/app-debug.apk
```

## Importante

Este APK debug sirve para pruebas en móvil.

Para publicar en Play Store hará falta:
- release firmado,
- revisión legal/privacidad,
- permisos revisados,
- idealmente build AAB.
