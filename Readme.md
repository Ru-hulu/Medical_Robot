### 巡诊模式待确认的问题：  
##### 已经确定了若干个离散的目标点，这些目标点是否都各自对应一个病床？

### 提示
##### 1、所有的srv均已经提供实现(srvbg)，具体的使用参照visit_node中的使用。CMakeLists 和 package中的写法也可参考。  
##### 2、各节点将代码整合到各自的文件夹中。工程框架已经帮大家搭建好了，只需要将各自内容整合到对应区域就行。  
##### 3、param文件夹存放相关参数文件，其中stop_pos.txt是经停点的 x y yaw。  

### git开发指南：如何构建新的分支？如何更新代码文件？
##### 
##### 1、首先将仓库代码拷贝一份下来 git clone https://github.com/Ru-hulu/Medical_Robot  这里默认拷贝的是master分支
##### 2、每个开发者进入文件夹后执行 git branch abc 创建新的分支(当前这个分支还在本地)
##### 3、开发者切换到自己创建的分支，开始开发 git branch checkout abc 
##### xxxxxx进行开发任务后xxxxxxxx
##### 4、git add .
##### 5、git commit -m "自己修改了什么说说"
##### 6、将代码进行提交 git push --set-upstream origin for_dev 设置上游分支为origin
##### 
