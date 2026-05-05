@echo off
setlocal
cd /d "%~dp0"

echo.
echo === HideGround Android directo ===
echo.

echo [1/6] Instalando dependencias...
call npm install
if errorlevel 1 goto error

echo.
echo [2/6] Compilando web...
call npm run build
if errorlevel 1 goto error

echo.
echo [3/6] Creando proyecto Android si falta...
if not exist android (
  call npx cap add android
  if errorlevel 1 goto error
)

echo.
echo [4/6] Sincronizando Capacitor...
call npx cap sync android
if errorlevel 1 goto error

echo.
echo [5/6] Aplicando permisos, nombre e iconos...
call node .\scripts\patch-android-only.mjs
if errorlevel 1 goto error

echo.
echo [6/6] Abriendo Android Studio...
call npx cap open android

echo.
echo LISTO. Si quieres APK por terminal ejecuta:
echo compilar-apk-debug-directo.bat
pause
exit /b 0

:error
echo.
echo ERROR. Copia las ultimas 20 lineas y pasamelas.
pause
exit /b 1
