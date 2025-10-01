# Compiles aassembly flies
# Abdul-W. Chaarani 2024  

AS = gcc
ASFLAGS = -m32 -g

SRCS_CPP = $(wildcard *.cpp)
SRCS_ASM = $(wildcard *.s)

OBJS = $(SRCS_ASM:.s=.o)

TARGET = out

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) -m32 -o $@ $^
	
%.o: %.s
	$(AS) $(ASFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

run: ${TARGET}
	./${TARGET}

.PHONY: all clean
