FROM rust:1.80.0


# install tabry
ADD ./fixtures /app/fixtures
ADD ./shell /app/shell
ADD ./src /app/src
ADD ./Cargo.toml /app/Cargo.toml
ADD ./Cargo.lock /app/Cargo.lock
ADD ./build.rs /app/build.rs
WORKDIR /app
RUN cargo install --path .

# setup tabry with foo example
ADD ./docker/fish/foo.tabry /tabry/foo.tabry