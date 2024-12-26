# Mina Boktor

CPP = g++
LIB = 
TARGET ?= chess_engine
SRC = src
BUILD = build
INCLUDE = -Iinclude
FLAGS = $(INCLUDE) -Wall

# Add 'DEBUG=1' to make command if you would like add -g to compiler flags
ifeq ($(DEBUG), 1)
	FLAGS += -g
endif

CPP_FILES = $(wildcard $(SRC)/*.cpp)
CPP_OBJ_FILES = $(patsubst $(SRC)/%.cpp, $(BUILD)/%.o, $(CPP_FILES))

.PHONY: all clean clean-obj

all: $(TARGET)
	@echo "Build done"

$(TARGET): $(CPP_OBJ_FILES)
	$(CPP) $(FLAGS) $^ -o $@ $(LIB)

$(BUILD)/%.o: $(SRC)/%.cpp
	@mkdir -p $(BUILD)
	$(CPP) $(FLAGS) -c $< -o $@ 

clean:
	rm -rf $(BUILD) $(TARGET)
	@echo "Clean done"

clean-obj:
	rm -rf $(BUILD)
	@echo "Object files removed"

