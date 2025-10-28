# OpenSTA Setup and Documentation

OpenSTA is a gate level static timing verifier used for analyzing timing paths in digital circuits.

## Installation

### From Source
```bash
git clone https://github.com/The-OpenROAD-Project/OpenSTA.git
cd OpenSTA
mkdir build && cd build
cmake ..
make
```

### Using Package Managers

#### Ubuntu/Debian
```bash
sudo apt update
sudo apt install opensta
```

#### macOS
```bash
brew install opensta
```

## Basic Usage

### Command Line Interface
```bash
sta script.tcl
```

### Basic Timing Analysis Script
```tcl
# Read libraries and design
read_liberty liberty_file.lib
read_verilog design.v
link_design top_module

# Create clock
create_clock -period 10.0 [get_ports clk]

# Set input/output delays
set_input_delay 2.0 -clock clk [all_inputs]
set_output_delay 3.0 -clock clk [all_outputs]

# Report timing
report_checks -path_delay max
report_checks -path_delay min
```

## AI-HDL Integration

### For Design Phase 3 (Timing Optimization)
- Critical path analysis
- Setup/hold time verification
- Clock domain analysis
- Performance validation

### Key Commands for Competition

#### Timing Reports
```tcl
# Critical path analysis
report_checks -path_delay max -endpoint_count 10

# Slack analysis
report_worst_slack -max
report_worst_slack -min

# Clock analysis
report_clock_skew
report_clock_properties
```

#### Constraint Setting
```tcl
# Clock constraints
create_clock -period $CLOCK_PERIOD [get_ports $CLOCK_PORT]

# I/O constraints
set_input_delay $INPUT_DELAY -clock $CLOCK_NAME [all_inputs]
set_output_delay $OUTPUT_DELAY -clock $CLOCK_NAME [all_outputs]

# Drive strengths
set_driving_cell -lib_cell $DRIVING_CELL [all_inputs]
set_load $LOAD_VALUE [all_outputs]
```

## Analysis Types

### Setup Time Analysis
- Maximum delay paths
- Critical path identification
- Slack calculation

### Hold Time Analysis
- Minimum delay paths
- Hold violations
- Data stability

### Power Analysis
- Switching activity
- Dynamic power estimation
- Clock power analysis

## Optimization Guidelines

### For Competition Use
1. **Define proper constraints**
2. **Analyze critical paths**
3. **Identify bottlenecks**
4. **Guide synthesis optimization**
5. **Validate performance goals**

### Timing Closure
```tcl
# Iterative timing closure
while {[get_worst_slack -max] < 0} {
    # Identify critical paths
    set critical_paths [get_timing_paths -max_paths 10]
    
    # Report suggestions
    report_checks -path_delay max -format full
    
    # Manual optimization needed
    break
}
```

## Resources

- **Official Repository**: https://github.com/The-OpenROAD-Project/OpenSTA
- **Documentation**: https://github.com/The-OpenROAD-Project/OpenSTA/tree/master/doc
- **Liberty Format**: IEEE 1364.1 Standard
- **Timing Constraints**: Synopsys Design Constraints (SDC)

## Best Practices

### Constraint Writing
- Define all clocks properly
- Set realistic I/O delays
- Include process variations
- Consider operating conditions

### Analysis Flow
1. Read design and libraries
2. Define timing constraints
3. Run timing analysis
4. Review critical paths
5. Optimize if needed

---

*Essential for timing verification in Design Phase 3*
