# Teste de Contêineres Backend e Frontend

Este projeto demonstra uma arquitetura simples com um contêiner de backend e um de frontend que se comunicam através de uma rede Docker dedicada.

O frontend é configurado dinamicamente no momento da inicialização para apontar para a URL do backend através de uma variável de ambiente.

## Como Executar

### 1. Criar a Rede Docker

Primeiro, crie uma rede Docker isolada para que os contêineres possam se comunicar pelo nome.

```bash
docker network create app-net
```

### 2. Construir as Imagens

Construa as imagens Docker para o backend e o frontend.

```bash
# Construir a imagem do backend
docker build -t backend-teste ./backend

# Construir a imagem do frontend
docker build -t frontend-teste ./frontend
```

### 3. Iniciar os Contêineres

Inicie o contêiner do backend primeiro e, em seguida, o do frontend, garantindo que ambos estejam na mesma rede.

```bash
# Iniciar o contêiner do backend
docker run -d \
  --name backend \
  --network app-net \
  backend-teste

# Iniciar o contêiner do frontend
docker run -d \
  --name frontend \
  --network app-net \
  -e BACKEND_URL="http://backend:8080" \
  -p 8080:8080 \
  frontend-teste
```
**Nota:** A variável de ambiente `BACKEND_URL` é usada para injetar a URL do serviço de backend no frontend no momento da inicialização.

### 4. Verificar o Funcionamento

Você pode acessar o frontend no seu navegador em `http://localhost:8080`.

Para verificar os logs do frontend e ver se ele está se comunicando com o backend, use o comando:
```bash
docker logs -f frontend
```

```