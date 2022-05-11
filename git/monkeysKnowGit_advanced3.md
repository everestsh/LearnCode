

#### 猴子都能懂的git入门---高级篇3  [改写提交！](https://backlog.com/git-tutorial/cn/stepup/stepup6_1.html)


* 1> 修改commit的信息
    * 修改最后一次commit信息
    ```
    git commit --amend --message="Register.css finish"
    ```  

* 2> git revert命令来取消 最近 的 提交。

```
git revert HEAD

```
* 3> git reset --hard HEAD~~ 我们将用reset来删除master分支最前面的两个提交。

```
git reset --hard HEAD~~
```

* 4> git cherry-pick 将分支 99daed2 项 并入master的历史提交
```
$ git checkout master
Switched to branch 'master'
$ git cherry-pick 99daed2
如果发生冲突，就打开sample.txt，修改冲突的部分之后再提交。
$ git add sample.txt
$ git commit
```

* 5> 若要汇合过去的提交，请用rebase -i。//*****//
    * a>
    ```
    git rebase -i HEAD~~
    ```
    * b>
    ```
    git rebase -i HEAD~~
    ```

* 6> merge --squash 把issue1分支的所有提交合并成一个提交，并导入到master分支。
```
$ git checkout master
Switched to branch 'master'
$ git merge --squash issue1
Auto-merging sample.txt
CONFLICT (content): Merge conflict in sample.txt
Squash commit -- not updating HEAD
Automatic merge failed; fix conflicts and then commit the result.
```


