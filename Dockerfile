# Multi-stage build for Node (build) + static serving (nginx)
FROM node:20-alpine AS build
WORKDIR /app
COPY . .
RUN npm ci || npm install
RUN npm run build

FROM nginx:alpine
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80
# SPA fallback
RUN printf 'server {\n  listen 80;\n  root /usr/share/nginx/html;\n  index index.html;\n  location / { try_files $uri $uri/ /index.html; }\n}\n' > /etc/nginx/conf.d/default.conf
