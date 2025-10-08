---
aliases: ["Rung 1: Drawing a 2D Shape"]
tags: [design-log, completed]
date: 2025-10-08
status: "done"
---

# Rung 1: Drawing a 2D Shape

**Related Concepts:** [[geometrica-project-hub]], [[html-canvas]], [[javascript]], [[2d-rendering-context]]

---

### 1. The Story (The Goal)

*As a new learner, I want to see a simple 2D shape (a rectangle) on the screen, so I can understand the absolute basics of rendering graphics in a web browser.*

### 2. The Design (The Plan)

This flowchart outlines the steps required to render a 2D shape. The design separates the structural HTML from the behavioural JavaScript, which will be in two separate files.

```mermaid
graph TD
    subgraph "HTML File: index.html"
        A[Create an HTML document with a canvas element that has a unique ID];
    end

    subgraph "JavaScript File: script.js"
        B[Get the canvas element from the DOM using its ID];
        C[Get the canvas's 2D rendering context];
        D[Set the 'fillStyle' property of the context to a colour];
        E[Call the 'fillRect' method on the context to draw the shape];
    end
    
    A -- "Is referenced by" --> B;
```