# Name of the project
PROJECT_NAME = firstprog 

# Output directory
BUILD = build

# All source code files
SRC = main.c\
src/dinesh.c\
   /manushna.c\
   / mokshith.c\
   / pavani.c\
   / prashanth.c\
   / Preethu.c\
   / saloni.c\
   / tulasiii.c\

# Project Output name
#PROJECT_OUTPUT = $(BUILD)/$(PROJECT_NAME)

INC = -Iinc

# Document files
DOCUMENTATION_OUTPUT = documentation/html

# Default target built
$(PROJECT_NAME):all

# Run the target even if the matching name exists
.PHONY: run clean test doc all

all: $(SRC) $(BUILD)
	gcc $(SRC) -o $(BUILD)/firstprog.out

# Call `make run` to run the application
run:$(PROJECT_NAME)
	./$(BUILD)/firstprog.out

# Document the code using Doxygen
doc:
	make -C ./documentation


# Remove all the built files, invoke by `make clean`
clean:
	rm -rf $(BUILD) $(DOCUMENTATION_OUTPUT)

# Create new build folder if not present
$(BUILD):
	mkdir build