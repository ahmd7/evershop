FROM node:18-alpine
WORKDIR /app
RUN npm install -g npm@9
COPY package*.json .



# Copy your media.
COPY . .

# Copy your public files.

RUN npm install -g npm@10.5.0
# Run npm install.


# Build assets.
RUN npm run build
EXPOSE 80
CMD ["npm", "run", "start"]
