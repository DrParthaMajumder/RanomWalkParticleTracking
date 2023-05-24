# RanomWalkParticleTracking (Brownian Motion)
Random walk particle tracking is a computational method used to simulate the transport of contaminants in various environmental systems, such as groundwater, air, or rivers. It models the movement of individual particles as they disperse and migrate through the medium, providing valuable insights into the behavior and fate of contaminants. The basic concept of random walk particle tracking revolves around simulating the movement of numerous particles within the system. Each particle is considered a representative of the contaminant and is assigned specific characteristics like size, mass, and initial position. The particles are then subjected to random steps or jumps based on predefined rules. At each time step, the particles undergo a random displacement, which can be determined by considering factors such as advection (bulk fluid movement), diffusion (random molecular motion), and other forces affecting the transport process. The displacement is usually calculated based on a set of governing equations or stochastic algorithms, taking into account the velocity field of the medium, diffusion coefficients, and other relevant parameters. The particles' movement continues over multiple time steps until a predefined condition is met, such as reaching a specified simulation time or exiting the system boundaries. The paths followed by individual particles are recorded, enabling the determination of contaminant migration patterns, concentration profiles, travel times, and other important characteristics. Random walk particle tracking offers several advantages for contaminant transport simulation. It can capture complex transport phenomena, including dispersion, mixing, and interaction with boundaries or obstacles. Additionally, it allows for the incorporation of spatial heterogeneity and can be applied to a wide range of environmental systems. However, it is worth noting that random walk particle tracking has certain limitations. It assumes that the medium is continuous, neglecting factors like particle-particle interactions and particle settling. It also relies on simplifying assumptions and parameterizations, which may introduce uncertainties in the simulation results. Overall, random walk particle tracking is a valuable tool in the field of contaminant transport simulation, providing insights into the fate and behavior of contaminants in various environmental systems.

# More details of RanomWalkParticleTracking can be found in:
1. Majumder, P. and Eldho, T.I., 2020. Artificial neural network and grey wolf optimizer based surrogate simulation-optimization model for groundwater remediation. Water Resources Management, 34, pp.763-783.
2. Majumder, P. and Eldho, T.I., 2017. Vectorized simulation of groundwater flow and contaminant transport using analytic element method and random walk particle tracking. Hydrological Processes, 31(5), pp.1144-1160.
3. Reactive contaminant transport simulation using the analytic element method, random walk particle tracking and kernel density estimator
4. Majumder, P., Lu, C., Anshuman, A., Eldho, T.I. and Bhattacharjya, R.K., GPU accelerated parallel contaminant transport due to physical heterogeneity and mobile immobile mass transfer by integrating meshless radial point collocation method and variants of random walk.

# Developer: Dr. Partha majumder
# Email ID: parthamajpk@gmail.com

# License
Shield: [![CC BY-NC-SA 4.0][cc-by-nc-sa-shield]][cc-by-nc-sa]

This work is licensed under a
[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License][cc-by-nc-sa].

[![CC BY-NC-SA 4.0][cc-by-nc-sa-image]][cc-by-nc-sa]

[cc-by-nc-sa]: http://creativecommons.org/licenses/by-nc-sa/4.0/
[cc-by-nc-sa-image]: https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png
[cc-by-nc-sa-shield]: https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg
