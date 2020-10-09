rm -r mesh2D_TG.msh mesh2D_TG

gmsh -2 mesh2D_TG.geo -o mesh2D_TG.msh 
ElmerGrid 14 2 mesh2D_TG.msh -autoclean 
ElmerGrid 14 5 mesh2D_TG.msh -autoclean 
