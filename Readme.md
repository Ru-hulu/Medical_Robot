# 巡诊模式待确认的问题：  
### 已经确定了若干个离散的目标点，这些目标点是否都各自对应一个病床？

# 各个开发组注意！！  
### 1、所有的srv均已经提供实现(srvbg)，具体的使用参照visit_node中的使用。CMakeLists 和 package中的写法也可参考。  
### 2、各节点将代码整合到各自的文件夹中。工程框架已经帮大家搭建好了，只需要将各自内容整合到对应区域就行。  
### 3、param文件夹存放相关参数文件，其中stop_pos.txt是经停点的 x y yaw。  