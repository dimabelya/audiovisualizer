#!/bin/sh

set -xe

CFLAGS="-Wall -Wextra $(pkg-config --cflags raylib)"
LIBS="-lglfw -lm -ldl -lpthread -L/opt/homebrew/Cellar/glfw/3.3.9/lib $(pkg-config --libs raylib)"


# Compilation step
clang $CFLAGS -c main.c -o main.o

# Linking step
clang main.o -o visualizer $LIBS
