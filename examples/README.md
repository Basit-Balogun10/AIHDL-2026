# AI-HDL Examples and Templates

This directory contains example designs, templates, and reference implementations to help you get started with AI-assisted hardware design.

## 📁 Directory Structure

```
examples/
├── basic_modules/           # Simple Verilog modules for learning
├── ai_prompts/             # Example AI prompts and conversations
├── testbenches/            # Testbench examples
├── design_ideas/           # Common hardware design ideas
├── optimization/           # Examples of optimized designs
├── fpga_projects/          # Complete FPGA implementation examples
└── team_submissions/       # Anonymized examples from previous years
```

## 🎯 How to Use These Examples

### For Beginners
1. **Start with `basic_modules/`** - Simple gates and arithmetic circuits
2. **Study the `testbenches/`** - Learn verification techniques
3. **Try `ai_prompts/`** - See effective prompting strategies
4. **Practice with templates** - Use provided starting points

### For Advanced Users
1. **Explore `design_patterns/`** - Learn reusable design techniques
2. **Study `optimization/`** - See power, area, and timing improvements
3. **Review `fpga_projects/`** - Complete implementation workflows
4. **Analyze `team_submissions/`** - Learn from successful competition entries

## 🚀 Quick Start Examples

### 1. Basic Logic Gates
```bash
cd basic_modules/logic_gates
iverilog -o gates gates.v gates_tb.v
./gates
gtkwave gates.vcd
```

### 2. Simple Counter
```bash
cd basic_modules/counter
iverilog -o counter counter.v counter_tb.v
./counter
gtkwave counter.vcd
```

### 3. AI-Generated Multiplier
```bash
cd ai_prompts/multiplier_example
# Review the AI conversation log
cat ai_conversation.md
# Test the generated design
iverilog -o multiplier multiplier.v multiplier_tb.v
./multiplier
```

## 📚 Learning Modules

### Module 1: Digital Logic Fundamentals
**Location**: `basic_modules/logic_gates/`
- AND, OR, NOT, XOR gates
- Multiplexers and demultiplexers
- Encoders and decoders
- Basic combinational circuits

### Module 2: Sequential Logic
**Location**: `basic_modules/sequential/`
- Flip-flops and latches
- Counters and shift registers
- State machines
- Clock domain considerations

### Module 3: Arithmetic Circuits
**Location**: `basic_modules/arithmetic/`
- Adders (ripple-carry, carry-lookahead)
- Subtractors and comparators
- Multipliers (array, booth)
- Division circuits

### Module 4: AI-Assisted Design
**Location**: `ai_prompts/`
- Effective prompting techniques
- Iterative design refinement
- AI-generated optimization
- Debugging with AI assistance

## 💡 Ideas for Additional Peripherals

This section lists potential peripherals that teams can implement or extend as part of the TinyQV project.  
They are modular: some are **simple** and good for quick wins, while others are **complex** and earn innovation points.

### 1. UART / Serial Interface
- **Purpose:** Provides a communication/debug link via serial RX/TX.  
- **Benefits:** Essential for testing, allows program loading or simple I/O.  
- **Complexity:** Low to medium.  
- **Considerations:**  
  - Buffer management to avoid overflow.  
  - Baud rate control for timing accuracy.  
  - Add enable/disable logic to save power.  


### 2. SPI or I²C Controller
- **Purpose:** Interfaces with off-chip devices like sensors or EEPROMs.  
- **Benefits:** Realistic SoC peripheral; enables expansion.  
- **Complexity:** Medium.  
- **Considerations:**  
  - Mode selection (master/slave, fast/slow).  
  - Arbitration logic (for I²C).  
  - Protect against glitch attacks or unintended bus driving.  

### 3. PWM Generator / Timer
- **Purpose:** Produces periodic signals for motor control, LEDs, etc.  
- **Benefits:** Tests timer and interrupt logic.  
- **Complexity:** Simple logic.  
- **Considerations:**  
  - Avoid counter overflow bugs.  
  - Clock gating when idle.  
  - Use watchdog features to prevent runaway states.  


### 4. AES / Crypto Accelerator
- **Purpose:** Hardware block for encryption/decryption.  
- **Benefits:** Great for security-oriented teams; demonstrates hardware acceleration.  
- **Complexity:** Medium to high.  
- **Considerations:**  
  - Constant-time implementation to resist side-channels.  
  - Manage power overhead (crypto engines are expensive).  
  - Integrate with memory-mapped registers.  


