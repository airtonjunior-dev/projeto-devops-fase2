# Imagem base
FROM node:20-slim

# Diretório de trabalho
WORKDIR /app

# Copiar arquivos de dependências
COPY package*.json ./

# Instalar dependências
RUN npm install

# Copiar o restante do código
COPY . .

# Expor a porta que a aplicação usa (exemplo)
EXPOSE 3000

# Comando para rodar os testes (simulando a execução da app)
CMD ["npm", "test"]
