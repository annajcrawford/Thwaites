
datadir = "./include"
datadirext = "/projappl/project_2000339/data/antarctic"
outdir = "./vut
meshdb = "./Mesh" 

-- ## Inversion regularisation
Lambda=1.0e10

-- ## Min threshold value for Ice thickness (Real)
MINH=80.0

-- ## levels in the vertical
MLEV=20

-- ##Dot product tolerance
DPtol=1.0e-4

-- ## controlling steady state iterations
IMIN=10
IMAX=100

Tol=0.01

-- ## for block preconditioner 
blocktol=0.0001

-- ## Mesh refinement parameters

-- ##  the name of the mesh to optimize
MESH_IN="mesh2D_PIG"

MESH_OUT="mesh2D_PIG_refined"

-- ## Tolerated errors on U and H
U_err=1.0
H_err=35.0


-- ## mesh size limits in different regions

-- ## absolute minimum mesh size
Mminfine=600.0

-- ## minimum mesh size far from grounding line (may be higher than
-- ## Mminfine to prevent detailed refinement in slow flowing far 
-- ## inland regions).  Set equal to Mminfine if you don't want this.
Mmincoarse=5000.0

-- ## Maximum mesh size far from the grounding line
Mmaxfar=11000.0

-- ## Maximum mesh size close to the grounding line
Mmaxclose=700.0

-- ## maximum mesh size for ice shelves (set this to larger than
-- ## Mmaxfar if you want it to be ignored)
Mmaxshelf=1700.0

-- ## reference velocity used in refinement to set upper limit on
-- ## element size (together with distance from GL).  Sections of
-- ## grounding line with flow speeds higher than this limit will
-- ## have max mesh size Mmaxclose.  Max mesh is allowed to be
-- ## coarser for sections of slower flowing GL.  Set this very
-- ## small (e.g. 0.1) if you want it to be ignored.
refvel = 800.0

-- ## The distance from grounding line at which the upper limit for
-- ## the maximum mesh size is reached
GLdistlim=200000.0

-- ## The distance from the boundary at which the upper limit for
-- ## the maximum mesh size is reached
Bdistlim=70000.0

-- ## For distances beyond distlim, the minimum mesh size may be
-- ## increased towards Mmincoarse on this distance scale
distscale=300000.0