### 5. CRC / Checksum Unit
- **Purpose:** Computes cyclic redundancy check for data validation.  
- **Benefits:** Lightweight but widely used in communication protocols.  
- **Complexity:** Medium.  
- **Considerations:**  
  - Add fault injection tests.  
  - Ensure polynomial logic is parameterizable.  
  - Document error coverage rates.  


### 6. DMA Controller
- **Purpose:** Automates data transfers between memory and peripherals.  
- **Benefits:** Adds realism to SoC flow; useful in performance evaluation.  
- **Complexity:** High (requires bus arbitration).  
- **Considerations:**  
  - Memory protection (avoid overwriting critical regions).  
  - Ensure correctness under simultaneous transfers.  
  - Add a simple priority mechanism.  


### 7. GPIO Controller / Expander
- **Purpose:** Provides general-purpose I/O pins.  
- **Benefits:** Easy to test and expand functionality.  
- **Complexity:** Low.  
- **Considerations:**  
  - Input debouncing for switches.  
  - Output protection to avoid short-circuits.  
  - Restrict access to sensitive pins.  


### 8. Watchdog Timer
- **Purpose:** Resets system if not serviced periodically.  
- **Benefits:** Classic embedded feature, introduces reliability.  
- **Complexity:** Low.  
- **Considerations:**  
  - Ensure it cannot be disabled maliciously.  
  - Document timeout programming model.  
  - Optimize area for minimal overhead.  


### 9. FIFO / Queue Buffer
- **Purpose:** Buffers data between producer and consumer.  
- **Benefits:** Tests handshakes and backpressure.  
- **Complexity:** Medium.  
- **Considerations:**  
  - Protect against overflow/underflow.  
  - Ensure back-to-back transfer performance.  
  - Verify with corner-case stress tests.  


### 10. Interrupt Controller
- **Purpose:** Manages and prioritizes multiple interrupt sources.  
- **Benefits:** Adds system realism; teaches interrupt handling.  
- **Complexity:** Medium.  
- **Considerations:**  
  - Secure masking/unmasking of interrupts.  
  - Prevent privilege escalation through spurious interrupts.  
  - Ensure deterministic latency.  


✅ **Guidance for Teams**  
- Start with **simple peripherals** (GPIO, Timer, FIFO) if new to RTL design.  
- Attempt **complex ones** (DMA, Crypto, Interrupt Controller) for innovation and higher competition scoring.  


## 🔧 AI Prompting Examples

### Effective Prompt Structure
```
Context: I'm designing a [type] module for [application]
Requirements: 
- Input: [specifications]
- Output: [specifications]  
- Constraints: [timing, area, power]
- Special considerations: [any unique requirements]

Please generate Verilog code that:
1. [Specific requirement 1]
2. [Specific requirement 2]
3. [Specific requirement 3]

Include comments explaining the design decisions.
```

### Example Conversations
**Location**: `ai_prompts/conversations/`
- **Basic ALU Design**: Step-by-step AI-assisted design
- **Memory Controller**: Complex interface design with AI
- **Optimization Session**: Using AI for performance tuning
- **Debugging Help**: AI-assisted troubleshooting



## 🔍 Code Quality Guidelines

### Verilog Style
- **Consistent naming**: Use descriptive names
- **Proper indentation**: 4 spaces or 1 tab
- **Comments**: Explain design decisions, not syntax
- **Modularity**: Break complex designs into smaller modules

### Testbench Best Practices
- **Comprehensive coverage**: Test all functionality
- **Edge cases**: Include boundary conditions
- **Self-checking**: Automatic pass/fail determination
- **Readable output**: Clear success/failure messages

### AI Integration
- **Document prompts**: Save all AI interactions
- **Verify results**: Never use AI code without understanding
- **Iterate intelligently**: Refine prompts based on results
- **Learn patterns**: Understand what makes prompts effective

## 📞 Getting Help

### Using Examples
- **Discord**: #examples-help channel
- **Issues**: Report problems with examples
- **Discussions**: Ask questions about design patterns

### Contributing Examples
- **Submit improvements**: Help make examples better
- **Share success stories**: Contribute your own examples
- **Suggest additions**: What examples would be helpful?

## 🏆 Challenge Integration

### Preparation Strategy
1. **Study relevant examples** before each challenge
2. **Practice similar problems** using provided templates
3. **Experiment with AI prompts** using example conversations
4. **Build on patterns** rather than starting from scratch

### During Challenges
1. **Reference examples** for guidance (don't copy directly)
2. **Use templates** as starting points
3. **Apply learned patterns** to new problems
4. **Document your process** similar to provided examples

---

Remember: These examples are learning tools, not solutions to copy. Use them to understand concepts, learn techniques, and develop your own problem-solving approaches!

*Last updated: [9/26/2025] | Version: 1.1*
