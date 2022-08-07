"# spring-docker-exercise" 

# Abaixo São alguns comandos básicos do docker para gerar a imagem local na máquina do usuário:

## Para a geração de artefato com manifest inicializável
mvn package spring-boot:repackage

## Para a criação de uma imagem docker local desta aplicação
docker build -t spring-docker-exercise:2.0.1-SNAPSHOT .

## Para criar um container na máquina local a partir da imagem criada
docker run -p 9091:8080 -t spring-docker-exercise:2.0.1-SNAPSHOT

## Para acessar a aplicação no container criado.
http://localhost:9091/


# Abaixo São alguns comandos para o uso do ECR no AWS


## Abaixo é um template de comando para login no ECR do AWS; parâmetros para serem substituidos: "region" e "aws_account_id":
aws ecr get-login-password --region region | docker login --username AWS --password-stdin aws_account_id.dkr.ecr.region.amazonaws.com
https://docs.aws.amazon.com/AmazonECR/latest/userguide/getting-started-cli.html

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 157351054870.dkr.ecr.us-east-1.amazonaws.com



## Comando para criar repositório de imagem docker no AWS 
aws ecr create-repository  --repository-name spring-docker-exercise  --image-scanning-configuration scanOnPush=true  --region us-east-1


## Comando para tagear a imagem que será enviada ao repositório. Obs aqui já substitui o aws_account_id por um de exemplo.
docker tag spring-docker-exercise:2.0.1-SNAPSHOT 157351054870.dkr.ecr.us-east-1.amazonaws.com/spring-docker-exercise:2.0.1-SNAPSHOT


## Comando para subir a imagem (Push the Image). Obs aqui já substitui o aws_account_id por um de exemplo:
docker push 157351054870.dkr.ecr.us-east-1.amazonaws.com/spring-docker-exercise:2.0.1-SNAPSHOT