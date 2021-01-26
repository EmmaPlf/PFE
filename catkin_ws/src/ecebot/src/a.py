import numpy as np

arr = np.zeros([0,2])
print(arr)
arr = np.append(arr, [[1, 2]], axis=0)
print(arr)