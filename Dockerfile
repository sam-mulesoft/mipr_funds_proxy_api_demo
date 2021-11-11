FROM maven:3.5-jdk-8-alpine AS build
COPY . /home/app/
RUN mvn clean package -f /home/app/pom.xml -DskipTests


FROM woody78/mule-base-image:6
COPY --from=build /home/app/target/mipr_funds_proxy_api-1.0.0-SNAPSHOT-mule-application.jar ${WORKSPACE}/opt/stow/.
EXPOSE 8081