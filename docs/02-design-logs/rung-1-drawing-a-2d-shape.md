---
aliases: ["Rung 1: Drawing a 2D Shape"]
tags: [design-log, completed]
date: 2025-10-08
status: "done"
---

# Drawing a 2D shape

**Related Concepts:** [[geometrica-project-hub]], [[html-canvas]], [[javascript]], [[2d-rendering-context]]

---

## Story

*I want to see a simple 2D shape (a rectangle) on the screen so I can understand the absolute basics of rendering graphics in a web browser.*

## Design

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
        E[Call the 'fillRect' method on the context to draw the rectangle];
    end
    
    A -- "Is referenced by" --> B;
```

## Implementation log and discoveries

- Canvas and WebGL APIs
  - These APIs can only be accessed via JavaScript and require a reference to the unique ID of the HTML canvas element.
- HTML structure and DOM
  - This is where the canvas element is defined and referenced so it can be accessed by JavaScript and CSS.
- Objects, APIs, methods, and elements
  - I find it confusing that an API can be created from a variable that is assigned an object.
    - This can make it feel nested, especially when you define multiple APIs from nested variables.
    - So an object is an abstraction that represents...
- Seeing the width and height of the canvas with `canvas.width` and `canvas.height`
- `fillStyle` and `fillRect` methods
