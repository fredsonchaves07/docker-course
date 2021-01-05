FROM python:latest
# Adiciona um grupo de usuario do wsgi ao root -> Recomenda��o do wsgi n�o �
# Executar o wsgi com o usu�rio root
RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi
RUN pip install Flask uWSGI requests redis
WORKDIR /app
COPY app /app
COPY cmd.sh /

# Expoe a porta para o host e outros containers
EXPOSE 9090 9191

# Define o usu�rio para todas linhas seguintes que sejam executadas como esse usu�rio
# Importante sempre utilizar um usu�rio para evitar que o container seja executado como root
USER uwsgi

# Roda o comando de acordo com o que est� no cmd.sh

