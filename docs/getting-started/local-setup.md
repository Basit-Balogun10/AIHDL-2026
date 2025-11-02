# Local Development Environment Setup

This guide will help you set up all the necessary tools for AI-HDL on your local machine.

## 📋 Required Tools

### Essential Tools
- **Icarus Verilog**: Open-source Verilog simulator
- **GTKWave**: Waveform viewer
- **Yosys**: Open-source synthesis tool
- **Python 3.8+**: For AI integration and utilities
- **Git**: Version control
- **Text Editor**: VS Code, Vim, or your preferred editor

### Optional Tools
- **Verilator**: Fast Verilog simulator
- **OpenROAD**: Open-source place and route tools

## 🖥️ Installation by Platform

### Windows

#### Option 1: Using Package Managers (Recommended)
```powershell
# Install Chocolatey (if not already installed)
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install tools
choco install git python3 vscode
choco install iverilog gtkwave
```

#### Option 2: Manual Installation
1. **Python**: Download from https://python.org
2. **Git**: Download from https://git-scm.com
3. **Icarus Verilog**: Download from http://bleyer.org/icarus/
4. **GTKWave**: Download from https://gtkwave.sourceforge.net/
5. **VS Code**: Download from https://code.visualstudio.com

### macOS

#### Using Homebrew (Recommended)
```bash
# Install Homebrew (if not already installed)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install tools
brew install icarus-verilog gtkwave yosys python3 git
brew install --cask visual-studio-code
```

### Linux (Ubuntu/Debian)

```bash
# Update package list
sudo apt update

# Install essential tools
sudo apt install -y iverilog gtkwave yosys python3 python3-pip git

# Install VS Code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install code
```

### Linux (CentOS/RHEL/Fedora)

```bash
# For Fedora
sudo dnf install iverilog gtkwave python3 python3-pip git

# For CentOS/RHEL (enable EPEL first)
sudo yum install epel-release
sudo yum install iverilog gtkwave python3 python3-pip git
```

## 🐍 Python Setup

### Install Required Packages
```bash
# Create virtual environment (recommended)
python3 -m venv aihdl-env
source aihdl-env/bin/activate  # Linux/macOS
# or
aihdl-env\Scripts\activate     # Windows

# Install AI libraries
pip install openai anthropic
pip install jupyter notebook pandas matplotlib
pip install cocotb pytest
```

### Create AI Integration Script
```python
# save as ai_helper.py
import openai
import json
from datetime import datetime

class AIHDLHelper:
    def __init__(self, api_key=None):
        if api_key:
            openai.api_key = api_key
    
    def log_conversation(self, prompt, response, model="gpt-4"):
        log_entry = {
            "timestamp": datetime.now().isoformat(),
            "model": model,
            "prompt": prompt,
            "response": response
        }
        
        with open("ai_log.jsonl", "a") as f:
            f.write(json.dumps(log_entry) + "\n")
    
    def generate_verilog(self, description):
        prompt = f"""
        Generate Verilog code for: {description}
        
        Requirements:
        - Include proper module declaration
        - Add comprehensive comments
        - Follow good coding practices
        - Include basic testbench if appropriate
        """
        
        # Use your preferred AI API here
        # response = openai.ChatCompletion.create(...)
        
        return "// Generated Verilog code would go here"
```

## 🔧 Tool Configuration

### VS Code Extensions
Install these helpful extensions:
- **Verilog-HDL/SystemVerilog**: Syntax highlighting
- **TerosHDL**: Advanced HDL support
- **Python**: Python development
- **GitLens**: Enhanced Git integration

### GTKWave Configuration
Create a `.gtkwaverc` file in your home directory:
```
# GTKWave configuration
set initial_window_x 100
set initial_window_y 100
set initial_window_width 1200
set initial_window_height 800
```

### Git Configuration
```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
git config --global init.defaultBranch main
```

## ✅ Verification

### Test Your Installation

1. **Test Icarus Verilog**:
```bash
echo 'module test; initial begin $display("Hello, World!"); $finish; end endmodule' > test.v
iverilog -o test test.v
./test  # Should print "Hello, World!"
rm test test.v
```

2. **Test Python**:
```bash
python3 -c "import sys; print(f'Python {sys.version}')"
python3 -c "import json, datetime; print('Python libraries OK')"
```

3. **Test Git**:
```bash
git --version
```

### Create Test Project
```bash
# Create a simple test project
mkdir aihdl-test
cd aihdl-test

# Create simple Verilog file
cat > and_gate.v << 'EOF'
module and_gate (
    input wire a,
    input wire b,
    output wire y
);
    assign y = a & b;
endmodule
EOF

# Create testbench
cat > and_gate_tb.v << 'EOF'
module and_gate_tb;
    reg a, b;
    wire y;
    
    and_gate uut (.a(a), .b(b), .y(y));
    
    initial begin
        $dumpfile("and_gate.vcd");
        $dumpvars(0, and_gate_tb);
        
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        
        $finish;
    end
    
    initial begin
        $monitor("Time: %0t, a=%b, b=%b, y=%b", $time, a, b, y);
    end
endmodule
EOF

# Compile and run
iverilog -o and_gate and_gate.v and_gate_tb.v
./and_gate

# View waveform (if GUI available)
gtkwave and_gate.vcd

echo "Test completed successfully!"
```

## 🚨 Troubleshooting

### Common Issues

**"Command not found" errors**:
- Ensure tools are in your PATH
- Restart terminal after installation
- On Windows, check environment variables

**Permission errors on Linux/macOS**:
```bash
# Make sure you have proper permissions
chmod +x ./simulation_executable
```

**Python import errors**:
```bash
# Make sure you're in the right virtual environment
which python3
pip list
```

**GTKWave won't start**:
- On Windows: Check if you have X11 server or use WSL
- On macOS: Install XQuartz if needed
- On Linux: Install X11 libraries

### Getting Help

- **Discord**: #setup-help channel
- **Email**: aihdl-setup@arizona.edu
- **Documentation**: Check our FAQ section
- **Community**: Ask in discussions

## 📚 Next Steps

After successful installation:

1. **Complete the tutorial**: [Getting Started Guide](./README.md)
2. **Try the examples**: Explore the examples directory
3. **Join Discord**: Connect with the community
4. **Form a team**: Find teammates for the competition
5. **Practice AI integration**: Start experimenting with AI-assisted design

## 🔄 Updates and Maintenance

### Keeping Tools Updated

```bash
# Update Homebrew packages (macOS)
brew update && brew upgrade

# Update apt packages (Ubuntu/Debian)
sudo apt update && sudo apt upgrade

# Update pip packages
pip install --upgrade openai anthropic jupyter
```

### Version Compatibility

| Tool | Minimum Version | Recommended |
|------|----------------|-------------|
| Python | 3.8 | 3.11+ |
| Icarus Verilog | 10.3 | Latest |
| GTKWave | 3.3.100 | Latest |
| Git | 2.20 | Latest |

---

*Need help with setup? Join our Discord community or email aihdl-setup@arizona.edu*

*Last updated: November 02, 2025 | Version: 1.0*
