@echo off
echo =====================================
echo   Acai Delivery - Git Push
echo =====================================
echo.

cd /d "%~dp0"

echo Atualizando arquivos...
git add index.html

echo.
set /p msg="Digite a mensagem do commit (ou pressione Enter para padrao): "
if "%msg%"=="" set msg=Atualizacao do site

git commit -m "%msg%"

echo.
echo Enviando para o GitHub...
git push

echo.
echo =====================================
echo   Concluido!
echo =====================================
echo.
pause
