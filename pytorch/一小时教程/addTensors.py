from __future__ import print_function
import torch

x = torch.rand(5, 3)
y = torch.rand(5, 3)
# additon
## syntax 1
print(x + y)
## syntax 2: normal
print(torch.add(x, y))
## syntax 2: providing an output tensor as argument
result = torch.empty(5, 3)
torch.add(x, y, out=result)
print(result)

# additon: in-place
## adds x to y
temp = y
y.add_(x) # Any operation that mutates a tensor in-place is post-fixed with an _. For example: x.copy_(y), x.t_(), will change x.
print(y)