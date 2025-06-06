FROM mysql:9.1

# Copie des scripts SQL d'initialisation
COPY ./init-v001.sql /docker-entrypoint-initdb.d/
COPY ./init-v002.sql /docker-entrypoint-initdb.d/