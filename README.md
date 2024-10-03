# 🐋 c-devbox

A lightweight development container for C and C++ development with tools for compiling, linting, formatting, and debugging!

Contains:

- `Clang` and `Clang-Extra-Tools` for compilation and additional tooling.
- `Valgrind` for memory debugging.
- `CMake` and `Ninja` for efficient build automation.
- `Cppcheck` and `Cpplint` for static code analysis.
- `Zsh` with `Oh My Zsh` and plugins: Syntax highlighting, Autosuggestions, You-Should-Use for alias suggestions

## 🚀 Run

Windows :

```sh
docker run -v ".\code:/code" -it yungbricocoop/c-devbox
```

Linux :

```sh
docker run -v "./code:/code" -it yungbricocoop/c-devbox
```

## ⌨️ Shortcuts

- Compile C++: `x` compiles main.cpp and runs the output.
- Compile C: `cx` compiles main.c and runs the output.
- Format Code: `cformat` applies clang-format to all .cpp and .h files.
- Run Static Analysis: `ccheck` runs cppcheck on all files.
- Lint Code: clint runs `cpplint` on .cpp files.
