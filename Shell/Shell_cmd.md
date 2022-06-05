# Shell cmd


#### MAC AMD
* maco查看端口占用

    ```
     sudo lsof -i tcp:5000
    ```
* 杀掉进程
    ```
    npm i -g fkill-cli
    fkill :9000


    npx kill-port 3000
    ```
* Find
    ```
    find ../ -name .DS_Store -exec rm {} \;
    find ~/ -name '.DS_Store' -delete 删除当前目录的.DS_store
    ```
* Grep
    ```
    grep -sRn  "Bearer" ./ --exclude-dir="node_modules" 
    ```