# response-surface-orthogonal-matrix-optimization_P1
MATLAB scripts for optimizing response surface experimental designs and evaluating D-values criteria.

# Experimental Design Optimization: Central Composite Designs with Enhanced Efficiency

## Overview

This repository contains MATLAB implementations of novel algorithms for constructing Central Composite Designs (CCDs) that achieve significantly higher statistical efficiency than classical approaches. The methods are based on research from a PhD thesis in Mathematical Sciences and include multiple construction frameworks optimized for different application types.

## Key Features

- **20-30% D-value improvement** over published designs (5-10 factors)
- **Four deterministic construction methods** using orthogonal matrices and T-Block designs
- **Orthogonal Latin Hypercube integration** for space-filling experimental designs
- **Efficient design classification** reducing computational complexity from O(N² · n! · k! · 2^k) to O(N · nk⁴)
- **MATLAB implementations** suitable for integration into optimization pipelines

## Why This Matters for Complex Systems

When designing experiments for computationally expensive systems (CFD, surrogate modeling, computer experiments), the efficiency of your experimental design directly impacts:
- **Parameter estimation precision**: Higher D-values = narrower confidence regions
- **Run cost**: Achieve results with fewer experiment iterations
- **Interaction detection**: Superior designs detect two-factor interactions that classical designs miss

## Applications

This code has been validated on real-world optimization problems:
- **Cycling helmet aerodynamics** (5 factors, CFD simulations)
- **Video game difficulty calibration** (6 factors, interaction detection)
- **Sequential response surface methodology** (first-order screening → steepest ascent → second-order optimization)

## Core Algorithms

### Construction Methods (Chapter 4)

**Method 1**: Classical Orthogonal Designs
- Standard approach for baseline comparisons
- `F#R_HandTBlock_Dval_Test_all.m`

**Methods 2-4**: T-Block and Definitive Screening Components
- Novel configurations achieving record D-values
- `F#R_HandConfTBlock_Dval_Test_all.m`
- Tested for 4-11 factors with runs from 18-100

### OLH-Augmented Framework (Chapter 5)

Replaces discrete axial blocks with continuous Orthogonal Latin Hypercube columns:
- Better interior prediction accuracy
- Ideal for surrogate modeling applications
- Multi-criterion evaluation (D, A, E, F-criteria)

### Design Classification (Chapter 6)

Hierarchical framework for identifying inequivalent designs:
- Four mathematical invariants: Average Row Entropy, Maximin Distance, Audze-Eglais Energy, Profile Criterion
- Reduces brute-force complexity by >1000x
- Successfully classified 3.4M+ candidate designs

## File Organization

```
designs/
├── ConferenceMatrices.m              # Hadamard & conference matrix library
├── Construction3g.m                  # Core construction algorithm (Method 1)
├── Construction3g2.m                 # Extended construction (Methods 2-4)
├── MakeModelMatrix.m                 # Model matrix generation
├── Rotatability_Draper_Pukelsheim.m  # Rotatability criterion calculation
├── Vmatrices_Draper_Pukelsheim.m     # Supporting matrices for rotatability
├── WriteDesignToFile.m               # Output utilities
└── F#R_*Test_all.m                   # Test scripts (4-11 factors)
```

## Quick Start

### Example: 6-Factor Design with Enhanced Efficiency

```matlab
% Load design components
ConferenceMatrices;  % Loads Hadamard matrices

% 6-factor Hadamard factorial points
Xf = hadamard(8);
Xf = Xf(:, 2:7);  % Select columns 2-7

% Orthogonal design axial components (T-Block)
% Pre-defined in Construction3g.m

% Run construction
m = 6;  % number of factors
s = 6;  % selected columns
nc = 0; % center points
Construction3g(Xf, XA, nc, s, output_file, ...);
```

### Expected Output

- **Design matrix**: Runs (rows) x factors (columns)
- **D-value**: Efficiency measure (higher is better)
- **Q-star**: Rotatability criterion
- Text file with design points and statistics

## Performance Benchmarks

| Factors | Runs | Method | D-value | vs. Classical | Design Efficiency |
|---------|------|--------|---------|---------------|------------------|
| 5       | 26   | Method 4 | High   | +28%          | Excellent        |
| 6       | 29   | Method 4 | High   | +25%          | Excellent        |
| 8       | 53   | OLH-Aug  | High   | +20%          | Excellent        |

## Use Cases

**Research & Development**: Optimize process parameters with fewer expensive experiments
**CFD & Simulation**: Efficient sampling for surrogate model training
**Design of Experiments**: Generate optimal screening and optimization designs
**Machine Learning**: Create space-filling training point sets

## References

Based on research in:
- Response Surface Methodology (Box & Wilson, 1951)
- Optimal Design Theory (Kiefer, 1959)
- Novel CCD construction using Definitive Screening Designs
- Orthogonal Latin Hypercube integration for prediction-focused applications

## Citation

If you use this code in your research:

```
@thesis{athanasaki2026designs,
  title={Advances in Design of Experiments for Response Surface Methodology 
         Through Novel Composite Designs and Efficiency Algorithms},
  author={Athanasaki, Despoina},
  year={2026},
  school={RMIT University}
}
```

## License

MIT License - See LICENSE file for details

## Contact & Questions

For questions about implementation or applications, please open an issue.

---

**Key Takeaway**: These algorithms transform how you approach expensive experimental systems. Instead of classical designs that require more runs, you get equivalent or better information with fewer iterations—directly reducing time and cost.
