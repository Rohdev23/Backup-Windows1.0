@echo off
::Criado por; Rodrigo Albuquerque
::Backup de Arquivos Windows 2.0
mode con: lines=30 cols=60
color 1f
title Backup Windows 2.0
set uni=f: d: e: g: h: 
:retorno
echo.
echo   		  +-----------------+
echo   		  + Backup Arquivos +
echo   		  +-----------------+
echo.
echo.
set /p "unidade=-Digite a letra da unidade, exemplos> g: / d: "
::Laço For para comparação... 
for %%a in (%uni%) do ( if /i %unidade%== %%a goto inicio)
::continua caso a unidade esteja errada e retorna!!!
echo.
echo -Unidade errada, tente novamente!!!
pause> nul
cls
goto retorno
::Escolha a opção
:inicio
cls
echo.
echo              +=------------+-----------=+
echo              +   1: Backup + Imagens    +
echo              +   2: Backup + Videos     +
echo              +   3: Backup + Documentos +
echo              +   4: Backup + Musicas    +
echo              +   5: Backup + Downloads  +
echo              +--------------------------+
echo              +-------------+------------+
echo              +   6: Trocar unidade      +
echo              +--------------------------+
echo              +   7: Sair                + 
echo              +=------------+-----------=+
echo.
choice /c "1234567" /n /m "-Digite>"
goto %errorlevel%
:1
xcopy %userprofile%\Pictures\*.* %unidade% /s /e /y
	goto inicio
:2
xcopy %userprofile%\Videos\*.* %unidade% /s /e /y
	goto inicio 
:3
xcopy %userprofile%\Documents\*.* %unidade% /s /e /y
	goto inicio
:4
xcopy %userprofile%\Music\*.* %unidade% /s /e /y
	goto inicio
:5
xcopy %userprofile%\Downloads\*.* %unidade% /s /e /y
	goto inicio
:6
 cls
   goto retorno
:7
	exit
pause >nul
