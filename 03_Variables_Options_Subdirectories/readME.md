## **Part 3: Variables, Messages, and If Conditions**

---

### **Concept: Variables in CMake**
Variables in CMake are used to store values that can be reused throughout your `CMakeLists.txt` file. They can hold paths, flags, or custom settings, making your build system more flexible and maintainable.

---

### **Types of Variables**
1. **User-Defined Variables**:  
   - Created using the `set()` command.  
   - Example: `set(MY_VAR "Hello")`.

2. **CMake-Defined Variables**:  
   - Predefined by CMake for common use cases.  
   - Examples:  
     - `CMAKE_SOURCE_DIR`: The root directory of the source tree.  
     - `CMAKE_CURRENT_SOURCE_DIR`: The current source directory being processed.  
     - `CMAKE_BINARY_DIR`: The root directory of the build tree.  
     - `CMAKE_CURRENT_BINARY_DIR`: The current build directory being processed.  
     - `CMAKE_CXX_COMPILER`: The C++ compiler being used.  

---

### **Commands for Variables**
1. **`set(VAR_NAME value)`**:  
   - Defines a variable `VAR_NAME` and assigns it a value.  
   - Example: `set(MY_VAR "Hello")`.

2. **`${VAR_NAME}`**:  
   - Accesses the value of a variable.  
   - Example: `message(${MY_VAR})` prints "Hello".

3. **`unset(VAR_NAME)`**:  
   - Removes a variable from the current scope.

---         

### **Example: Using Variables**
Let’s define and use some variables in a `CMakeLists.txt` file.

```cmake
cmake_minimum_required(VERSION 3.10)
project(VariableExample)

# User-defined variables
set(PROJECT_NAME "MyProject")
set(SOURCE_DIR src)
set(INCLUDE_DIR include)

# CMake-defined variables
message("Source directory: ${CMAKE_SOURCE_DIR}")
message("Current source directory: ${CMAKE_CURRENT_SOURCE_DIR}")

# Combine variables
set(FULL_INCLUDE_PATH ${CMAKE_SOURCE_DIR}/${INCLUDE_DIR})
message("Full include path: ${FULL_INCLUDE_PATH}")
```

---

### **Concept: Messages in CMake**
Messages are used to print information during the configuration or build process. They are helpful for debugging and logging.

---

### **Types of Messages**
1. **`message(STATUS "Message")`**:  
   - Prints a status message (prefixed with `--`).  
   - Example: `message(STATUS "Configuring project...")`.

2. **`message(WARNING "Message")`**:  
   - Prints a warning message (prefixed with `WARNING`).  
   - Example: `message(WARNING "This is a warning!")`.

3. **`message(FATAL_ERROR "Message")`**:  
   - Prints an error message and stops the configuration process.  
   - Example: `message(FATAL_ERROR "Critical error! Stopping...")`.

4. **`message("Message")`**:  
   - Prints a plain message (no prefix).  
   - Example: `message("Hello, CMake!")`.

---

### **Example: Using Messages**
Let’s add some messages to our `CMakeLists.txt`.

```cmake
cmake_minimum_required(VERSION 3.10)
project(MessageExample)

# Status message
message(STATUS "Configuring project...")

# Warning message
message(WARNING "This is a warning!")

# Plain message
message("Hello, CMake!")

# Fatal error (uncomment to test)
# message(FATAL_ERROR "Critical error! Stopping...")
```

---

### **Concept: If Conditions**
CMake provides conditional statements to control the flow of your `CMakeLists.txt` file. You can use conditions to enable/disable features, check variables, or handle platform-specific logic.

---

### **Commands for If Conditions**
1. **`if(condition)`**:  
   - Executes a block of code if the condition is true.  
   - Example: `if(WIN32)` checks if the platform is Windows.

2. **`elseif(condition)`**:  
   - Provides an alternative condition if the first `if` is false.  
   - Example: `elseif(UNIX)` checks if the platform is Unix-like.

3. **`else()`**:  
   - Executes a block of code if all previous conditions are false.  
   - Example: `else()`.

4. **`endif()`**:  
   - Marks the end of an `if` block.

---

### **Common Conditions**
1. **Variable Checks**:  
   - `if(VAR_NAME)`: Checks if a variable is defined and not empty.  
   - `if(NOT VAR_NAME)`: Checks if a variable is not defined or empty.

2. **String Comparisons**:  
   - `if(VAR_NAME STREQUAL "value")`: Checks if a variable equals a string.  
   - `if(VAR_NAME MATCHES "regex")`: Checks if a variable matches a regex.

3. **Platform Checks**:  
   - `if(WIN32)`: Checks if the platform is Windows.  
   - `if(UNIX)`: Checks if the platform is Unix-like (Linux, macOS, etc.).

4. **File and Directory Checks**:  
   - `if(EXISTS path)`: Checks if a file or directory exists.  
   - `if(IS_DIRECTORY path)`: Checks if a path is a directory.

---

### **Example: Using If Conditions**
Let’s add some conditions to our `CMakeLists.txt`.

```cmake
cmake_minimum_required(VERSION 3.10)
project(IfExample)

# Check if a variable is defined
set(ENABLE_FEATURE ON)
if(ENABLE_FEATURE)
    message(STATUS "Feature is enabled!")
else()
    message(STATUS "Feature is disabled!")
endif()

# Platform-specific logic
if(WIN32)
    message(STATUS "Building on Windows!")
elseif(UNIX)
    message(STATUS "Building on Unix!")
else()
    message(STATUS "Building on an unknown platform!")
endif()

# Check if a file exists
if(EXISTS ${CMAKE_SOURCE_DIR}/CMakeLists.txt)
    message(STATUS "CMakeLists.txt found!")
else()
    message(FATAL_ERROR "CMakeLists.txt not found!")
endif()
```

---

### **Key Takeaways**
1. **Variables**: Use `set()` to define variables and `${VAR_NAME}` to access them.
2. **Messages**: Use `message()` to print information, warnings, or errors.
3. **If Conditions**: Use `if()`, `elseif()`, and `else()` to control the flow of your CMake script.

