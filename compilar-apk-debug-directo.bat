@echo off
setlocal
cd /d "%~dp0"

echo.
echo === Compilar APK debug HideGround directo ===
echo.

echo [1/5] Compilando web...
call npm run build
if errorlevel 1 goto error

echo.
echo [2/5] Creando proyecto Android si falta...
if not exist android (
  call npx cap add android
  if errorlevel 1 goto error
)

echo.
echo [3/5] Sincronizando Capacitor...
call npx cap sync android
if errorlevel 1 goto error

echo.
echo [4/5] Aplicando permisos, nombre e iconos...
call node .\scripts\patch-android-only.mjs
if errorlevel 1 goto error

echo.
echo [5/5] Compilando APK...
cd android
call gradlew.bat assembleDebug
if errorlevel 1 goto error

echo.
echo APK generado:
echo %CD%\app\build\outputs\apk\debug\app-debug.apk
pause
exit /b 0

:error
echo.
echo ERROR. Copia las ultimas 20 lineas y pasamelas.
pause
exit /b 1
