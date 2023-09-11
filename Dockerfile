# Download base image bernama node dari Docker Hub dengan tag latest
FROM node:14

# Membuat working directory app di dalam container
WORKDIR /app

# Copy semua berkas folder local working ke working directory
COPY . .

# Install node express 
RUN npm install express

# Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Menentukan aplikasi berjalan dalam production mode
ENV NODE_ENV=production

# Menentukan database host
ENV DB_HOST=item-db

# Eksekusi perintah untuk menjalankan aplikasi
CMD ["npm", "start"]

# Mengekspos port 8080 yang akan digunakan oleh container 
EXPOSE 8080