# Usar uma imagem base leve do Nginx
FROM nginx:alpine

# Remover a configuração padrão do Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Copiar a sua configuração personalizada do Nginx (opcional, mas bom para controle)
# Se não criar um nginx.conf personalizado, pode pular esta linha e a criação do ficheiro.
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copiar os ficheiros da sua aplicação para o diretório web padrão do Nginx
# Se o seu HTML se chama index.html e está na raiz da pasta 'planejador-coolify'
COPY index.html /usr/share/nginx/html/index.html

# Se tivesse outros assets (CSS, JS, imagens) numa pasta chamada 'public' ou 'assets':
# COPY public/ /usr/share/nginx/html/

# Expor a porta 80 (padrão do Nginx)
EXPOSE 80

# Comando para iniciar o Nginx quando o container iniciar
CMD ["nginx", "-g", "daemon off;"]
