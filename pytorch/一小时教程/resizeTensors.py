from __future__ import print_function
import torch

x = torch.randn(4, 4)
print(x)
y = x.view(16) # it will view the 4x4 matrix as a 16 vector
z = x.view(-1, 8) # the size -1 is inferred from other dimensions (remain as maxtrx)
print(x.size(), y.size(), z.size())