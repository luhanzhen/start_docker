# 此脚本的目的是快速开启docker中的若干个容器。由于传统的方式需要 start xxx，然后 attach xxx， 再容器中开启ssh服务以后跳出，非常麻烦。本脚本可用于解决这个问题。

# 用法：
- 将脚本上传到服务器中。
- 先用chmod +x start_docker.sh 给脚本赋予可执行权。
- 执行./start_docker.sh xxx1 xxx2 xxx3
- xxx1 xxx2 xxx3 是容器的名字，对于不存在的名字，脚本会忽略。

# 时间： 2023.6.5