# abrir terminal en windows

### copiar de maquina local a PWD [-r copia carpeta y su contenido] 
scp -r C:\Users\harlan\Desktop\docker\ ip172-18-0-83-crguidiim2rg00aaa9v0@direct.labs.play-with-docker.com:/root/
### pararse dentro de docker donde se encuentra el archivo docker-compose.yml
cd docker
### levantar servicios [-d sin logs]
docker compose up -d
### acceder phpmyadmin puerto 8080 

### copiar de PWD a mquina local [-r copia carpeta y su contenido]
scp -r ip172-18-0-83-crguidiim2rg00aaa9v0@direct.labs.play-with-docker.com:/root/docker/db/ C:/Users/harlan/Desktop/docker/db/





