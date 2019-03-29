### 在 Windows 用上 Git

- 安装

  - [Git Bash](<https://gitforwindows.org/>)

  > 完成安装之后，就可以使用命令行的 `git` 工具（已经自带了 ssh 客户端）了，另外还有一个图形界面的 Git 项目管理工具。

  > 给 Windows 用户的敬告：
  >
  > 你应该在 msysGit 提供的 Unix 风格的 shell 来运行 Git。
  >
  > 在 Unix 风格的 shell 中，可以使用本书中提及的复杂多行的命令。

  > 对于那些需要在 Windows 命令行中使用 Git 的用户，必须注意：
  >
  > ​	在参数中间有空格的时候，必须使用双引号将参数括起来（在 Linux 中是单引号）；
  >
  > 另外，如果扬抑符（^）作为参数的结尾，并且作为这一行的最后一个字符，则这个参数也需要用双引号括起来。因为扬抑符在 Windows 命令行中表示续行（译注：即下一行为这一行命令的继续）。

- 初次配置

  - 须知

    - git config 命令 专门用来配置或读取相应的工作环境变量

      ```shell
      # /etc/gitconfig 文件：系统中对所有用户都普遍适用的配置
      $ git conifg --system
      
      # ~/.gitconfig 文件：用户目录下的配置文件只适用于该用户
      $ git config --global
      
      # 当前项目的 Git 目录中的配置文件（也就是工作目录中的 .git/config 文件）：这里的配置仅仅针对当前项目有效。
      $ git config
      
      # 每一个级别的配置都会覆盖上层的相同配置
      
      # 在 Windows 系统上，Git 会找寻用户主目录下的 .gitconfig 文件。
      # 主目录即 $HOME 变量指定的目录，一般都是 C:\Documents and Settings\$USER。
      # 此外，Git 还会尝试找寻 /etc/gitconfig 文件，只不过看当初 Git 装在什么目录，就以此作为根目录来定位。
      ```

  - 用户信息

  ```shell
  $ git config --global user.name "John Doe"
  $ git config --global user.email johndoe@example.com
  ```

  - 文本编辑器

  ```shell
  $ git config --global core.editor emacs
  ```

  - 差异分析工具

  ```shell
  $ git config --global merge.tool vimdiff
  ```

  - 查看配置信息

  ```shell
  $ git config --list
  user.name=Scott Chacon
  user.email=schacon@gmail.com
  color.status=auto
  color.branch=auto
  color.interactive=auto
  color.diff=auto
  ...
  ```

- ssh key

  - .ssh 目录

  ```shell
  $ cd ~/.ssh
  $ ls
  authorized_keys2  id_dsa       known_hosts
  config            id_dsa.pub
  ```
  - ssh-keygen

  ```shell
  $ ssh-keygen
  
  # 查看公钥
  $ cat ~/.ssh/id_rsa.pub
  ```

### 起步 - 获取帮助

想了解 Git 的各式工具该怎么用，可以阅读它们的使用帮助，方法有三：

```shell
$ git help <verb>
$ git <verb> --help
$ man git-<verb>
```

比如，要学习 config 命令可以怎么用，运行：

```shell
$ git help config
```