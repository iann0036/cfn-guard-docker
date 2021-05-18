FROM rust:1.52.1

RUN cargo install cfn-guard
ENV PATH "/root/.cargo/bin:${PATH}"