@ECHO OFF
docker volume create p2nData
docker build --no-cache --tag p2na:1.0 .
