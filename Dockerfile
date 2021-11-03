FROM maven:3.6.3-openjdk-8 as maven_build
WORKDIR /app
COPY . /app/
RUN mvn package -DskipTests

FROM java:8 as app
WORKDIR /app
COPY --from=maven_build /app/target/*.jar /app/
CMD java -jar /app/*.jar