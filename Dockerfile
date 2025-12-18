# Imagem base oficial do Node
FROM node:22-alpine3.23

# Define o diretório de trabalho dentro do container
WORKDIR /usr/src/app

# Copia apenas os arquivos de configuração primeiro
COPY ./app/package*.json ./

# Instala as dependências dentro do container
RUN npm install

# Copia o restante do código da aplicação
COPY ./app .

# Expõe a porta (usando a porta definida no server.js)
EXPOSE 3000

# Comando para iniciar o servidor
CMD ["npm", "start"]