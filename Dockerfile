# Build container
FROM bash as builder
COPY . /
WORKDIR /build
RUN bash /build/build.sh

FROM nginx:alpine
COPY files /usr/share/nginx/html/files
COPY --from=builder /build/output/* /usr/share/nginx/html/
EXPOSE 9090:80
