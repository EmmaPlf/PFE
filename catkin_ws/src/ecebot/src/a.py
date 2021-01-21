import numpy as np

array = np.zeros([0, 2])
print(array)
array = np.append(array, [[0, 2]], axis=0)
array = np.append(array, [[1, 2]], axis=0)
array = np.append(array, [[3, 2]], axis=0)
array = np.append(array, [[1, 4]], axis=0)
print(array)
array = np.delete(array, 0, axis=0)
print(array)