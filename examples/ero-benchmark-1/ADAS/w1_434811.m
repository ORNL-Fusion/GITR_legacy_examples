% Photon emissivity coefficient (cm^3/s), GKU (stationar, w/o ioniz)
%
NTe = 26;
NNe = 11;
%
Te=[
1.00e+000
2.00e+000
5.00e+000
1.00e+001
2.00e+001
3.00e+001
4.00e+001
5.00e+001
6.00e+001
7.00e+001
8.00e+001
9.00e+001
1.00e+002
2.00e+002
3.00e+002
4.00e+002
5.00e+002
6.00e+002
7.00e+002
8.00e+002
9.00e+002
1.00e+003
5.00e+003
1.00e+004
5.00e+004
1.00e+005
];
%
Ne=[
1.00e+010
5.00e+010
1.00e+011
5.00e+011
1.00e+012
5.00e+012
1.00e+013
5.00e+013
1.00e+014
5.00e+014
1.00e+015
];
%
vSig_w1 = [
   4.67e-011   3.16e-010   8.70e-010   1.15e-009   1.29e-009   1.31e-009   1.31e-009   1.29e-009   1.28e-009   1.25e-009   1.24e-009   1.22e-009   1.20e-009   1.07e-009   9.77e-010   9.11e-010   8.60e-010   8.20e-010   7.84e-010   7.54e-010   7.29e-010   7.08e-010   4.21e-010   3.29e-010   1.80e-010   1.38e-010
   4.67e-011   3.17e-010   8.68e-010   1.15e-009   1.29e-009   1.31e-009   1.31e-009   1.30e-009   1.28e-009   1.25e-009   1.23e-009   1.22e-009   1.20e-009   1.06e-009   9.77e-010   9.11e-010   8.60e-010   8.20e-010   7.85e-010   7.56e-010   7.31e-010   7.08e-010   4.21e-010   3.29e-010   1.80e-010   1.38e-010
   4.67e-011   3.16e-010   8.70e-010   1.15e-009   1.29e-009   1.31e-009   1.31e-009   1.29e-009   1.28e-009   1.25e-009   1.24e-009   1.22e-009   1.20e-009   1.07e-009   9.77e-010   9.11e-010   8.60e-010   8.20e-010   7.84e-010   7.54e-010   7.29e-010   7.08e-010   4.21e-010   3.29e-010   1.80e-010   1.38e-010
   4.67e-011   3.17e-010   8.68e-010   1.15e-009   1.29e-009   1.31e-009   1.31e-009   1.30e-009   1.28e-009   1.25e-009   1.23e-009   1.22e-009   1.20e-009   1.06e-009   9.77e-010   9.11e-010   8.60e-010   8.20e-010   7.85e-010   7.56e-010   7.31e-010   7.08e-010   4.21e-010   3.29e-010   1.80e-010   1.38e-010
   4.66e-011   3.16e-010   8.65e-010   1.15e-009   1.29e-009   1.31e-009   1.31e-009   1.29e-009   1.28e-009   1.25e-009   1.24e-009   1.22e-009   1.20e-009   1.07e-009   9.77e-010   9.11e-010   8.60e-010   8.20e-010   7.84e-010   7.54e-010   7.29e-010   7.08e-010   4.21e-010   3.29e-010   1.80e-010   1.38e-010
   4.65e-011   3.15e-010   8.64e-010   1.14e-009   1.29e-009   1.31e-009   1.30e-009   1.29e-009   1.27e-009   1.25e-009   1.23e-009   1.21e-009   1.19e-009   1.06e-009   9.74e-010   9.09e-010   8.58e-010   8.18e-010   7.83e-010   7.54e-010   7.30e-010   7.07e-010   4.21e-010   3.29e-010   1.80e-010   1.38e-010
   4.62e-011   3.14e-010   8.60e-010   1.14e-009   1.28e-009   1.30e-009   1.30e-009   1.28e-009   1.27e-009   1.24e-009   1.23e-009   1.21e-009   1.19e-009   1.06e-009   9.72e-010   9.06e-010   8.55e-010   8.15e-010   7.79e-010   7.54e-010   7.29e-010   7.03e-010   4.20e-010   3.29e-010   1.80e-010   1.37e-010
   4.44e-011   3.03e-010   8.31e-010   1.10e-009   1.23e-009   1.25e-009   1.25e-009   1.24e-009   1.22e-009   1.21e-009   1.19e-009   1.17e-009   1.16e-009   1.03e-009   9.49e-010   8.88e-010   8.39e-010   7.99e-010   7.67e-010   7.40e-010   7.15e-010   6.94e-010   4.16e-010   3.26e-010   1.79e-010   1.37e-010
   4.25e-011   2.90e-010   7.99e-010   1.06e-009   1.18e-009   1.21e-009   1.20e-009   1.19e-009   1.18e-009   1.17e-009   1.15e-009   1.13e-009   1.12e-009   1.00e-009   9.21e-010   8.65e-010   8.20e-010   7.79e-010   7.49e-010   7.24e-010   6.98e-010   6.78e-010   4.11e-010   3.23e-010   1.78e-010   1.36e-010
   3.13e-011   2.18e-010   6.00e-010   7.97e-010   8.98e-010   9.21e-010   9.25e-010   9.21e-010   9.15e-010   9.07e-010   8.99e-010   8.90e-010   8.81e-010   8.09e-010   7.56e-010   7.16e-010   6.85e-010   6.59e-010   6.37e-010   6.17e-010   6.00e-010   5.85e-010   3.74e-010   3.01e-010   1.71e-010   1.32e-010
   2.35e-011   1.65e-010   4.58e-010   6.12e-010   6.88e-010   7.08e-010   7.13e-010   7.13e-010   7.13e-010   7.08e-010   7.03e-010   6.98e-010   6.93e-010   6.53e-010   6.17e-010   5.92e-010   5.67e-010   5.52e-010   5.36e-010   5.21e-010   5.11e-010   4.98e-010   3.37e-010   2.76e-010   1.63e-010   1.27e-010
];
%
%Reg2D (Te, Ne, vSig_w1);
%WL_A (4348);