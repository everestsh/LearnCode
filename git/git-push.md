# git push

* 1>
    * git撤销已经push到远端的commit：

    ```
    git log --pretty=oneline
    git log -2
    git reset --hard d3b87bab6d216299d7167f9e53ac1ed43c6a1xxx
    git push origin master --force
    ```
    * git撤销已经push到远端的commit：
    ```
    git log --pretty=oneline
    git log -2
    git --soft d3b87bab6d216299d7167f9e53ac1ed43c6a1xxx
    或
    git --hard d3b87bab6d216299d7167f9e53ac1ed43c6a1xxx
    git push origin master --force
    ```
    * HEAD指向的版本就是当前版本，因此，Git允许我们在版本的历史之间穿梭，
    使用命令
    ```
    git reset --hard commit_id。
    ```
    穿梭前，用git log可以查看提交历史，以便确定要回退到哪个版本。
    要重返未来，用git reflog查看命令历史，以便确定要回到未来的哪个版本。

* 2>Git分支同步到主干

    ```
    <1> 分支
    git add .
    git commit -m "  dff"
    git push
    <2> 主干 
    git checkout main
    git pull
    <3> 分支
    git checkout wendy
    git commit #
    <4> 合并最新主干代码
    git checkout main
    git merge wendy --squash
    git commit #
    git push origin

    ```
* 3>
    * 命令`git push origin <tagname>`可以推送一个本地标签；

    * 命令`git push origin --tags`可以推送全部未推送过的本地标签；

    * 命令`git tag -d <tagname>`可以删除一个本地标签；

    * 命令 `git push origin :refs/tags/<tagname>`可以删除一个远程标签。

