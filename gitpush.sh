#!/bin/bash

echo -e "1 > 删除当前目录的.DS_store.\n"
find ../ -name .DS_Store a.out exec rm {} \;
find ../ -name . *.exe exec rm {} \;
find ../ -name .  *.o exec rm {} \;
echo -e "2 > 删除\n"
cd go   && mv bin doc lib pkg  ../../../gobak   && cd -
rm -rf "./c++/github.com" "c++/leetcode/0001towSum/build" "c++/leetcode/0002addTwoNumbers/build" "c++/slcpp/0003/build"
echo -e "3 > git add . 将当前目录下修改的所有代码从工作区添加到暂存区 . 代表当前目录"
git add .
echo -e "4 > git commit -m ‘注释’ 将缓存区内容添加到本地仓库 \n"
read -p "enter a commit: " commit
if [ ! -n "$commit" ] ;then
  echo "you have not input a word!"
else
  echo "the word you input is $commit"
fi
git commit -m "$commit"
echo -e "5 > git push -u origin master. 将本地版本库推送到远程服务器\n"
git push -u origin master
echo -e "* > done !!!\n"
exit 0;
