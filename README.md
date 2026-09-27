# EcoScope — Company Review & Skill Transparency

## What was improved
- Replaced the old minimal GLUT drawing with a complete visual dashboard.
- Added clickable buttons, text-entry forms, company cards and search results.
- Removed console `cin` from the graphical workflow.
- Added company review, rating and skill-transparency fields.
- Fixed the COA GUI compile mismatch (`addSalary` / `compareSalary`).
- Added GUI-safe PL array operations.
- Kept PL, PSOOP, OOPS, COA and CGL modules for the academic project structure.
- Added keyboard navigation and mouse navigation.

## Modules
- `PL/` — company array, linear search, CRUD operations.
- `PSOOP/` — company linked-list implementation.
- `OOPS/` — account abstraction/inheritance/polymorphism.
- `COA/` — 64-bit salary operations. `coa.asm` is retained as the assembly version; the C++ implementation is used by the default build so NASM is not required.
- `CGL/` — OpenGL/GLUT GUI.
- `main.cpp` — GUI entry point.

## Windows build requirements
Install:
1. MinGW-w64 / g++
2. FreeGLUT development files (headers + library)
3. VS Code C/C++ extension (optional)

Typical libraries required:
- `freeglut`
- `opengl32`
- `glu32`

If FreeGLUT is installed in a custom location, adjust the include/library paths in `.vscode/tasks.json`.

## Run
Build `main.cpp` using the provided VS Code task, then run `EcoScope.exe`.

### Demo login
Student:
- Username: `student`
- Password: `1234`

Employer:
- Create an employer account from the home screen, then log in.

## Controls
- Mouse: click buttons/cards.
- `TAB` / arrow keys: move between form fields.
- `ENTER`: submit/save.
- `B`: back on applicable screens.
- `ESC`: exit.

The application stores data in memory for the current run.

## Updated dashboard flow
- Home screen -> Student Login / Employer Login / Create Account
- Student Dashboard -> Browse Companies / Search / COA Analytics / About
- Employer Dashboard -> Add Company / Manage Records / Search / COA Analytics
- Dashboard includes summary cards for company count, job roles, average rating and skill transparency.
- Company cards show rating stars and skill-transparency progress bars.
- Sidebar navigation is used across the main dashboard and company-record screens.
- OpenGL primitives, 2D projection, transformations, colors and graphical indicators are used in the CGL interface.
