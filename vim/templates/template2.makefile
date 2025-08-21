TARGET := a.out

.PHONY: build debug release prep clean

C_WARNINGS := -Werror -Wall -Wlogical-op -Wextra -Wvla -Wnull-dereference \
              -Wswitch-enum -Wno-deprecated -Wduplicated-cond -Wduplicated-branches \
              -Wshadow -Wpointer-arith -Wcast-qual -Winit-self -Wuninitialized \
              -Wcast-align -Wstrict-aliasing -Wformat=2 -Wmissing-declarations \
              -Wmissing-prototypes -Wstrict-prototypes -Wwrite-strings \
              -Wunused-parameter -Wshadow -Wdouble-promotion -Wfloat-equal \
              -Wno-override-init -Wno-error=cpp
C_INCLUDES := -I. -Iinclude
C_FLAGS    := $(C_WARNINGS) $(C_INCLUDES) --std=c17
L_FLAGS    := -Llib -lm -ldl -lpthread

ifeq ($(BUILD_TYPE), debug)
	C_FLAGS += -O0 -g
else ifeq ($(BUILD_TYPE), release)
	C_FLAGS += -O2 -g
endif

compile = @parallel -t --tty -j$(shell nproc) $(CC) -c $(C_FLAGS) {1} -o {2}{1/.}.o ::: $(1) ::: $(2)
link = $(CC) $(C_FLAGS) $(1) -o $(2) $(L_FLAGS)

#
# "Top-level" rules. These will recursively call `make build` with a proper
# configuration.
#
all: debug

debug: --prep
	@$(MAKE) --no-print-directory BUILD_TYPE=debug build

release: --prep
	@$(MAKE) --no-print-directory BUILD_TYPE=release build

--prep:
	@-mkdir -p build

#
# The Actual build recipe goes here
#
build:
	$(call compile, src/*.c, build/)
	$(call link, build/*.o, $(TARGET))

clean:
-	rm build/*
	-rmdir build
	-rm $(TARGET)

