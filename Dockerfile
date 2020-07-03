FROM node:12

# Application Folder
ARG APP_DIR=pixelistic_backend
RUN mkdir -p ${APP_DIR}
WORKDIR ${APP_DIR}

# Dependency 
COPY package*.json ./
RUN npm install
# RUN npm install --production

# Copy file
COPY pixelistic-backend/ .

# Exposed port
EXPOSE 4000

# Project start
CMD ["npm", "start"]
