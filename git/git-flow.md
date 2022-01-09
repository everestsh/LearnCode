


* 1> GitFlow 入门---Git 的一个分支模型
    * 1> `brew install git-flow`
    * 2> 命令创建您的第一个功能分支 `git flow feature start ST-TASK01`,如果没有 git-flow，这将是实现相同的命令 `git checkout -b feature/ST-TASK01 develop`
    * 3> 提交更改
        ```
        git add .
        git commit -m "Updating my feature branch st-task01"
        ```
    * 4>明确告诉 git-flow 将分支发布到远程源`git flow feature publish ST-TASK01`,如果没有 git-flow，您必须运行以下命令：
        ```
        git checkout feature/ST-TASK01
        git push origin feature/ST-TASK01
        ```
    * 5> 完成功能开发后，您可以将其合并到开发分支，或通过 git-flow 进行：`git flow feature finish ST-TASK01`,这些是实现相同结果的等效 vanilla Git 命令：
        ```
        git checkout develop
        git merge --no-ff feature/MYFEATURE
        git branch -d feature/MYFEATURE
        ```
        如果 Git 出于安全原因检测到您的 HEAD 未达到要合并的提交，–no-ff标志会阻止git merge命令执行快进。
    * 6>太好了，现在您已将代码合并到开发分支中。然而，这还不遥远。GitFlow 基本上在本地工作；通过远程存储库发送更改的所有决定都取决于您。
    运行命令向上推：
        ```
        git push origin --all
        ```
    此命令将本地更改的所有内容（分支、标签等）推送到远程源。您将稍微使用它以确保 git-flow 更改始终与远程同步。





* 2> 
    * 创建第一个发布分支：`git flow release start 0.1.0` 如果没有 git-flow，您必须运行以下命令来创建相同的发布分支：`git checkout -b release/0.1.0 develop`
