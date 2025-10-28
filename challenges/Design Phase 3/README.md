# Design Phase 3 (DP3): Security & Vulnerability Optimization (March)

## Overview
This phase  emphasizes enhancing the design’s security features and eliminating potential vulnerabilities, while performing any final design optimizations. This ensures the core is not only efficient but also secure against common hardware threats.

## Timeline
- **Start**: March 2, 2026
- **Milestone Review**: March 26, 2026
- **Office Hours**: March 26, 2026


## Week 1: Security Assessment & Planning
**Objectives:**
- Analyze the core design to identify security vulnerabilities or attack surfaces (debug backdoors, side-channel leakage, unchecked inputs).
- Plan enhancements such as encryption, error detection (parity/ECC), or timing attack hardening.
- Prioritize which vulnerabilities to address first.

**Expected Deliverables:**
- Security review document or checklist with identified vulnerabilities and exploit scenarios.
- List of planned mitigations mapped to vulnerabilities.
- Simple proof-of-concept security patch (e.g., disable test mode not needed in production).

**Tools:**
- **Open-Source:** Verilog lint, SymbiYosys (assertions on secure properties).
- **Cadence:** JasperGold Security Apps, Indago debug/trace analysis.

**Mentor Check-in Prompts:**
- What vulnerabilities were identified so far?
- Which areas of the design remain unclear from a security standpoint?
- Does the team have a clear order of mitigations?
- Are PPA impacts of added security features considered?


## Week 2: Implementing Security Features
**Objectives:**
- Implement highest-priority security enhancements (e.g., authentication for debug, encryption, error detection).
- Integrate features into the core without breaking baseline functionality.
- Create specialized test cases simulating attack scenarios.

**Expected Deliverables:**
- RTL modifications introducing at least one significant security feature.
- Logs/waveforms demonstrating security features triggering as expected.
- Functional tests showing the core still works normally.

**Tools:**
- **Open-Source:** Security-focused testbenches, open crypto modules.
- **Cadence:** Xcelium for security-focused simulation, JasperGold for formal security property checks.

**Mentor Check-in Prompts:**
- Which security feature was implemented this week?
- Has it been tested under adversarial as well as normal conditions?
- Were there integration/debugging challenges?
- Are corner cases (resets, module failures) covered?

## Week 3: Validation & Hardening
**Objectives:**
- Validate resilience through fault injection, adversarial testing, and boundary conditions.
- Harden weak points identified in validation.
- Optimize PPA impacts introduced by security features.

**Expected Deliverables:**
- RTL with all planned security features implemented and tested.
- Security validation report describing tests (e.g., buffer overflow attempts, fault injection).
- Updated PPA metrics showing cost of security features.
- Code freeze for RTL prior to physical design.

**Tools:**
- **Open-Source:** Fault injection frameworks, regression testing.
- **Cadence:** Assertion-based verification (SVA), JasperGold proofs, SpyGlass security lint.

**Mentor Check-in Prompts:**
- Which vulnerabilities are now mitigated?
- Did new issues arise during testing?
- What is the measured PPA overhead of security features?
- Is the design stable enough for physical design?

## Week 4: Documentation & Milestone Prep
**Objectives:**
- Finalize security documentation and prepare for Milestone Review #3.
- Summarize improvements, testing results, and mitigations.
- Freeze RTL code for handoff to physical design.

**Expected Deliverables:**
- DP3 report: vulnerabilities, mitigations, validation results, remaining concerns.
- Verified RTL code with security features, regression logs, formal proofs if available.
- Organized repository ready for DP4.

**Tools:**
- **Open-Source:** Markdown/LaTeX for reporting, automation scripts for packaging deliverables.
- **Cadence:** Final regression in Xcelium, Genus synthesis check, Conformal LEC for RTL-netlist equivalence.

**Mentor Check-in Prompts:**
- Is security documentation complete and clear?
- Can the team explain their design’s security posture?
- Is the RTL stable and ready for layout?
- Are constraints (clocks, IO pins) prepared for physical design?

## Key Focus Areas
- **Security Implementation**
  - Hardware security features
  - Vulnerability analysis
  - Secure design practices
  
## Grading Criteria (DP3)

| Category                       | Weight | Criteria                                                                 |
|--------------------------------|--------|--------------------------------------------------------------------------|
| **Security Assessment**        | 20%    | Thorough vulnerability review; well-structured checklist; prioritization of fixes. |
| **Security Feature Implementation** | 30% | RTL changes introducing meaningful countermeasures; features tested in both normal and adversarial conditions. |
| **Validation & Hardening**     | 25%    | Comprehensive security testing; validation reports; quantification of overhead (timing/area/power impact). |
| **Documentation & Reporting**  | 15%    | Clear DP3 report; detailed explanation of mitigations, trade-offs, and future work. |
| **Design Stability**           | 10%    | Functional correctness preserved after enhancements; regression tests clean. |


## Resources
**Links to be added soon**
- [Hardware Security Guidelines]
- [PPA Optimization Techniques]
- [Security Analysis Tools]

## Support
- Weekly mentor meetings
- Office hours on March 26, 2026
- Discord community support

---

*This folder will contain all materials and submissions related to Design Phase 3*
