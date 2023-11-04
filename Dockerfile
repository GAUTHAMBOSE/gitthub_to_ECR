# FROM node:16




# Create app directory

# # Create app directory
# WORKDIR /usr/src/app

# # Install app dependencies
# # A wildcard is used to ensure both package.json AND package-lock.json are copied
# # where available (npm@5+)
# COPY package*.json ./

# RUN npm install
# # If you are building your code for production
# # RUN npm install --only=production

# # Bundle app source
# COPY . .

# EXPOSE 8080
# CMD ["npm","start"]

# This is dummy change for git demo




# ######################################
#  FROM httpd
#  COPY . /usr/local/apache2/htdocs/


#################################################### 
# Use the official Apache HTTP Server image as the base image
# FROM httpd:2.4

# # Copy your HTML/website files to the default Apache document root
# COPY ./my-website /usr/local/apache2/htdocs/

# Optionally, you can customize the Apache configuration
# For example, to enable .htaccess files, you can add the following lines:
# RUN echo "AllowOverride All" >> /usr/local/apache2/conf/httpd.conf
# Note: Enabling .htaccess files should be done with caution for security reasons.

# Expose port 80 for web traffic
# EXPOSE 80

##############################################################

FROM alpine:3.8

RUN apk update

RUN apk add nodejs

############
# https://github.com/javahometech/node-app
