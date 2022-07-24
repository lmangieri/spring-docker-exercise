"# spring-docker-exercise" 


# Para a geração de artefato com manifest inicializável
mvn package spring-boot:repackage

# Para a criação de uma imagem docker local desta aplicação
docker build -t spring-docker-exercise:2.0.1-SNAPSHOT .

# Para criar um container na máquina local a partir da imagem criada
docker run -p 9091:8080 -t spring-docker-exercise:2.0.1-SNAPSHOT

# Para acessar a aplicação no container criado.
http://localhost:9091/
