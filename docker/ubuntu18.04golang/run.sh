#docker run --name 1804cpp -d -p 30000:22 u1804_cpp:1804  /usr/sbin/sshd -D
#docker run --name 1804cppgo -d -p 31000:22 u1804_cppgo:1804  /etc/init.d/ssh start -D
docker run --name  u1804_cppgo -d -p 31000:22 -it -v /Users/raylea/Dropbox/Workspace:/root/Workspace sooof/u1804_cppgov01:1804  /etc/init.d/ssh start -D
