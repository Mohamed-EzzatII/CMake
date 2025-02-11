## **Part 2: Organizing Projects and Adding Libraries**

---

### **Concept: Organizing Projects**
As projects grow, you’ll want to split them into multiple directories and files. This makes the codebase modular and easier to maintain. CMake allows you to:
1. **Create libraries** (static or shared) for reusable code.
2. **Link libraries** to executables or other libraries.
3. **Organize projects** into subdirectories.

---

### **Concept: Libraries in CMake**
- **Static Libraries**: Compiled code bundled into a single file (`.a` on Linux, `.lib` on Windows). Linked at compile time.
- **Shared Libraries**: Compiled code loaded at runtime (`.so` on Linux, `.dll` on Windows).

---

### **Commands for Libraries and Linking**
1. **`add_library(lib_name STATIC/SHARED source.c)`**:  
   - Creates a library from source files.  
   - Use `STATIC` for static libraries or `SHARED` for shared libraries.

2. **`target_link_libraries(target_name lib_name)`**:  
   - Links a library to an executable or another library.

3. **`include_directories(dir_path)`**:  
   - Adds a directory to the include path for header files.

4. **`target_include_directories(target_name PUBLIC/PRIVATE dir_path)`**:  
   - Adds include directories for a specific target (more modern than `include_directories`).

---

### **Example: Project with a Library**
Let’s create a project with:
- A **library** (`math_utils`) containing a function to add two numbers.
- An **executable** (`main_app`) that uses the library.

---

#### **Step 1: Project Structure**
```
my_project/
  ├── CMakeLists.txt
  ├── includes/
  │     └── math_utils.h
  ├── src/
  │     └── math_utils.c
  ├── build/
  │
  └── main.c
```

---

#### **Step 2: Header and Source Files**
1. **`includes/math_utils.h`** (Library Header):
   ```c
   #ifndef MATH_UTILS_H
   #define MATH_UTILS_H

   int add(int a, int b);

   #endif
   ```

2. **`src/math_utils.c`** (Library Implementation):
   ```c
   #include "math_utils.h"

   int add(int a, int b) {
       return a + b;
   }
   ```

3. **`main.c`** (Main Application):
   ```c
   #include <stdio.h>
   #include "math_utils.h"

   int main() {
       printf("5 + 3 = %d\n",add(5, 3));
       return 0;
   }
   ```

---

#### **Step 3: CMakeLists.txt**
```cmake
cmake_minimum_required(VERSION 3.22)

project(HelloWorld)

# create the library math_utils
add_library(math_utils STATIC src/math_utils.c)

# add the needed include directories for library math_utils
target_include_directories(math_utils PUBLIC includes/)

# the executables of our program which is the main
add_executable(main_app main.c)

# link the main with the library
target_link_libraries(main_app math_utils)
```

---

#### **Step 4: Build and Run**
1. Navigate to the `build` directory:
   ```bash
   mkdir build && cd build
   ```

2. Generate build files:
   ```bash
   cmake ..
   ```

3. Build the project:
   ```bash
   cmake --build .
   ```

4. Run the executable:
   ```bash
   ./main_app
   ```
   Output: `5 + 3 = 8`

---

### **Key Takeaways**
- **`add_library`**: Creates a library from source files.
- **`target_link_libraries`**: Links libraries to executables or other libraries.
- **`target_include_directories`**: Specifies include directories for a target.

---