1. Criar uma network Docker isolada

docker network create app-net

2. Construir as imagens

docker build -t backend-teste   ./backend
docker build -t frontend-teste  ./frontend

3. Subir os containers

docker run -d \
--name backend \
--network app-net \
-p 8080:8080
backend

docker run -d \
--name frontend \
--network app-net \
-e BACKEND=http://backend:8080
-p 8080:8080 \
frontend

4. Verificar a conectividade com o backend

docker logs -f frontend# test-container-backend-frontend
