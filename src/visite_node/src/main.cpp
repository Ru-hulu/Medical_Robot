#include"visite_node.hpp"

int get_people_id(int nav_id)
{
    return nav_id;
}
//导航点id 与 病人id的对应关系

int main(int argc,char** argv)
{
    ros::init(argc,argv,"visite_node");
    ros::NodeHandle nh;
    Visite_Node* node_ = Visite_Node::GetInstance();
    node_->SetHandle(nh);
    node_->InitService();
    ros::Rate rz(0.5);
    //收到巡诊启动请求的时候，会先调用回家函数。确保任务开始前已经到家
    while(ros::ok())
    {
        if(node_->get_visit_ok()==false)continue;//如果任务没有开始
        bool nav_reach = node_->Request_Nav();//是否到达
        if(nav_reach)
        {
            bool have_people = node_->Request_BedRec();//床上有人
            if(have_people)
            {
                int nav_index = node_->get_nav_index();
                int people_id = get_people_id(nav_index);//病人id
                node_->Request_UI(people_id);//UI渲染
                node_->Request_Lan(people_id);//语言对话
            }
        }
        node_->increase_nav_index();//更新index
        bool should_go_home = node_->check_go_home();
        if(should_go_home) node_->ResetMission();//回家
        rz.sleep();
        ros::spinOnce();
    }
    return 1;
}