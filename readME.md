# **CMake Tutorial Repository**

This repository contains a step-by-step CMake tutorial divided into three parts. Each part focuses on different aspects of CMake, from basic usage to organizing projects and using advanced features like variables, messages, and conditional logic.

---

## **Repository Structure**

The repository is organized into three main folders, each corresponding to a part of the tutorial:

```
├── 00_basics
│   ├── build
│   ├── CMakeLists.txt
│   ├── main.c
│   └── readME.md
├── 01_Organizing_Projects_and_Adding_Libraries
│   ├── build
│   ├── CMakeLists.txt
│   ├── includes
│   │   └── math_utils.h
│   ├── main.c
│   ├── readME.md
│   └── src
│       └── math_utils.c
├── 03_Variables_Options_Subdirectories
│   └── readME.md
└── readME.md
```

---

## **Tutorial Parts**

### **1. Part 1: CMake Basics**
- **Folder**: `00_basics`
- **Description**: Learn the basics of CMake, including how to write a simple `CMakeLists.txt` file and build a basic project.
- **Files**:
  - `CMakeLists.txt`: Basic CMake configuration.
  - `main.c`: A simple "Hello, World!" program.
  - `readME.md`: Explanation and how to run the demo.
- **Key Concepts**:
  - Writing a `CMakeLists.txt` file.
  - Using `add_executable` to create an executable.
  - Building and running a CMake project.

---

### **2. Part 2: Organizing Projects and Adding Libraries**
- **Folder**: `01_Organizing_Projects_and_Adding_Libraries`
- **Description**: Learn how to organize a project into multiple files and directories, and how to create and link libraries.
- **Files**:
  - `CMakeLists.txt`: Configuration for a project with a library.
  - `includes/math_utils.h`: Header file for the library.
  - `src/math_utils.c`: Implementation of the library.
  - `main.c`: Main program that uses the library.
  - `readME.md`: Explanation and how to run the demo.
- **Key Concepts**:
  - Using `add_library` to create a static library.
  - Linking libraries with `target_link_libraries`.
  - Organizing projects into `includes` and `src` directories.

---

### **3. Part 3: Variables, Messages, and If Conditions**
- **Folder**: `03_Variables_Options_Subdirectories`
- **Description**: Learn how to use variables, print messages, and add conditional logic to your CMake projects.
- **Files**:
  - `readME.md`: The Explanation
- **Key Concepts**:
  - Using `set` to define variables.
  - Printing messages with `message`.
  - Adding conditional logic with `if`, `elseif`, and `else`.

---

## **How to Use This Repository**

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-username/cmake-tutorial.git
   cd cmake-tutorial
   ```

2. **Navigate to a Part**:
   - For Part 1:
     ```bash
     cd 00_basics
     ```
   - For Part 2:
     ```bash
     cd 01_Organizing_Projects_and_Adding_Libraries
     ```
   - For Part 3:
     ```bash
     cd 03_Variables_Options_Subdirectories
     ```

3. **Build the Project**:
   - Create a `build` directory:
     ```bash
     mkdir build && cd build
     ```
   - Generate build files:
     ```bash
     cmake ..
     ```
   - Build the project:
     ```bash
     cmake --build .
     ```

4. **Run the Executable**:
   - After building, run the executable:
     ```bash
     ./executable_name
     ```

---

## **Contributing**

If you'd like to contribute to this tutorial, feel free to open an issue or submit a pull request. Contributions are welcome!

---

## **License**

This project is licensed under the MIT License.

---
## **Sources**
Documentation https://cmake.org/cmake/help/latest/guide/tutorial/index.html
Tutorial https://www.youtube.com/playlist?list=PLkH1REggdbJpG8fHZvivt-5Hlg3UZcJrK

---

Enjoy learning CMake! If you have any questions or feedback, please open an issue in this repository. 😊

---

