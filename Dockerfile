FROM node:20

WORKDIR /usr/src/app

# COPY ./src .
# if we use .dockerignore
COPY . .

RUN npm install

EXPOSE 3000

#npm run start:dev
CMD [ "npm", "run", "start:dev" ]


# What to do nest

## Create a docker image
## docker build -t nest-dev -f Dockerfile . 

## RUN the build to form a container
## docker run -p 8000:3000 nest-dev 