FROM node:20.11.0 as builder
WORKDIR '/usr/src/app'
COPY package.json .
RUN yarn
COPY ./ ./
RUN yarn run build

FROM nginx
EXPOSE 80
COPY --from=builder /usr/src/app/build /usr/share/nginx/html