ARG SLANG_VERSION=2025.18
ARG SLANG_DIR=slang-${SLANG_VERSION}
ARG SLANG_ARCHIVE=${SLANG_DIR}-linux-x86_64.tar.gz
ARG SLANG_URL=https://github.com/shader-slang/slang/releases/download/v${SLANG_VERSION}/${SLANG_ARCHIVE}

# Base image
FROM node:18-slim AS base
WORKDIR /app
RUN apt-get update && apt-get install -y wget tar && apt-get clean && rm -f /var/lib/apt/lists/*

# Fetch the Slang compiler (kept in a separate stage)
FROM base AS slang-installer
ARG SLANG_VERSION
ARG SLANG_DIR
ARG SLANG_ARCHIVE
ARG SLANG_URL
RUN mkdir -p ${SLANG_DIR} && \
    wget -qO- ${SLANG_URL} | tar -xvz -C ${SLANG_DIR} --strip-components=1

# Development image
FROM base AS development
ARG SLANG_VERSION
ARG SLANG_DIR
COPY --from=slang-installer /app/${SLANG_DIR} /app/${SLANG_DIR}
ENV PATH="/app/${SLANG_DIR}/bin/linux-x64/release:${PATH}"
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD ["npm", "start"]