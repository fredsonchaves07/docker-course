FROM python:latest
# Adiciona um grupo de usuario do wsgi ao root -> Recomendação do wsgi não é
# Executar o wsgi com o usuário root
RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi
RUN pip install Flask uWSGI
WORKDIR /app
COPY app /app
COPY cmd.sh /

# Expoe a porta para o host e outros containers
EXPOSE 9090 9191

# Define o usuário para todas linhas seguintes que sejam executadas como esse usuário
# Importante sempre utilizar um usuário para evitar que o container seja executado como root
USER uwsgi

# Roda o comando de acordo com o que está no cmd.sh
CMD ["/cmd.sh"]
