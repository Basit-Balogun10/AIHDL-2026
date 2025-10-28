# Verilator Setup and Documentation

Verilator is the fastest free Verilog HDL simulator, providing lint capabilities and performance optimization.

## Installation

### Package Manager Installation

#### Ubuntu/Debian
```bash
sudo apt update
sudo apt install verilator
```

#### macOS
```bash
brew install verilator
```

#### Windows
```bash
# Using MSYS2
pacman -S verilator

# Or use WSL with Ubuntu installation
```

### From Source
```bash
git clone https://github.com/verilator/verilator
cd verilator
autoconf
./configure
make
sudo make install
```

## Basic Usage

### Simulation Compilation
```bash
# Compile Verilog to C++
verilator --cc design.v --exe testbench.cpp

# Build simulation
make -C obj_dir -f Vdesign.mk Vdesign

# Run simulation
./obj_dir/Vdesign
```

### Linting (Syntax Checking)
```bash
# Check syntax and style
verilator --lint-only design.v
```

## AI-HDL Integration

### For Design Phase 1 & 2
- Fast simulation and verification
- Syntax checking and linting
- Performance validation
- Large-scale testbench simulation

### Basic Testbench Template
```cpp
// testbench.cpp
#include "Vdesign.h"
#include "verilated.h"

int main(int argc, char** argv) {
    // Initialize Verilator
    Verilated::commandArgs(argc, argv);
    
    // Create instance of our module
    Vdesign* top = new Vdesign;
    
    // Simulate
    while (!Verilated::gotFinish()) {
        // Set inputs
        top->clk = 0;
        top->eval();
        
        top->clk = 1;
        top->eval();
    }
    
    // Clean up
    delete top;
    return 0;
}
```

## Advanced Features

### Waveform Generation
```bash
# Compile with tracing
verilator --cc --trace design.v --exe testbench.cpp

# In testbench.cpp, add:
#include "verilated_vcd_c.h"
```

### Coverage Analysis
```bash
# Enable coverage
verilator --cc --coverage design.v --exe testbench.cpp
```

### Performance Optimization
```bash
# Optimize for speed
verilator --cc -O3 --x-assign fast --x-initial fast design.v
```

## Makefile Template

```makefile
# Makefile for Verilator simulation
VERILATOR = verilator
VERILATOR_FLAGS = --cc --exe --build --trace

SOURCES = design.v
TESTBENCH = testbench.cpp
TARGET = simulation

$(TARGET): $(SOURCES) $(TESTBENCH)
	$(VERILATOR) $(VERILATOR_FLAGS) $(SOURCES) $(TESTBENCH) -o $(TARGET)

clean:
	rm -rf obj_dir $(TARGET)

.PHONY: clean
```

## Competition Guidelines

### Verification Strategy
1. **Compile with linting** to catch errors early
2. **Use tracing** for debugging complex logic
3. **Create comprehensive testbenches** for all functionality
4. **Validate timing** behavior in simulation

### Performance Tips
- Use `--threads` for multi-core simulation
- Enable optimizations with `-O3`
- Use `--x-assign fast` for performance
- Minimize tracing for speed

### Integration with AI Tools
- Use AI to generate comprehensive test cases
- Automate testbench creation with LLM assistance
- Validate AI-generated designs thoroughly

## Debugging

### Common Issues
```bash
# Fix most common warnings
verilator --lint-only --Wall design.v

# Debug with waveforms
verilator --cc --trace design.v --exe tb.cpp
# View with: gtkwave simulation.vcd
```

### Best Practices
- Always run lint checks first
- Use systematic naming conventions
- Create modular testbenches
- Document test scenarios

## Resources

- **Official Website**: https://www.veripool.org/verilator/
- **Documentation**: https://verilator.org/guide/latest/
- **GitHub**: https://github.com/verilator/verilator
- **Examples**: https://github.com/verilator/verilator/tree/master/examples

## Competition Usage

### Phase 1: Basic Verification
- Syntax checking
- Functional simulation
- Basic testbench validation

### Phase 2: Advanced Testing
- Performance simulation
- Complex test scenarios
- Coverage analysis

---

*Fast and reliable simulator - Essential for all design phases*
