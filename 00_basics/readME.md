**Part 1: CMake Basics & Your First CMake Project**  
Welcome to CMake! Let’s start with foundational concepts and a simple project setup.

---

### **What is CMake?**
- A **meta-build system** that generates platform-specific build files (e.g., Makefiles for Linux, Visual Studio projects for Windows).
- Uses a human-readable configuration file (`CMakeLists.txt`) to define how your project is built.

---

### **Install CMake**
1. **Linux**: `sudo apt-get install cmake` (Debian/Ubuntu) or use your package manager.  
2. **Windows**: Download from [cmake.org](https://cmake.org/download/) or use Chocolatey: `choco install cmake`.  
3. **Mac**: `brew install cmake`.

Verify installation:  
```bash
cmake --version
```

---

### **Your First CMake Project**
Let’s create a simple "Hello World" project.

1. **Project Structure**:
   ```
   my_project/
     ├── CMakeLists.txt
     └── main.c
   ```

2. **main.cpp**:
   ```c
   #include <stdio.h>
   int main() {
       printf("Hello CMake!");
       return 0;
   }
   ```

3. **CMakeLists.txt** (place in `my_project/`):
   ```cmake
   cmake_minimum_required(VERSION 3.10)  # Minimum CMake version
   project(HelloWorld)                   # Name your project

   add_executable(hello main.c)          # Define the executable
   ```

---

### **Build the Project**
1. **Create a `build` directory** (to avoid cluttering your source files):
   ```bash
   mkdir build && cd build
   ```

2. **Generate build files**:
   ```bash
   cmake ..  # Generates Makefiles (or other build files)
   ```

3. **Compile**:
   ```bash
   cmake --build .  # Builds the project (equivalent to "make" for Makefiles)
   ```

4. **Run**:
   ```bash
   ./hello  # Output: "Hello CMake!"
   ```

---

### **Key CMake Commands Explained**
1. **`cmake_minimum_required(VERSION x.x)`**:  
   - Ensures compatibility by specifying the minimum CMake version.

2. **`project(ProjectName)`**:  
   - Sets the project name and enables languages (e.g., C++ by default).

3. **`add_executable(target_name source.cpp)`**:  
   - Defines an executable to build from source files.

---

### **Best Practices**
- **Out-of-source builds**: Always use a `build` directory to keep generated files separate from source code.