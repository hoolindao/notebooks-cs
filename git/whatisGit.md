### 简单了解版本控制

- 本地版本控制系统，如 rcs

  ![img](https://git-scm.com/figures/18333fig0101-tn.png)

- 集中式版本控制系统 （ Centralized Version Control Systems，简称 CVCS ），如 CVS

  ![img](https://git-scm.com/figures/18333fig0102-tn.png)

- 分布式版本控制系统（ Distributed Version Control System，简称 DVCS ），如 git

  ![img](https://git-scm.com/figures/18333fig0103-tn.png)

### Git 基础

> 那么，简单地说，Git 究竟是怎样的一个系统呢？请注意，接下来的内容非常重要，若是理解了 Git 的思想和基本工作原理，用起来就会知其所以然，游刃有余。

- Git 只关心文件数据的整体是否发生变化

  - 传统 每次记录有哪些文件作了更新，以及都更新了哪些行的什么内容，过程如下

    ![img](https://git-scm.com/figures/18333fig0104-tn.png)

  - 每次提交更新时，它会纵览一遍所有文件的指纹信息并对文件作一快照，然后保存一个指向这次快照的索引，过程如下

    ![img](https://git-scm.com/figures/18333fig0105-tn.png)

- Git 中的绝大多数操作都只需要访问本地文件和资源，不用连网

- 在保存到 Git 之前，所有数据都要进行内容的校验和（checksum）计算，并将此结果作为数据的唯一标识和索引

  > Git 使用 SHA-1 算法计算数据的校验和，通过对文件的内容或目录的结构计算出一个 SHA-1 哈希值，作为指纹字符串

- 文件在 Git 内都只有三种状态：

  - 已提交（committed）
  - 已修改（modified）
  - 和已暂存（staged）

  > 已提交表示该文件已经被安全地保存在本地数据库中了；
  >
  > 已修改表示修改了某个文件，但还没有提交保存；
  >
  > 已暂存表示把已修改的文件放在下次提交时要保存的清单中。

  ![img](https://git-scm.com/figures/18333fig0106-tn.png)

### 基本的 Git 工作流程如下：

1. 在工作目录中修改某些文件。
2. 对修改后的文件进行快照，然后保存到暂存区域。
3. 提交更新，将保存在暂存区域的文件快照永久转储到 Git 目录中。