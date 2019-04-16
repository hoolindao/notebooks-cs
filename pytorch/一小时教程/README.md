

- https://pytorch.org/tutorials/beginner/deep_learning_60min_blitz.html

## what is PyTorch

### Tensors 张量（人工智能角度定义）

张量是多维数组

标量：0维张量
矢量：1维张量
矩阵：2维张量
矩阵数组：3维张量

#### 例子

1

[1,1,1]T

[[1., 1., 1.],
 [1., 1., 1.],
 [1., 1., 1.],
 [1., 1., 1.],
 [1., 1., 1.]]

#### `import torch`
- [construct tensors](./construcatTensors.py)
- [operations, additon for example](./addTensors.py)
- operations, resize ([use torch.view()](./resizeTensors.py)), get one element tensor's valuse as pyhon number ([use torch.item()](getOneElementTensorValue.py))
- [CUDA Tensors, Tensors can be moved onto any device using the .to method.](./CUDATensors.py)