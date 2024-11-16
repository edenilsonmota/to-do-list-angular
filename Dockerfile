#NODE 21 JS
FROM node:22

#diretorio para ficar dentro do container
WORKDIR /app

#Pegar todo os arquivo de dentro do .(raiz projeto) e colocar dentro do direitorio . (/app)
COPY . .

# Instalar dependencias
RUN npm install

# Instalar a cli do angular
RUN npm install @angular/cli -g

#RODANDO APLICAÇÂO NA PORTA
EXPOSE 4200

# Comandos
CMD [ "ng" , "serve", "--host", "0.0.0.0" ]