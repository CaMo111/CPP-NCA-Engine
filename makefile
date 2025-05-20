# Compiler and flags
CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++20

# Source and output files
SRC = main.cpp utils.cpp
OBJ = $(SRC:.cpp=.o)
EXEC = app

# Default target
all: $(EXEC)

# Link object files into the final executable
$(EXEC): $(OBJ)
	$(CXX) $(OBJ) -o $(EXEC)

# Compile .cpp to .o
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean up
clean:
	rm -f $(OBJ) $(EXEC)
