# Usa una imagen base de Node.js
FROM node:18

# Establecer el directorio de trabajo en /app
WORKDIR /app

# Copiar package.json y package-lock.json
COPY package*.json ./

# Instalar las dependencias
RUN npm install

# Copiar el resto de los archivos del proyecto
COPY . .

# Exponer el puerto 8080 (el puerto por defecto de Vue.js)
EXPOSE 8080

# Comando para ejecutar el servidor de desarrollo
CMD ["npm", "run", "serve"]
