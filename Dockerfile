FROM ghcr.io/graalvm/native-image-community:22
WORKDIR /app
COPY . .
RUN chmod u+x ./mvnw
RUN ./mvnw package -Dnative


RUN chown 1001 /app \
    && chmod -R "g+rwX" /app \
    && chown -R 1001:root /app
RUN cp /app/target/*-runner /app/target/app-runner

EXPOSE 8080
USER 1001

ENTRYPOINT ["/app/target/app-runner", "-Dquarkus.http.host=0.0.0.0"]
