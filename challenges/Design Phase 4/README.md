# Design Phase 4: Final Design Tape-out Preparation

## Overview
This phase  is the final stage where teams take the verified RTL and go through the digital implementation flow to produce a GDSII layout – essentially preparing the chip for tape-out. The focus is on synthesis, floorplanning, place-and-route, timing closure, and sign-off checks.

## Timeline
- **Start**: April 1, 2026
- **Milestone Review**: April 23, 2026
- **Office Hours**: April 23, 2026
- **Final Submission**: May 1, 2026


## Week 1: Synthesis & Floorplanning
**Objectives:**
- Perform final synthesis with proper constraints (clocks, IOs, target frequency).
- Begin floorplanning: define chip/core boundary, place IOs, allocate regions for macros/memories, and set up power/ground rings.

**Expected Deliverables:**
- Synthesized netlist (gate-level).
- Initial floorplan diagrams with power rails, IO placement, and block annotations.
- Reports: post-synthesis timing, area utilization.
- List of issues (if any) and mitigation strategies.

**Tools:**
- **Open-Source:** Yosys + OpenLANE/OpenROAD (synthesis & floorplan).
- **Cadence:** Genus (synthesis), Innovus (floorplan), Virtuoso/KLayout (viewing).

**Mentor Check-in Prompts:**
- Any synthesis surprises (timing failures, area growth)?
- Are constraints (clocks, multicycle/false paths) defined?
- Is floorplan area adequate with routing margin?
- Was a power strategy established (power rings, straps, pads)?


## Week 2: Placement, CTS & Routing
**Objectives:**
- Place standard cells, perform Clock Tree Synthesis (CTS), and execute routing.
- Optimize placement of critical cells.
- Resolve routing congestion and DRC violations.

**Expected Deliverables:**
- Fully placed-and-routed layout (tool DB + GDSII export).
- Reports: post-placement timing, post-routing timing/slack, DRC results.
- Clock tree statistics (skew, insertion delay).
- Layout visualization screenshot.

**Tools:**
- **Open-Source:** OpenROAD (placement, CTS, routing).
- **Cadence:** Innovus (placement, CTS, routing), Tempus (timing), Pegasus/Calibre (DRC).

**Mentor Check-in Prompts:**
- Is timing met post-placement and routing?
- Any worst-case timing violations? Mitigation plan?
- Clock tree quality – skew/latency acceptable?
- Any remaining DRC violations? How are they fixed?
- Is utilization balanced without excessive congestion?


## Week 3: Sign-off Verification (Timing, DRC/LVS, Power)
**Objectives:**
- Perform sign-off checks: multi-corner STA, DRC, LVS, IR drop/power analysis.
- Ensure layout matches schematic and meets fabrication rules.
- Generate final PPA metrics post-layout.

**Expected Deliverables:**
- Final STA report (all constraints met or documented exceptions).
- DRC and LVS reports (goal: clean).
- Power analysis report (total consumption, hotspots).
- Final GDSII and manufacturing package files.
- Final post-layout PPA summary.

**Tools:**
- **Open-Source:** Magic/KLayout (DRC/LVS), OpenSTA (timing).
- **Cadence:** Tempus (STA), Voltus (power/IR drop), Pegasus/Calibre (sign-off DRC), Conformal (LVS/equivalence).

**Mentor Check-in Prompts:**
- Does layout meet timing at all required corners?
- Any residual DRC issues? How were they addressed?
- LVS clean – layout vs schematic matches?
- Power consumption acceptable for use-case?
- Is design manufacturable and tapeout-ready?


## Week 4: Final Tape-out Package & Submission
**Objectives:**
- Assemble the final tape-out package: design files, reports, and documentation.
- Prepare the final project report and optional presentation materials.
- Verify all required files are included and correct.

**Expected Deliverables:**
- Submission package including:
  - (a) GDSII layout
  - (b) Gate-level netlist + constraints
  - (c) Final report (DP1–DP4 results, PPA/security improvements)
  - (d) Supplementary materials (slides/video if required)
- Updated GitHub repo (final RTL, testbenches, README).

**Tools:**
- **Open-Source:** GitHub (repository & packaging), LaTeX/Markdown (report).
- **Cadence:** Virtuoso/KLayout (final visualization), archive all logs/reports.

**Mentor Check-in Prompts:**
- Is the final report polished and complete?
- Are all submission files included and named correctly?
- Did the team follow submission guidelines?
- Quick recap: if given one more month, what would they improve?
- Congratulate the team on reaching tape-out readiness.

## Key Focus Areas
- **Tape-out Preparation**
  - Design Rule Check (DRC) compliance
  - Layout vs Schematic (LVS) verification
  - Manufacturing specifications
  
- **Final Verification**
  - Comprehensive testing
  - Corner case analysis
  - Performance validation
  
- **Documentation Completion**
  - Design methodology report
  - AI usage documentation
  - User manuals and specifications
 
## Grading Criteria (DP4)

| Category                         | Weight | Criteria                                                                 |
|----------------------------------|--------|--------------------------------------------------------------------------|
| **Physical Design Flow Execution** | 30%   | Successful synthesis, floorplanning, placement, routing, CTS; no critical tool flow gaps. |
| **Timing Closure & PPA**         | 20%    | Final STA reports clean; PPA metrics documented and compared to DP2 baseline. |
| **Sign-off Quality**             | 20%    | DRC/LVS clean reports; accurate power analysis; manufacturable GDSII. |
| **Submission Package**           | 20%    | Complete GDSII, netlist, constraints, documentation, and final report with full journey (DP1–DP4). |
| **Presentation & Clarity**       | 10%    | Clear organization of repository, README, and project story (for judges/ment


## Resources
**Links to be added soon**
- [Tape-out Guidelines]
- [Final Verification Procedures]
- [Documentation Standards]

## Support
- Weekly mentor meetings
- Office hours on April 23, 2026
- Final submission support
- Discord community support

## Important Deadlines
- **April 23, 2026**: Final milestone review
- **May 1, 2026**: Final design submission deadline
- **May 14, 2026**: Winner announcement

---

*This folder will contain all materials and final submissions for Design Phase 4*
