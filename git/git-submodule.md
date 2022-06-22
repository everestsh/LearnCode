# git submodule


* 1> git 中 删除 submodule
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
* 2>git submodule 添加 更新 删除 教程

    *   添加submodule

    ```
    # 例如我的子模块是tensorflow

    cd my_project/
    git submodule add https://github.com/tensorflow/tensorflow.git tensorflow

    或者给目录起个其他名字
    cd my_project/
    git submodule add https://github.com/tensorflow/tensorflow.git my_tensorflow
    ```

    * 初始化所有submodule
    ```
    cd my_project
    git submodule init
    git submodule update

    或者用一行命令
    cd my_project
    git submodule update --init --recursive
    ```

    * 更新submodule

    ```
     例如我的子模块是tensorflow
    把子模块看作单独的仓库就行：
    cd my_project/tensorflow/
    git pull

    ```

    *  删除submodule

    ```
    # 例如我的子模块是tensorflow

    rm -rf tensorflow  # 删除子模块目录文件
    vim .gitmodules # 移除子模块的索引信息
    vim .git/config # 移除子模块的配置信息
    rm -rf .git/modules/tensorflow # 移除子模块的其他信息

    可以提交.gitmodules了

    # 为了避免有缓存，可以再执行以下：
    git rm --cached tensorflow

    # 看到 fatal: pathspec 'xxxxx' did not match any files 说明说明干净了。
    ```

