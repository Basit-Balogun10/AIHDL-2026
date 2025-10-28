# AI-HDL 2025-2026 Challenges

Welcome to the challenge directory for AI-HDL 2025-2026! This directory contains all the competition challenges that teams will work on throughout the league.

## Challenge Structure

Each challenge is organized in its own directory with the following structure:

```
challenge-X/
├── README.md              # Challenge description and requirements
├── specifications/        # Detailed technical specifications
├── testbenches/          # Verification test benches
├── reference/            # Reference materials and examples
├── submission-template/  # Template for team submissions
└── evaluation/           # Evaluation criteria and rubrics
```

## Challenges Overview

### 🎯 Design phase 1: Additional Module Synthesis
- **Week 1:** Project Kickoff & Base Integration
- **Week 2:** Module Development & Unit Testing
- **Week 3:** Integration & Full-Core Simulation
- **Week 4:** Final Verification & Milestone Prep
- **Focus**: Basic digital design with AI assistance  
- **Skills**: Verilog fundamentals, AI prompting, FPGA implementation

### 🎯 Design phase 2:  PPA Optimization 
- **Week 5:** Baseline Analysis & Optimization Planning
- **Week 6:** Implementation of Performance Improvements
- **Week 7:** Power Optimization & Fine-Tuning
- **Week 8:** Final PPA Review & Milestone Prep
- **Focus**: Complex functionality and optimization  
- **Skills**: Advanced Verilog, performance optimization, verification

### 🎯 Design phase 3: Security & Vulnerability Optimization
- **Week 9:** Project Kickoff & Base Integration
- **Week 10:** Implementing Security Features
- **Week 11:** Validation & Hardening
- **Week 12:** Documentation & Milestone Prep
- **Focus**: Hardware security and creative AI usage  
- **Skills**: Security-aware design, innovative AI applications, comprehensive testing

### 🎯 Design phase 4: RTL to GDSII Implementation
- **Week 13:** Synthesis & Floorplanning
- **Week 14:** Placement, CTS & Routing
- **Week 15:** Sign-off Verification (Timing, DRC/LVS, Power)
- **Week 16:** Final PPA Review & Milestone Prep
- **Focus**: Hardware security and creative AI usage  
- **Skills**: Security-aware design, innovative AI applications, comprehensive testing

## Getting Started

1. **Choose Your Challenge**: Start with Design phase 1 and progress sequentially
2. **Read the Specifications**: Carefully review all requirements in the challenge directory
3. **Set Up Your Environment**: Use the provided Docker container or install tools locally
4. **Begin Design**: Use AI tools to generate your initial design
5. **Verify and Test**: Run the provided test benches
6. **Submit**: Follow the submission template in each challenge

## Submission Guidelines

### Required Files
- **Design Files**: All Verilog source code
- **AI Interaction Logs**: Complete records of AI tool usage
- **Test Results**: Verification and FPGA implementation results
- **Documentation**: Design decisions and methodology
- **Team Report**: Summary of approach and lessons learned

### Submission Format
```
team-name-challenge-X/
├── src/                  # Verilog source files
├── testbench/           # Custom test benches (if any)
├── logs/                # AI interaction logs
├── results/             # Simulation and FPGA results
├── docs/                # Design documentation
└── README.md            # Team submission summary
```

## Grading Schema

The AI-HDL competition employs a progressive elimination grading scheme across four design phases (DP1–DP4). Each phase is graded independently according to its rubric, with only the strongest teams advancing to the next stage. At the end of the competition, cumulative performance determines the final ranking and winners.

##	**Phase-Based Evaluation and Elimination**
**Design Phase 1** 
      - 	**Weight**: 20% of total score
      - 	**Cutoff**: Bottom 25–30% of teams eliminated based on functionality, verification success, and documentation completeness.
      - 	**Advancement Criteria**: Teams must demonstrate a functional, synthesizable RTL with successful testbench results.

