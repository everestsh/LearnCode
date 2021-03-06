# WebLearn


下载：
```
it clone git@github.com:everestsh/LearnCode.git
```
测试github是否联通：
```
ssh -T git@github.com
```

测试github是否联通：
```
ssh -T git@github.com
```
* 1>
* 2>更新：

    ```
    git pull: 更新当前分支(将本地的文件更新到最新)
    git pull origin master: 更新 origin remote 的 master 分支
    git fetch: 获取服务器端的改动，比如其他用户新建了一个分支并push到了服务器，运行这个命令之后会得到这个分支的信息
    ```

* 3>上传：

    ```
    将自己的修改push到github上：
    git add .
    git commit -m "first commit"
    git push -u origin master
    or
    git add --all
    git commit -m "first commit"
    git push -u origin master
    ```
* 5>Git主干同步到分支
    1.先切换到本地仓库，更新最新代码。
    2.切换到要同步的分支
    3.运行命令
    ```
    git merge main

    ```
* 7> rebase
```
    git checkout -b bugFix
    git commit 
    git checkout main
    git commit 
    git checkout bugFix
    git rebase main
```

* 8> 主干修改，我想跳到分支
```
    以将更改藏起来以备后用
    git stash save README.md
    git checkout wendy
    我想重新回到我正在编辑的分支的文档
    git checkout main
    git stash pop
```
* 9> tag
```
    git tag v0.9
    git push origin --tags
    git push origin main
```
* 10> 出现以下错误
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
* 11> 怎样在历史与现在版本来回切换
```
    git log --pretty=oneline
    git log - 10
    git checkout 9a2ae0a28aed4f0a87fdbf06ec
    git checkout xxxxx
```
* 12> del git cached
```
    git rm -r --cached .
    git add .
    git commit -m 'update .gitignore'
```


* 15>git 删除本地和远程分支

    * 切换到要操作的项目文件夹 

    ```
    cd <ProjectPath>
    ```
    * 查看项目的分支们(包括本地和远程) 

    ```
    git branch -a
    ```

    * 删除本地分支

    ```
    git branch -d <BranchName>
    ```

    * 删除远程分支

    ```
    git push origin --delete <BranchName>
    ```

    * 查看删除后分支们 

    ```
    git branch -a
    ```
  

* 16>git查看某个文件的修改历史

    *  切换到目录
    *  使用下面的命令可列出文件的所有改动历史，注意，这里着眼于具体的一个文件，而不是git库，如果是库，那改动可多了去了～

    ```
    git log --pretty=oneline 文件名
    ```
    *  git show即可显示具体的某次的改动的修改～

    ```
    git show 356f6def9d3fb7f3b9032ff5aa4b9110d4cca87e
    ```

* 17>git 放弃本地修改，强制拉取更新

    * 1> git fetch --all
    * 2> git reset --hard origin/master
    * 3> git pull //可以省略 

    
    `it fetch 指令是下载远程仓库最新内容，不做合并`

    `git reset 指令把HEAD指向master最新版本`

* 18>git 查看 文件修改

    * 1> 查看某个文件修改
    ```
    git diff 文件名
    ``` 
   * 2> 查看有无文件修改
   ```
    git diff
   ``` 
   或
   ```
   git status
   ```
    ```
    修改README.md后,使用git status查看：

    ➜  LearnCode git:(master) ✗ git status
    On branch master
    Your branch is up to date with 'origin/master'.

    Changes not staged for commit:
    (use "git add <file>..." to update what will be committed)
    (use "git restore <file>..." to discard changes in working directory)
            modified:   README.md

    no changes added to commit (use "git add" and/or "git commit -a")

    修改README.md后,运行git add .使用git status查看：
    ➜  LearnCode git:(master) ✗ git add .
    ➜  LearnCode git:(master) ✗ git status
    On branch master
    Your branch is up to date with 'origin/master'.

    Changes to be committed:
    (use "git restore --staged <file>..." to unstage)
            modified:   README.md

    修改README.md后,运行git commit -m 后使用git status查看：
    ➜  LearnCode git:(master) ✗ git commit -m "update README"  
    [master 09c1452] update README
    1 file changed, 110 insertions(+), 1 deletion(-)
    ➜  LearnCode git:(master) git status                    
    On branch master
    Your branch is ahead of 'origin/master' by 1 commit.
    (use "git push" to publish your local commits)

    nothing to commit, working tree clean
    ```

* 19> 恢复使用·git reset --hard HEAD^·回退到的某个版本，

    ```
    git reflog
    ```
* 20> git log --graph命令可以看到分支合并图。

    ```
    git log --graph --pretty=oneline --abbrev-commit
    git log --pretty=oneline
    git log --graph
    ```

* 21> Git还提供了一个stash功能，
    
    * 可以把当前工作现场“储藏”起来，等以后恢复现场后继续工作：

    ```
    git stash
    ```

    * 用git stash list命令看看,刚才的工作现场存到哪去了？

    ```
    git stash list 
    ```
    * Git把stash内容存在某个地方了，但是需要恢复一下，有两个办法：

        * 1, 用`git stash apply`恢复，但是恢复后，stash内容并不删除，你需要用`git stash drop`来删除；
        * 2, 另一种方式是用`git stash pop`，恢复的同时把stash内容也删了：
        * 3, 你可以多次stash，恢复的时候，先用`git stash list`查看，然后恢复指定的stash，用命令：
        ```
        git stash apply stash@{0}
        ```
    * 工作流程
    ```
    git stash
    git stash pop
    ```
