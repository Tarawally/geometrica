# Geometrica

[![Build Status](https://github.com/your-username/geometrica/actions/workflows/deploy.yml/badge.svg)](https://github.com/Tarawally/geometrica/actions/workflows/deploy.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

An interactive platform for exploring patterns, geometries, and curvature in various mathematical spaces using Three.js, TypeScript, and a custom rendering pipeline.

## Vision

Geometrica is a tool for visualising the beauty of mathematics. From the familiar tessellations of the Euclidean plane to the mind-bending landscapes of hyperbolic space, this project provides a digital canvas for mathematicians, artists, and developers to explore and create. It is built on a portable, decoupled architecture with a long-term vision to support both WebGL and WebGPU.

[**View the full Project Plan & Roadmap &raquo;**](PROJECT_PLAN.md)

## Project Status

This project is currently in **Phase 1: The Foundation**. The core architecture, rendering pipeline, and deployment automation are being actively developed. The application is live but has minimal features.

## Technology Stack

*   **Rendering:** Three.js
*   **Language:** TypeScript
*   **Shading:** Slang Shading Language (compiled to GLSL)
*   **Bundling:** Webpack
*   **Development Environment:** Docker & VS Code Dev Containers

---

## Getting Started

This project is configured to run inside a **Dev Container**, which creates a consistent and reproducible development environment for all contributors. This is the highly recommended way to get started.

### Prerequisites

*   [Git](https://git-scm.com/)
*   [Docker Desktop](https://www.docker.com/products/docker-desktop/)
*   [Visual Studio Code](https://code.visualstudio.com/)
*   The [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) for VS Code.

### Recommended Setup (One-Click Dev Container)

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/your-username/geometrica.git
    cd geometrica
    ```

2.  **Open in VS Code:**
    ```bash
    code .
    ```

3.  **Reopen in Container:**
    A pop-up will appear in the bottom-right corner: *"Folder contains a Dev Container configuration file. Reopen to develop in a container."*
    Click **"Reopen in Container"**.

    VS Code will now build the Docker image and configure the environment. This may take a few minutes on the first run.

4.  **Start the Development Server:**
    Once the container is running, open the integrated terminal in VS Code (`Ctrl+` ` or `Cmd+` `). The terminal is now *inside* the container, with Node.js and the Slang compiler already installed and configured.
    ```bash
    npm start
    ```

The application will now be running at `http://localhost:8080`.

### Manual Setup (Without Dev Containers)

If you prefer not to use Docker, you can set up the environment manually.

1.  **Install Node.js:** Ensure you are using a version compatible with this project (e.g., v18).
2.  **Install the Slang Compiler:** Download the binary for your OS from the [Slang GitHub Releases](https://github.com/shader-slang/slang/releases) and ensure `slangc` is available in your system's PATH.
3.  **Clone the repository and install dependencies:**
    ```bash
    git clone https://github.com/your-username/geometrica.git
    cd geometrica
    npm install
    ```
4.  **Start the Development Server:**
    ```bash
    npm start
    ```

---

## Contributing

Contributions are welcome! This project is in its early stages, and we appreciate all the help we can get. Please read our [**CONTRIBUTING.md**](CONTRIBUTING.md) guide to learn about our development process, architectural rules, and how to submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.