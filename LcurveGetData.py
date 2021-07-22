
import subprocess

Lrange = range(1,9)

CostUbase   = "TG_S5_drag_LXXX/Cost_U_TG_drag_0629_LXXX.dat"
CostRegbase = "TG_S5_drag_LXXX/CostReg_TG_drag_0629_LXXX.dat"

CostUbase_v   = "TG_S6_mu_LXXX/Cost_U_TG_S6_0701_LXXX.dat"
CostRegbase_v = "TG_S6_mu_LXXX/CostReg_TG_S6_0701_LXXX.dat"

print ""
print "Lcurve for drag inversion"
print ""

for Lambda in Lrange:
    CostUname = CostUbase.replace("XXX",str(Lambda))
    line = subprocess.check_output(['tail', '-1', CostUname])
    CostU = line.split()[1]

    CostRegname = CostRegbase.replace("XXX",str(Lambda))
    line = subprocess.check_output(['tail', '-1', CostRegname])
    CostReg = line.split()[1]

    print CostU, CostReg

print ""
print "Lcurve for viscosity inversion"
print ""

for Lambda in Lrange:
    CostUname = CostUbase_v.replace("XXX",str(Lambda))
    line = subprocess.check_output(['tail', '-1', CostUname])
    CostU = line.split()[1]

    CostRegname = CostRegbase_v.replace("XXX",str(Lambda))
    line = subprocess.check_output(['tail', '-1', CostRegname])
    CostReg = line.split()[1]

    print CostU, CostReg
