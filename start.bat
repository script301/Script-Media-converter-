@echo off
chcp 65001 >nul
color 0A
setlocal enabledelayedexpansion

:: Define a pasta de entrada e saída
set "INPUT_DIR=input"
set "OUTPUT_DIR=output"

:: Verifica se a pasta de entrada existe
if not exist "%INPUT_DIR%" (
    echo Pasta 'input' não encontrada. Criando agora...
    mkdir "%INPUT_DIR%"
    echo.
    echo Coloque os vídeos na pasta 'input' e reinicie o conversor.
    pause
    exit /b
)

:: Cria pasta de saída se não existir
if not exist "%OUTPUT_DIR%" (
    mkdir "%OUTPUT_DIR%"
)

:: Cabeçalho bonito
echo =====================================================
echo            SCRIPT_NZA MIDIA-CONERSOR
echo =====================================================
echo.

:: Lista os arquivos encontrados
echo Vídeos encontrados na pasta 'input':
echo.
set /a count=0
for %%f in ("%INPUT_DIR%\*.*") do (
    set /a count+=1
    echo [!count!] %%~nxf
)
if !count! EQU 0 (
    echo Nenhum vídeo encontrado na pasta 'input'.
    pause
    exit /b
)

echo.
echo Formatos disponíveis para conversão:
echo [1] mp4
echo [2] mkv
echo [3] avi
echo [4] mov
echo [5] webm
set /p format_choice="Escolha o formato de saída [1-5]: "

:: Mapeia a escolha
if "%format_choice%"=="1" set "EXT=mp4"
if "%format_choice%"=="2" set "EXT=mkv"
if "%format_choice%"=="3" set "EXT=avi"
if "%format_choice%"=="4" set "EXT=mov"
if "%format_choice%"=="5" set "EXT=webm"

if not defined EXT (
    echo Formato inválido. Encerrando.
    pause
    exit /b
)

echo.
echo Iniciando conversão para formato %EXT%...
echo.

:: Loop de conversão
for %%f in ("%INPUT_DIR%\*.*") do (
    set "filename=%%~nf"
    echo Convertendo: %%~nxf
    ffmpeg -i "%%f" "%OUTPUT_DIR%\!filename!.%EXT%" -y
    echo.
)

echo =====================================================
echo Todas as conversões foram concluídas!
echo Arquivos salvos na pasta 'output'.
echo =====================================================
pause
