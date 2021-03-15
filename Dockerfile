FROM alpine:3.12.4

RUN apk --update add --no-cache cargo
RUN cargo install cfn-guard
ENV PATH "/root/.cargo/bin:${PATH}"