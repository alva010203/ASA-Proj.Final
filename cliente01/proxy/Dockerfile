FROM nginx:latest

# Cria diretórios para certificados
RUN mkdir -p /etc/ssl/private && mkdir -p /etc/ssl/certs

# Copia configuração do Nginx
COPY default.conf /etc/nginx/conf.d/

# Copia página HTML personalizada
COPY index.html /usr/share/nginx/html/

# Expõe as portas HTTP e HTTPS
EXPOSE 80 443
