TARGET = test
EXECUTABLE = out

LIB = IDDR2.v \
	  glbl.v \
	  SRL16.v

SRC = delay.v

TEST = test.v

all:
	iverilog $(LIB) $(SRC) -o out

$(TARGET): test_comp
	vvp $(EXECUTABLE)

test_comp:
	iverilog $(LIB) $(SRC) $(TEST) -o out	

clean:
	rm out*