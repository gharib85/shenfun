#!bin/sh
set -e

pushd $PWD/../demo
python dirichlet_poisson1D.py 32 chebyshev
python dirichlet_poisson2D.py 32 chebyshev
python dirichlet_poisson3D.py 32 chebyshev
python dirichlet_poisson1D.py 32 legendre
python dirichlet_poisson2D.py 32 legendre
python dirichlet_poisson3D.py 32 legendre
python dirichlet_poisson1D.py 32 jacobi
python dirichlet_poisson2D.py 32 jacobi
python dirichlet_poisson3D.py 32 jacobi

python dirichlet_Helmholtz1D.py 32 chebyshev
python dirichlet_Helmholtz2D.py 32 chebyshev
python dirichlet_Helmholtz1D.py 32 legendre
python dirichlet_Helmholtz2D.py 32 legendre
python dirichlet_Helmholtz1D.py 32 jacobi
python dirichlet_Helmholtz2D.py 32 jacobi

python fourier_poisson1D.py
python fourier_poisson2D.py
python fourier_poisson3D.py

python neumann_poisson1D.py
python neumann_poisson2D.py
python neumann_poisson3D.py
python neumann_poisson1D.py legendre
python neumann_poisson2D.py legendre
python neumann_poisson3D.py legendre

python biharmonic1D.py 32 chebyshev
python biharmonic2D.py
python biharmonic3D.py
python biharmonic1D.py 32 legendre
python biharmonic2D.py legendre
python biharmonic3D.py legendre
python biharmonic1D.py 32 jacobi
python biharmonic2D.py jacobi
python biharmonic3D.py jacobi

python biharmonic2D_2nonperiodic.py
python biharmonic3D_2nonperiodic.py
python biharmonic2D_2nonperiodic.py legendre
python biharmonic3D_2nonperiodic.py legendre

python laguerre_dirichlet_poisson1D.py 70
python laguerre_dirichlet_poisson2D.py 60
python laguerre_legendre_poisson2D.py 60

python biharmonic2D_2nonperiodic.py chebyshev
python biharmonic2D_2nonperiodic.py legendre
python biharmonic2D_2nonperiodic.py jacobi

python hermite_poisson1D.py 36
python hermite_poisson2D.py 36

python order6.py 20

python dirichlet_dirichlet_poisson2D.py 24 25 legendre
python dirichlet_dirichlet_poisson2D.py 24 25 chebyshev
python dirichlet_dirichlet_poisson2D.py 24 25 jacobi

python unitdisc_poisson.py
python unitdisc_biharmonic.py
python dirichletneumann_poisson1D.py 24 chebyshev
python dirichletneumann_poisson1D.py 24 legendre
python neumanndirichlet_poisson1D.py 24 chebyshev
python neumanndirichlet_poisson1D.py 24 legendre
python spherical_shell_helmholtz.py

python NavierStokes.py

python MixedPoisson.py 24 25 legendre
python MixedPoisson.py 24 25 chebyshev
python MixedPoisson3D.py legendre
python MixedPoisson3D.py chebyshev
python MixedPoisson1D.py legendre
python MixedPoisson1D.py chebyshev
python Stokes.py legendre
python Stokes.py chebyshev

mpirun -np 4 python dirichlet_poisson2D.py 24 chebyshev
mpirun -np 4 python dirichlet_poisson3D.py 24 chebyshev
mpirun -np 4 python dirichlet_poisson2D.py 24 legendre
mpirun -np 4 python dirichlet_poisson3D.py 24 legendre

mpirun -np 4 python dirichlet_Helmholtz2D.py 32 legendre
mpirun -np 4 python dirichlet_Helmholtz2D.py 32 chebyshev

mpirun -np 4 python fourier_poisson2D.py
mpirun -np 4 python fourier_poisson3D.py

mpirun -np 4 python neumann_poisson2D.py
mpirun -np 4 python neumann_poisson3D.py
mpirun -np 4 python neumann_poisson2D.py legendre
mpirun -np 4 python neumann_poisson3D.py legendre

mpirun -np 4 python biharmonic2D.py
mpirun -np 4 python biharmonic3D.py
mpirun -np 4 python biharmonic2D.py legendre
mpirun -np 4 python biharmonic3D.py legendre
mpirun -np 4 python NavierStokes.py
mpirun -np 4 python MixedPoisson.py 24 25 legendre
mpirun -np 4 python MixedPoisson.py 24 25 chebyshev
mpirun -np 4 python MixedPoisson3D.py legendre
mpirun -np 4 python MixedPoisson3D.py chebyshev
mpirun -np 4 python laguerre_dirichlet_poisson2D.py 70
mpirun -np 4 python hermite_poisson2D.py 36
pushd $PWD/../tests
