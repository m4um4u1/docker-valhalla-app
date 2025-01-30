# Build React App
FROM node:16.17.0-alpine as builder
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY . /app
RUN npm i

ENV NODE_ENV production
RUN npm run build

# Production Environment (Nginx)
FROM nginx:1.23.2-alpine

# Copy React build to Nginx
COPY --from=builder /app/build /usr/share/nginx/html

# Copy entrypoint script to replace environment variables
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 80

# Run entrypoint script before starting Nginx
ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