* 22> 多人协作

    * 查看远程库的信息
    ```
    git remote
    ```

    * 显示更详细的信息
    ```
    git remote -v
    ```

    * 推送分支
    ```
    git push origin master
    ```
        * master分支是主分支，因此要时刻与远程同步；
        * dev分支是开发分支，团队所有成员都需要在上面工作，所以也需要与远程同步；
* 23> 修改commit的信息
    * 修改最后一次commit信息
    ```
    git commit --amend --message="Register.css finish"
    ```        
* 24>

要随时掌握工作区的状态，使用`git status`命令。
如果`git status`告诉你有文件被修改过，用`git diff`可以查看修改内容。

* 25>

HEAD指向的版本就是当前版本，因此，Git允许我们在版本的历史之间穿梭，使用命令`git reset --hard commit_id`。
穿梭前，用`git log`可以查看提交历史，以便确定要回退到哪个版本。
要重返未来，用`git reflog`查看命令历史，以便确定要回到未来的哪个版本。

* 26>

场景1：当你改乱了工作区某个文件的内容，想直接丢弃工作区的修改时，用命令`git checkout -- file`。
场景2：当你不但改乱了工作区某个文件的内容，还添加到了暂存区时，想丢弃修改，分两步，第一步用命令`git reset HEAD <file>`，就回到了场景1，第二步按场景1操作。
场景3：已经提交了不合适的修改到版本库时，想要撤销本次提交，参考版本回退一节，不过前提是没有推送到远程库。

* 27>

Git鼓励大量使用分支：

* 查看分支：`git branch`
* 创建分支：`git branch <name>`
* 切换分支：`git checkout <name>`或者 `git switch <name>`
* 创建+切换分支：`git checkout -b <name>`或者 `git switch -c <name>`
* 合并某分支到当前分支：`git merge <name>`
* 删除分支：`git branch -d <name>`
* 创建并切换到新的`dev`分支，可以使用：`git switch -c dev`
* 直接切换到已有的`master`分支，可以使用：`git switch master`

* 27>

修复bug时，我们会通过创建新的bug分支进行修复，然后合并，最后删除；

当手头工作没有完成时，先把工作现场`git stash`一下，然后去修复bug，修复后，再`git stash pop`，回到工作现场；

在master分支上修复的bug，想要合并到当前dev分支，可以用git cherry-pick <commit>命令，把bug提交的修改“复制”到当前分支，避免重复劳动。

* 28>


rebase操作可以把本地未push的分叉提交历史整理成直线；

rebase的目的是使得我们在查看历史提交的变化时更容易，因为分叉的提交需要三方对比。

* 29>

    * 命令`git tag <tagname>`用于新建一个标签，默认为HEAD，也可以指定一个commit id；

    * 命令`git tag -a <tagname> -m "blablabla..."`可以指定标签信息；

    * 命令`git tag`可以查看所有标签。

* 31>git修改分支名称
    * 1> 本地分支重命名: `git branch -m oldName newName`

* 32> 删除远程地址
    * 1> 第一個方法直接用指令修改 remote 遠端數據庫的位置(URL) `git remote set-url origin git://new.url.here`
    * 2> git remote remove heroku   // remove a remote:
    * 3> git remote add heroku myAppsName  
    * 4> git push -u origin master
    *  git remote -v  

* 33> git  修改分支名称
    * 1> 本地分支重命名
        `git branch -m oldName newName`
    * 2> 远程分支重命名
        * 重命名远程分支对应的本地分支
            `git branch -m oldName newName`
        * 删除远程分支
            `git push --delete origin oldName`
        * 上传新命名的本地分支
            `git push origin newName`
        * 把修改的本地分支与远程分支关联
            `git branch --set-upstream-to origin/newName`

    * 3> 查看当前代码仓库源 `git remote -v  `
* 34> 合并分支的README.md 到main
    `git checkout mj.g_1 README.md `
* 35> git 命令合并分支代码

```
合并步骤：

1、进入要合并的分支（如开发分支合并到master，则进入master目录）

git pull

2、查看所有分支是否都pull下来了

git branch -a

3、使用merge合并开发分支

git merge 分支名

4、查看合并之后的状态

git status 

5、有冲突的话，通过IDE解决冲突；

6、解决冲突之后，将冲突文件提交暂存区

git add 冲突文件

7、提交merge之后的结果

git commit 

如果不是使用git commit -m "备注" ，那么git会自动将合并的结果作为备注，提交本地仓库；

8、本地仓库代码提交远程仓库

git push

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



* javascript format vscode

```
The code formatting is available in Visual Studio Code through the following shortcuts:
On Windows Shift + Alt + F.
On Mac Shift + Option + F.
On Linux Ctrl + Shift + I.

```

```
echo "# MACOS" >> .gitignore; echo ".DS_Store" >> .gitignore
git push --set-upstream origin init
```