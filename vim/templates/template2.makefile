TARGET := program

.PHONY: build

#SHELL := /bin/bash

C_WARNINGS := -Werror -Wall -Wlogical-op -Wextra -Wvla -Wnull-dereference \
              -Wswitch-enum -Wno-deprecated -Wduplicated-cond -Wduplicated-branches \
              -Wshadow -Wpointer-arith -Wcast-qual -Winit-self -Wuninitialized \
              -Wcast-align -Wstrict-aliasing -Wformat=2 -Wmissing-declarations \
              -Wmissing-prototypes -Wstrict-prototypes -Wwrite-strings \
              -Wunused-parameter -Wshadow -Wdouble-promotion -Wfloat-equal \
              -Wno-error=cpp
C_INCLUDES := -I. -Iinclude
C_FLAGS    := $(C_WARNINGS) $(C_INCLUDES) --std=c17
L_FLAGS    := -Llib -lm -ldl -lpthread

ifeq ($(BUILD_TYPE), debug)
        C_FLAGS += -O0 -g
        TARGET := $(TARGET)-debug
else ifeq ($(BUILD_TYPE), release)
        C_FLAGS += -O2 -g
        TARGET := $(TARGET)-release
endif

C_COMPILE = @parallel -t --tty -j$(shell nproc) $(CC) -c $(C_FLAGS) {1} -o {2}{1/.}.o ::: $(1) ::: $(2)
C_LINK = $(CC) $(C_FLAGS) $(1) -o $(2) $(L_FLAGS)

all: debug

debug:
	@$(MAKE) --no-print-directory BUILD_TYPE=debug build

release:
	@$(MAKE) --no-print-directory BUILD_TYPE=release build

build:
	@-mkdir build
	$(call C_COMPILE, src/*.c, build/)
	$(call C_LINK, build/*.o, $(TARGET))

clean:
	-rm build/*
	-rmdir build
	-rm $(TARGET)-*

