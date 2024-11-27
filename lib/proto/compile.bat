@echo off

set DART_PROTOC_GEN=%USERPROFILE%\AppData\Local\Pub\Cache\bin\protoc-gen-dart.bat

if not exist "%DART_PROTOC_GEN%" (
  echo protoc-gen-dart non trovato, assicurati che sia installato e nel PATH.
  exit /b 1
)

protoc --plugin=protoc-gen-dart=%DART_PROTOC_GEN% --dart_out=grpc:. -I. lib\proto\config.proto

if %errorlevel% neq 0 (
  echo protoc compilation failed.
  exit /b 1
)

echo protoc compilation succeeded.
