#!/bin/sh
set -e

# Gera um arquivo de configuração JS com a URL do backend.
# Usa um valor padrão se a variável BACKEND não for definida.
echo "window.APP_CONFIG = { backendUrl: '${BACKEND_URL:-"http://localhost:8080"}' };" > /usr/local/apache2/htdocs/config.js

# Inicia o Apache.
exec httpd-foreground
