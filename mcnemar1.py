import sys
import numpy as np
from statsmodels.stats.contingency_tables import mcnemar
# interpret the p-value
alpha = 0.05

tb_b = np.array([[1, 67],[7, 213]]) 
result = mcnemar(tb_b, exact=False, correction=True)
chi3="{:.3f}".format(float(result.statistic))
ch4="{:.15f}".format(float(result.pvalue))
lines=str(chi3) + "\t" + str(ch4) 
print(lines)