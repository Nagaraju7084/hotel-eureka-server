FROM openjdk:8
ADD target/hotel-eureka-server.jar hotel-eureka-server.jar
ENTRYPOINT ["java","-jar","hotel-eureka-server.jar"]


#the below commands to run static web site under the nginx server
# FROM nginx
# nginx deployment directory
# WORKDIR /usr/share/nginx/html
# RUN mkdir medilab.com
# COPY . ${WORKDIR}

#the below commands to run node application in node server
#FROM node
#RUN mkdir /opt/items-node-app
#WORKDIR /opt/items-node-app
#COPY . ${WORKDIR}
#RUN npm install
#CMD ["npm", "start"]