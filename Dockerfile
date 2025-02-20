

#pull a base image that gives all required tools and libraries
FROM node:20-alpine

# create a folder where he app code will be stored
WORKDIR /app

# Copy package.json and package-lock.json first
#COPY package*.json ./

# Log Node version to verify during build
#RUN node -v && npm -v

# Clean npm cache and install dependencies
#RUN npm cache clean --force && npm install

#Copy the source code from your HOST machine to your container 
COPY . .

#install npm file 
RUN npm install

# given Expose port and this given by developer
EXPOSE 3000


# run the application
CMD ["npm", "run","dev"]



