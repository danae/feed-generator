# Select the image
FROM node:23-alpine3.19

# Copy the Yarn dependency file and install the dependencies
WORKDIR /app
COPY yarn.lock package.json ./
RUN yarn install

# Copy the whole application
COPY . .

# Run the server
EXPOSE 3000
CMD ["yarn", "start"]
