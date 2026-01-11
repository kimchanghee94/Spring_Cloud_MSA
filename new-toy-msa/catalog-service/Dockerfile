FROM openjdk:21-ea-slim
VOLUME /tmp
COPY target/catalog-service-1.0.jar CatalogService.jar
ENTRYPOINT ["java","-jar","CatalogService.jar"]