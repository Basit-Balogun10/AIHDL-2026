# Design Phase 2:  PPA Optimization

## Overview
This phase is dedicated to optimizing the core’s **Power, Performance, and Area (PPA)** metrics.

## Timeline
- **Start**: February 2, 2026
- **Milestone Review**: February 26, 2026
- **Office Hours**: February 26, 2026


## Week 1: Baseline Analysis & Optimization Planning
**Objectives**
- Analyze the baseline core design (from DP1) to identify performance bottlenecks, high power-consuming sections, and area-heavy components.  
- Set specific PPA improvement targets (e.g., reduce area by 10%, increase max clock frequency by X MHz, or lower power by Y%).  
- Develop a plan of which optimization techniques to apply (such as pipelining, logic simplification, or clock gating).  

**Expected Deliverables**
- PPA analysis report of the DP1 design (timing slack, total cell area, estimated power consumption).  
- A list of planned optimizations for each identified issue.  
- Defined metrics for measuring success.  
 

**Mentor Check-in Prompts**
- Has the team identified primary PPA issues?  
- Do they have quantifiable improvement goals?  
- What optimization strategies are being considered?  
- Do they need guidance on timing/power analysis tools?  


## Week 2: Implementation of Performance Improvements
**Objectives**
- Apply optimizations aimed at improving performance and area.  
- Techniques may include RTL restructuring, pipelining, or optimized arithmetic operators.  
- Ensure changes do not break functionality by re-running regression tests.  

**Expected Deliverables**
- Updated RTL with initial performance-oriented optimizations.  
- Evidence of improvements: higher clock frequency, reduced logic levels.  
- Before-and-after comparison of key metrics (slack, path depth, cell count).  
- All regression tests passing.  

**Mentor Check-in Prompts**
- Which optimizations were completed this week?  
- What improvements are seen in metrics?  
- Are all original test cases still passing?  
- Have trade-offs been documented?  


## Week 3: Power Optimization & Fine-Tuning
**Objectives**
- Implement power-saving techniques such as clock gating, logic gating, or low-power memory usage.  
- Fine-tune earlier optimizations to balance performance and power.  
- Verify stability of PPA improvements.  

**Expected Deliverables**
- Updated RTL with power-saving features.  
- Mid-week power report showing before/after gating improvements.  
- Final RTL with stable PPA profile, regression tests passing.  
- Updated PPA summary with improvements vs. DP1 baseline.  

**Mentor Check-in Prompts**
- How much power reduction has been achieved?  
- Did optimizations affect timing or area?  
- Are trade-offs balanced according to plan?  
- Are regression tests being re-run regularly?  


## Week 4: Final PPA Review & Milestone Prep
**Objectives**
- Consolidate optimizations and prepare for Milestone Review #2.  
- Freeze the RTL for the optimized core.  
- Measure final metrics and ensure robustness.  
- Document all results and methodology.  

**Expected Deliverables**
- Final optimized core RTL (tagged for DP2 completion).  
- Comparison report: improvements in timing, area, and power vs. DP1.  
- All functional and regression tests passing.  
- Write-up of optimization techniques and trade-offs.  

**Mentor Check-in Prompts**
- Does the optimized design meet specifications and constraints?  
- Do results align with Week 1 targets?  
- Is all optimization work documented clearly?  
- Is the team ready to transition to DP3 (Security & Vulnerability Optimization)?  

## Tools
- *Open-Source*: Yosys with STA scripts, OpenSTA for timing analysis, Verilator with VCDs for power estimation.  
- *Cadence*: Genus, Joules, Innovus (for physical PPA estimates). 

## Key Focus Areas
- Feature enhancement and expansion
- Advanced functionality implementation
- Performance improvements
- Verification and testing expansion

## Evaluation Criteria (DP2)

| Category                 | Weight | Criteria                                                                 |
|--------------------------|--------|--------------------------------------------------------------------------|
| **Baseline PPA Analysis** | 15%    | Clear reporting of timing, area, and power from DP1 design; identification of bottlenecks. |
| **Performance Optimization** | 25% | Evidence of measurable improvements (timing closure, pipeline stages, reduced critical path depth). |
| **Power Optimization**   | 25%    | Implementation of power-saving techniques (clock gating, enable signals); reduction in switching activity. |
| **Trade-off Justification** | 15% | Documentation of trade-offs (timing vs. area, power vs. complexity); rational decision-making. |
| **Final Results & Reporting** | 20% | Before/after comparisons; improvement percentages; regression test coverage. |


## Resources
**Links to be added soon**
- [Advanced Verilog Techniques]
- [Feature Implementation Guides]
- [Testing and Verification]
  
## Support
- Weekly mentor meetings
- Office hours on February 26, 2026
- Discord community support

---

*This folder will contain all materials and submissions related to Design Phase 2*