**Design Phase 2** 
      - 	**Weight**: 25% of total score
      - 	**Cutoff**: Another 25% of teams eliminated based on failure to achieve measurable improvements in power, performance, or area (PPA).
      - 	**Advancement Criteria**: Teams must provide clear before/after metrics and maintain correctness after optimizations.

**Design Phase 3**
      - 	**Weight:** 25% of total score
      - 	**Cutoff:** Only the top 6–8 teams (depending on participation size) advance to the final phase. Eliminations are based on weak or incomplete security reviews, lack of meaningful countermeasures, or regression    failures.
      - 	**Advancement Criteria:** Teams must implement and validate at least one major security feature, provide a structured vulnerability analysis, and maintain functional correctness.

**Design Phase 4** (DP4: RTL-to-GDSII & Tapeout)
      - 	**Weight:** 30% of total score
      - 	**Final Evaluation:** The last stage evaluates complete implementation, sign-off quality, manufacturability, and final reporting.
      - 	**Winners:** Final cumulative scores determine the Top 3 Teams, who are announced as the winners during the closing ceremony.

###	**Final Scoring Distribution**
| Phase | Focus Area | Weight | Elimination Rule |
|------|--------|--------|--------|  			 
| DP1 | Module Implementation & Verification |	20%	| Bottom ~25–30% eliminated |
| DP2 |	PPA Optimization	| 25% |	Next ~25% eliminated |
| DP3	| Security Hardening	| 25%	| Only top 6–8 teams advance | 
| DP4 |	Physical Design & Tapeout	| 30% |	Final ranking (Top 3 selected) |

---

###	**Final Selection**
   •	The Top 3 teams are selected after DP4 based on their cumulative weighted score across all phases.
   •	Judges may award honorable mentions for exceptional innovation, documentation, or creative use of AI/LLMs in the design process, even if the team does not reach the Top 3.

###	**Bonus Opportunities:** Some unrequired achievements can earn bonus points (could tip the score above 100% in exceptional cases):
   •	Actually getting silicon back and demonstrating it working (if timeline permits – likely not within competition timeframe, but if competition later showcases it, that’s huge).
   •	Excellent open-source contribution: e.g., the team wrote a new feature for OpenROAD and used it.
   •	Going multi-core or multi-voltage design or other advanced ideas beyond scope.

###	**Grade Deductions**: On the flip side, certain failures can cost a lot of points:
   •	A design that doesn’t synthesize or doesn’t simulate correctly at final submission would fail the Functional criteria heavily, possibly disqualify.
   •	Not submitting a GDS or failing DRC/LVS means the design isn’t manufacturable, that’s a severe hit in Physical Implementation score.
   •	Not following the specified format (missing sections in documentation, missing citations, etc.) will reduce the Documentation score.
   •	Missing deadlines severely or requiring intervention to complete tasks might also reflect in scoring indirectly (as their results likely suffer).

## Special Recognition Categories

- 🛡️ **Most Secure Design**: Best security considerations
- ⚡ **Best Energy-Efficient Design**: Optimal power consumption
- 📐 **Best Area-Efficient Design**: Minimal resource usage
- 🎨 **Most Creative AI Usage**: Innovative AI tool application
- 👥 **Best Team Collaboration**: Outstanding teamwork


## Support

Need help with challenges? Here are your options:

- 💬 **Discord**: Join the #challenges channel for real-time help
- 👥 **Mentor Meetings**: Weekly 1-on-1 sessions with assigned mentors  
- 🕐 **Office Hours**: Weekly virtual sessions (schedule TBD)


## Fair Play and Academic Integrity

- **AI Tool Usage**: All AI interactions must be logged and submitted
- **Team Collaboration**: Work within your assigned team only
- **Original Work**: Designs must be original (not copied from existing projects)
- **Resource Usage**: Only use approved tools and resources
- **Help Seeking**: Mentor guidance is encouraged; peer team help is not allowed


