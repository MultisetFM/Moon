TARGET		:=	aws64
BUILD		:=	build
SOURCES		:=	source
INCLUDES	:=	include
CFLAGS		:=	-I $(SOURCES)/ -I $(INCLUDES)/ -f elf64 \
			-o $(BUILD)/$(TARGET).o $(SOURCES)/main.asm

all:	$(BUILD)/$(TARGET)

run:	all
	./$(BUILD)/$(TARGET)

$(BUILD)/$(TARGET):
	mkdir -p $(BUILD)
	nasm $(CFLAGS)
	ld -o $(BUILD)/$(TARGET) \
	$(BUILD)/$(TARGET).o

clean:
	rm -rf $(BUILD)
