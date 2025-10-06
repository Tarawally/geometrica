### Instruction Set: Whiteboarding - Exploration & Discovery

**Objective:** To populate the canvas with the project's features, concepts, and dependencies, moving from a "brain dump" to a structured dependency graph.

---

### Step 2: The Top-Down Pass - The User's Journey

**Purpose:** To outline the project from the user's perspective, defining the main "chapters" or "Rungs" of their experience. This captures the high-level narrative.

1.  **Create the Main Actor:**
    *   Drag a new card onto the main area of your canvas.
    *   Following your legend, right-click the card, select **Color**, and make it **Grey**.
    *   Type `User` into the card.

2.  **Create the Application Card:**
    *   Create a new card and make it **Purple** (Component / Module).
    *   Type `Geometrica Application` into the card.
    *   Draw an arrow from the `User` card to the `Geometrica Application` card. You can click the arrow and type a label like "Uses" or "Interacts With".

3.  **Brainstorm the High-Level Features:**
    *   Create several **Green** (User Feature / Story) cards. For now, don't connect them. Just place them on the canvas. These represent the major milestones from the user's point of view.
        *   Card 1: `See a basic 2D shape on screen`
        *   Card 2: `See a 3D object in space`
        *   Card 3: `Interact with the 3D object using the mouse`
        *   Card 4: `Define and see a custom-made 3D shape`
        *   Card 5: `Generate a complex pattern from a simple rule`

4.  **Sequence the Features:**
    *   Arrange these green cards in a logical, top-to-bottom or left-to-right flow.
    *   Draw arrows between them to show the progression. For example, `See a 2D shape` -> `See a 3D object`.

**Outcome of Step 2:** You have a clear, high-level user story map. This is the "Top-Down" skeleton of your project.

---

### Step 3: The Bottom-Up Pass & Synthesis

**Purpose:** To identify the necessary technical components and skills (the "toolbox") and to connect them to the user journey, creating a complete dependency graph.

1.  **Brain Dump the Technical Concepts:**
    *   In a separate area of your canvas (e.g., the right-hand side), create a "Toolbox" section.
    *   Create a **Blue** (Technical Concept / Skill) card for every technical piece you can think of. Don't connect them yet.
        *   `HTML Canvas`
        *   `JavaScript`
        *   `Three.js Scene`
        *   `Camera`
        *   `Renderer`
        *   `Mesh (Geometry + Material)`
        *   `OrbitControls`
        *   `UI Library (lil-gui)`
        *   `BufferGeometry & Vertices`
        *   `JavaScript Loops (for/while)`

2.  **Identify the Core Components:**
    *   Now, look at your user journey and your toolbox. Ask, "What major 'departments' or 'modules' will I need to build?" Create a **Purple** (Component / Module) card for each one.
        *   `Renderer Engine` (The part that draws things)
        *   `Geometry Engine` (The part that creates shape data)
        *   `UI Controller` (The part that manages the user interface)

3.  **Synthesize: Connect the Dots:**
    *   This is the most critical step. Drag your purple and blue cards from the toolbox into your main user journey map.
    *   Draw arrows to show the relationships. The arrow means "is required by" or "is a part of".
    *   **Connect Concepts to Features:**
        *   Drag `HTML Canvas` and `JavaScript` to the `See a basic 2D shape` feature card and connect them.
        *   Drag `Three.js Scene`, `Camera`, `Renderer`, and `Mesh` to the `See a 3D object` feature card.
    *   **Connect Concepts to Components:**
        *   Connect `BufferGeometry & Vertices` to your purple `Geometry Engine` component.
        *   Connect `Three.js Scene`, `Renderer` to your purple `Renderer Engine` component.
    *   **Connect Components to Features:**
        *   Connect your purple `Renderer Engine` to the green `See a 3D object` feature.
        *   Connect your purple `UI Controller` to the green `Interact with the 3D object` feature.

**Outcome of Step 3:** Your canvas is now a rich, interconnected graph. It's no longer a simple flowchart but a network that shows *what* you're building (the green cards), *how* you're building it (the blue cards), and *what systems* are involved (the purple cards).

You have successfully mapped out the project's features, concepts, and dependencies. Your whiteboard is now complete. The next step will be to formalize this visual discovery into your text-based roadmap.