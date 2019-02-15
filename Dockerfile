FROM node:9
WORKDIR /usr/local/react-jeopardy
COPY . .
RUN npm i
RUN npm run build
RUN npm i serve -g
EXPOSE 80
CMD ["serve", "-s", "build", "-l", "80"]