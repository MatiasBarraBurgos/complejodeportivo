# Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
# Click nbfs://nbhost/SystemFileSystem/Templates/Other/Dockerfile to edit this template

FROM glassfish:4.0-jdk7

WORKDIR /usr/src/app

COPY /build/libs/complejodeportivo.war $GLASSFISH_HOME/glassfish/domains/domain1/autodeploy/

EXPOSE 8080 4848

CMD ["asadmin", "start-domain", "-v", "domain1"]
