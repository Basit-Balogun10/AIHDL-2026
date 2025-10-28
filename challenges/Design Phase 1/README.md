# Design Phase 1: Initial Design Implementation & Additional Module Synthesis


## Overview
This phase focuses on the foundational design implementation where teams create their initial hardware design by implementing additional modules to complete the base design and ensuring the core’s baseline functionality is verified using AI tools.

## Timeline
- **Start**: January 2, 2026
- **Milestone Review**: January 29, 2026
- **Office Hours**: January 29, 2026


## Week 1: Project Kickoff & Base Integration
**Objectives**
- Understand the provided project description and base architecture.  
- Identify which additional modules or features need to be synthesized and integrated into the core design.  
- Set up the development environment and version control for the team.  

**Expected Deliverables**
- A clear list of required sub-modules/features to implement.  
- An initial project plan (e.g. block diagram of the core with new modules).  
- A working toolchain setup.  
- By end of week: a basic Verilog skeleton (LLM-generated) for the core and placeholders for new modules.  

**Mentor Check-in Prompts**
- Did the team review the device’s specification and understand all required functions?  
- Have they listed all additional modules to implement?  
- Was a “hello world” simulation run on the base design using provided testbenches?  
- Do they need help with tool installation or LLM prompting for HDL code?
  

## Week 2: Module Development & Unit Testing
**Objectives**
- Begin coding the additional modules identified.  
- Focus on one module at a time: generate Verilog via AI, integrate, and perform unit tests.  
- Ensure each module’s interface aligns with the overall core design.  

**Expected Deliverables**
- Verilog code for at least one or two new modules integrated into the project.  
- Basic testbenches for each new module.  
- Logs of LLM prompts used to generate code (for documentation).  
- Integration of modules into the top-level core, with stub connections resolved.  

**Mentor Check-in Prompts**
- What progress has been made on coding the new modules?  
- Are the module testbenches passing?  
- How is integration into the core going (any mismatches or challenges)?  
- Did LLM-generated code require manual fixes?  


## Week 3: Integration & Full-Core Simulation
**Objectives**
- Complete integration of all additional modules into the core.  
- Verify the full design’s functionality with the provided testbench.  
- Refine Verilog code to resolve bugs.  
- Review synthesis results for synthesizability.  

**Expected Deliverables**
- Fully integrated RTL with all additional modules.  
- Passing results for most (or all) functional test cases.  
- Simulation reports/waveforms showing correct operations.  
- Initial synthesis report (from Yosys or Genus) with baseline area/timing.  

**Mentor Check-in Prompts**
- Does the integrated design pass all testbench scenarios?  
- If not, what debugging is ongoing?  
- Was a trial synthesis performed (any issues like unmapped logic)?  
- How is documentation and code quality being maintained?  


## Week 4: Final Verification & Milestone Prep
**Objectives**
- Perform final verification of functionality.  
- Fix lingering bugs and refine module implementations.  
- Prepare for Milestone Review #1.  
- Finalize documentation (design overview, verification results, LLM prompt logs).  

**Expected Deliverables**
- Fully functional RTL (with additional modules) ready for MR#1 submission.  
- Passing results for all provided testbenches.  
- DP1 report/checklist of implemented modules and results.  
- Updated project plan for the next phase.  
- Repository updated with documented code and test results, tagged for DP1 completion.

**Mentor Check-in Prompts**
- Is the core design meeting functionality expectations?  
- Have all provided/custom tests been executed and passed?  
- Is documentation complete and updated?  
- Is the team prepared for the next optimization phase?  


## Tools
- *Open-Source*: Verilator (simulation), Yosys (initial synthesis trials).  
- *Cadence*: Xcelium (simulation), Genus (synthesis).  
- *Required*: LLMs like ChatGPT to generate HDL code.  

## Evaluation Criteria 

| Category                        | Weight | Criteria                                                                 |
|---------------------------------|--------|--------------------------------------------------------------------------|
| **Module Implementation**       | 30%    | Completeness of added modules; correctness of Verilog code; proper integration into the core. |
| **Verification & Testing**      | 25%    | Passing provided testbenches; additional custom tests; quality of simulation reports/waveforms. |
| **Synthesis Readiness**         | 15%    | RTL synthesizable without errors; baseline synthesis report included (area/timing). |
| **Documentation & Planning**    | 20%    | Clear project plan, block diagrams, LLM prompt logs, and design documentation. |
| **Code Quality & Repository Management** | 10% | Use of GitHub tags, clean commits, comments, and consistent style. |


## Resources
**Links to be added soon**
- [AI Prompting Guidelines]
- [Verilog Best Practices]
- [Simulation Tools Setup]

## Support
- Weekly mentor meetings
- Office hours on January 29, 2026
- Discord community support

---

*This folder will contain all materials and submissions related to Design Phase 1*
