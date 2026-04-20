@echo off
echo ===========================================
echo   INICIANDO PUBLICACAO DO SITE GD PREMIUM
echo ===========================================
echo.

:: Configurando identidade temporaria para o Git
git config --local user.email "nicol@exemplo.com"
git config --local user.name "Nicol"

echo Inicializando Git...
git init
echo Adicionando arquivos...
git add .
echo Criando versao do site...
git commit -m "Site GD Premium Final - Cinematic"

echo Conectando ao GitHub...
git remote remove origin >nul 2>&1
git remote add origin https://github.com/guellesdelgado-creator/gdcompany.git
git branch -M main

echo Enviando para o GitHub...
git push -u origin main --force

echo.
echo ===========================================
echo   PROCESSO CONCLUIDO! 
echo   Seu site deve estar no ar em instantes.
echo ===========================================
pause
