FROM node:10-alpine

# adding a new user: UdiTest

RUN adduser -D UdiTest


# Add sources

COPY ./Udi /home/UdiTest/Udi

WORKDIR /home/UdiTest/Udi

RUN npm install

ENV MONGO_URI=https://www.mongodb.com/cloud/atlas

RUN chown -R UdiTest:UdiTest ./

USER UdiTest

EXPOSE 3000

CMD [ "node" "app.js" ]