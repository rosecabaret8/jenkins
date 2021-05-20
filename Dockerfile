FROM openjdk:11
RUN  mkdir /app
Copy helloWorld.class /app
WORKDIR /app
CMD java helloWorld
