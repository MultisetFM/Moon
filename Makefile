TARGET		:=	aws64
BUILD		:=	build
SOURCES		:=	source
INCLUDES	:=	include

CFLAGS		:=	-I $(INCLUDES)/ -f elf64 -o $(BUILD)/$(TARGET).o \
			$(SOURCES)/*

all:
	mkdir -p $(BUILD)
	nasm $(CFLAGS)
	ld -o $(BUILD)/$(TARGET) $(BUILD)/$(TARGET).o

run:	all
	./$(BUILD)/$(TARGET)

clean:
	rm -rf $(BUILD)
