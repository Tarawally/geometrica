# --- Base Stage ---
# Use an official Node.js runtime as the parent image.
FROM node:18-slim AS base

# Set the working directory inside the container.
WORKDIR /app

# Install system dependencies required for downloading and extracting.
RUN apt-get update && apt-get install -y wget tar

# --- Slang Installation Stage ---
# This stage is dedicated to getting the Slang compiler.
FROM base AS slang-installer

# ** Set the Slang version as a build argument for easy updates **
ARG SLANG_VERSION=2025.18
ARG SLANG_DIR=slang-${SLANG_VERSION}
ARG SLANG_ARCHIVE=${SLANG_DIR}-linux-x86_64.tar.gz
ARG SLANG_URL=https://github.com/shader-slang/slang/releases/download/v${SLANG_VERSION}/${SLANG_ARCHIVE}

# Create the target directory, then download and extract the compiler into it.
RUN mkdir -p ${SLANG_DIR} && \
    wget -qO- ${SLANG_URL} | tar -xvz -C ${SLANG_DIR} --strip-components=1

# --- Development Stage ---
# This is the image that will be used for local development (and by the Dev Container).
FROM base AS development

# Define the Slang version again for this stage
ARG SLANG_VERSION=2025.18
ARG SLANG_DIR=slang-${SLANG_VERSION}

# Copy the pre-installed Slang compiler from the previous stage.
COPY --from=slang-installer /app/${SLANG_DIR} /app/${SLANG_DIR}

# Add the Slang compiler to the system's PATH.
ENV PATH="/app/${SLANG_DIR}/bin/linux-x64/release:${PATH}"

# Copy package.json and package-lock.json first to leverage Docker's layer caching.
COPY package*.json ./

# Install all project dependencies.
RUN npm install

# Copy the rest of the application source code into the container.
COPY . .

# Expose the port the webpack-dev-server will run on.
EXPOSE 8080

# The default command to run when the container starts for development.
CMD ["npm", "start"]