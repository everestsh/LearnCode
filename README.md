# WebLearn

```
下载：
it clone git@github.com:everestsh/LearnCode.git

测试github是否联通：
ssh -T git@github.com


测试github是否联通：
ssh -T git@github.com

1>
find ../ -name .DS_Store -exec rm {} \;
find ~/ -name '.DS_Store' -delete 删除当前目录的.DS_store

2>更新：
git pull: 更新当前分支(将本地的文件更新到最新)
git pull origin master: 更新 origin remote 的 master 分支
git fetch: 获取服务器端的改动，比如其他用户新建了一个分支并push到了服务器，运行这个命令之后会得到这个分支的信息

3>上传：
将自己的修改push到github上：
git add .
git commit -m "first commit"
git push -u origin master
or
git add --all
git commit -m "first commit"
git push -u origin master

4>
git撤销已经push到远端的commit：
git log -2
git reset --hard d3b87bab6d216299d7167f9e53ac1ed43c6a1xxx
git push origin master --force

5>
git撤销已经push到远端的commit：
git log -2
git --soft --hard d3b87bab6d216299d7167f9e53ac1ed43c6a1xxx
git push origin master --force

6>Git主干同步到分支
    1.先切换到本地仓库，更新最新代码。
    2.切换到要同步的分支
    3.运行命令
git merge main

```
7>Git分支同步到主干

```
   <1> 分支
    git add .
    git commit -m "  dff"
    git push
    <2> 主干 
    git checkout master 
    git pull
    <3> 分支
    git checkout wendy
    git commit #
    <4> 合并最新主干代码
    git checkout master
    git merge wendy --squash
    git commit #
    git push origin

```

* 8> rebase
```
    git checkout -b bugFix
    git commit 
    git checkout main
    git commit 
    git checkout bugFix
    git rebase main
```
* temp>test
```
    git checkout bugFix   git switch 
    git merge main
    git merge bugFix
    git checkout C1; git checkout main; git commit
    git commit C2
    git checkout main^
```
* 9> 主干修改，我想跳到分支
```
    以将更改藏起来以备后用
    git stash save README.md
    git checkout wendy
    我想重新回到我正在编辑的分支的文档
    git checkout main
    git stash pop
```
* 10> tag
```
    git tag v0.9
    git push origin --tags
    git push origin main
```
* 11> 出现以下错误
```
    fatal: You are not currently on a branch.
    To push the history leading to the current (detached HEAD)
    state now, use
    当我做一个git status我看到HEAD detached from 4a74ac3

    但是，如果您强制推送，则可能会导致所有其他签出该分支的用户出现问题。一个风险较小的解决方案是从分离的 HEAD 创建一个临时分支，然后将该分支合并到master：
    git branch temp-branch
    git checkout master
    git merge temp-branch
    git push origin master
```
* 12> 怎样在历史与现在版本来回切换
```
    git log - 10
    git checkout 9a2ae0a28aed4f0a87fdbf06ec
    git checkout xxxxx
```
* 13> del git cached
```
    git rm -r --cached .
    git add .
    git commit -m 'update .gitignore'
```
* 14> git 中 删除 submodule
```
    有时子模块的项目维护地址发生了变化，或者需要替换子模块，就需要删除原有的子模块。

    删除子模块较复杂，步骤如下：

    rm -rf 子模块目录 删除子模块目录及源码
    vi .gitmodules 删除项目目录下.gitmodules文件中子模块相关条目
    vi .git/config 删除配置项中子模块相关条目
    rm .git/module/* 删除模块下的子模块目录，每个子模块对应一个目录，注意只删除对应的子模块目录即可
    1. 优雅的删除子模块
    # 逆初始化模块，其中{MOD_NAME}为模块目录，执行后可发现模块目录被清空
    git submodule deinit {MOD_NAME} 
    # 删除.gitmodules中记录的模块信息（--cached选项清除.git/modules中的缓存）
    git rm --cached {MOD_NAME} 
    # 提交更改到代码库，可观察到'.gitmodules'内容发生变更
    git commit -am "Remove a submodule." 
    2. 修改某模块URL
    修改'.gitmodules'文件中对应模块的”url“属性;
    使用git submodule sync命令，将新的URL更新到文件.git/config；
    thinker-g@localhost: ~/app$ git submodule sync 
    Synchronizing submodule url for 'gitmods/thinker_g/Helpers'
    thinker-g@localhost: ~/app$ # 运行后可观察到'.git/config'中对应模块的url属性被更新
    thinker-g@localhost: ~/app$ git commit -am "Update submodule url." # 提交变更
    PS: 本实验使用git 2.7.4 完成，较低版本git可能不能自动更新.git/config文件，需要修修改完".gitmodule"文件后手动修改.git/config.以上。
```
* 15>

