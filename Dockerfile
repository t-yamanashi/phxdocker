FROM elixir

RUN apt update && apt install -y inotify-tools

RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash \
    && apt install -y nodejs

RUN mix local.hex --force \
    && mix archive.install hex phx_new --force \
    && mix local.rebar --force
