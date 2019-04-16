from __future__ import print_function
import torch

# construcat a 5x3 matrix, uninitialized
x = torch.empty(5, 3)
print(x)

# construcat a randomly initialized matrix
x = torch.rand(5, 3)
print(x)

# construcat a matrix filled zeros and of dtype long
x = torch.zeros(5, 3, dtype=torch.long)
print(x)

# construcat a tensor directly from data
x = torch.tensor([5.5, 3])
print(x)

# These methods will reuse properties of the input tensor
# e.g. dtype, unless new values are provided by user
# new_* methods take in sizes
x = x.new_ones(5, 3, dtype=torch.double)      
print(x)
# override dtype!
x = torch.randn_like(x, dtype=torch.float)   
print(x)                                     
# Get its size
print(x.size())