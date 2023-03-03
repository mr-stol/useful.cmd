:start
  @echo off
  echo Useful alpha 1
  if not "%local%"=="" (
    set local=%cd%
  )
:main
  set previos=%command%
  set /p command=^^w^^ %cd%^>
  if "%previos%"=="%command%" (
    dir /p /w
    goto main
  )
  if "%command:~0,1%"=="\" (
    cd .%command%
    goto main
  )
  %command%
  goto main
:end