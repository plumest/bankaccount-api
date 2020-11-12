FROM maven:3.6-jdk-8

WORKDIR /usr/bankaccount

COPY pom.xml .

RUN mvn dependency:resolve

COPY src ./src

RUN mvn compile

EXPOSE 8081

CMD ["mvn", "spring-boot:run"]