# Name of the project
PROJECT_NAME = firstprog 

# Output directory
BUILD = build

# All source code files
SRC =main.c\
src/dinesh.c\
src/manushna.c\
src/mokshith.c\
src/pavani.c\
src/prashanth.c\
src/preethu.c\
src/saloni.c\
src/tulasiii.c\
src/sri.c\

# Project Output name

#PROJECT_OUTPUT = $(BUILD)/$(PROJECT_NAME)

INC = -Iinc\

# Document files
DOCUMENTATION_OUTPUT = documentation/html

# Default target built
$(PROJECT_NAME):all

# Run the target even if the matching name exists
.PHONY: run clean test doc all

all: $(SRC) $(BUILD)
	gcc $(SRC) $(INC) -o $(BUILD)/firstprog.out

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