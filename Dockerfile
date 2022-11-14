# menggunakan node 14 alpine
FROM node:14-alpine

# membuat /app 
RUN mkdir /app

# merubah working directory ke /app
WORKDIR /app

# menyalin source code ke /app
ADD . /app

# mengeset env
ENV NODE_ENV=production
ENV DB_HOST=item-db

# menginstall dependencies
RUN npm install --production --unsafe-perm && npm run build

# expose port 8080
EXPOSE 8080

# menjalankan perintah default
CMD ["npm","start"]