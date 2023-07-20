FROM oven/bun
WORKDIR /app
COPY package.json package.json
COPY bun.lockb bun.lockb
RUN bun install
COPY . .
RUN ls --recursive /app
EXPOSE 3000
ENTRYPOINT ["bun", "index.js"]