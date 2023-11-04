FROM node:16



# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .

EXPOSE 8080
CMD ["npm","start"]

# This is dummy change for git demo




# ######################################
#  FROM httpd
#  COPY . /usr/local/apache2/htdocs/




############
# https://github.com/javahometech/node-app