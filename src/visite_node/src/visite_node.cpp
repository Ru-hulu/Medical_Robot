#include"visite_node.hpp"
#include<stdlib.h>
#include<string>
#include<sstream>
void Visite_Node::DeleteInstance()
{
    if(inst==nullptr)return;
    for(pos* itt:inst->all_stop_pose)
    delete itt;
    delete inst;
}
void Visite_Node::ResetMission()
{
    set_visit_ok(false);
    nav_index = 0;
    Request_Nav_Home();
}
Visite_Node::Visite_Node()
{
    get_stop_points();
}
Visite_Node* Visite_Node::GetInstance()
{
    if(inst==nullptr)
    {
        inst = new Visite_Node();
    }
    return inst;
}
bool Visite_Node::get_visit_ok()
{return start_visite_ok;}
void Visite_Node::set_visit_ok(bool st)
{start_visite_ok=st;}

void Visite_Node::SetHandle(ros::NodeHandle &nh_)
{
    nh = nh_;
}


 
bool Visite_Node::StartVisitCallBack(srvbg::visite_start::Request & rqst,srvbg::visite_start::Response & resp)
{
    if(rqst.start_visit==true)
    {
        resp.start_ok = true;
        set_visit_ok(true);
        Request_Nav_Home();
        nav_index = 0;
    }
    else
    {
        resp.start_ok = false;
        set_visit_ok(false);
        nav_index = 0;
    }
    return true;
}

void Visite_Node::InitService()
{
    Start_Visit_Server = nh.advertiseService("visite_start",&Visite_Node::StartVisitCallBack,this);//响应UI的启动信息
    UI_Render_Client = nh.serviceClient<srvbg::people_id_ui>("people_id_ui");//让UI渲染病人信息
    BedRec_Client = nh.serviceClient<srvbg::bed_recog>("bed_recog");//询问病床是否有人
    Lan_Client = nh.serviceClient<srvbg::people_id_lan>("people_id_lan");//请求语言节点服务
    Nav_Client = nh.serviceClient<srvbg::nav_goal>("nav_goal");//请求导航服务
}
void Visite_Node::get_stop_points()
{
    FILE *file = fopen("/home/r/Mysoftware/MeRobot/param/stop_pos.txt","r");
    if(file==nullptr)
    {
        perror("Stop pose file path error!");
        return;
    }
    char line[1024];
    while(fgets(line,sizeof(line),file)!=NULL)
    {
        ssize_t len = strlen(line);
        if(len>0)
        {
            if(line[len-1]=='\n') line[len-1]='\0';
            std::string this_line(line);
            std::cout<<this_line<<std::endl;
            std::stringstream ss(this_line);
            
            std::string fx,fy,fyaw;
            std::getline(ss,fx,' ');
            std::getline(ss,fy,' ');
            std::getline(ss,fyaw,' ');            
            pos* this_p = new pos(std::stof(fx),std::stof(fy),0.0,std::stof(fyaw));
            all_stop_pose.push_back(this_p);
        }
        else if(len==0)
        {
            break;
        }
        else
        {
            perror("read param failed.\n");
            exit(1);
        }
    }
}
bool Visite_Node::check_go_home()
{
    if(all_stop_pose.size()<=nav_index)
    return true;
    return false;
}
void Visite_Node::Request_UI(int people_id_)//发送UI请求渲染病人识别写过
{
    srvbg::people_id_ui rqst;
    rqst.request.people_id = people_id_;
    UI_Render_Client.call(rqst);
}
bool Visite_Node::Request_BedRec()//请求识别病床上是否有人
{
    srvbg::bed_recog rqst;
    rqst.request.start_recog_bed = true;
    BedRec_Client.call(rqst);
    return rqst.response.have_people;
}
void Visite_Node::Request_Lan(int people_id_)//请求语言服务
{
    srvbg::people_id_lan rqst;
    rqst.request.id_mode = std::to_string(people_id_)+"_0";//人的id + 模式标志
    Lan_Client.call(rqst);
    return;
}
bool Visite_Node::Request_Nav()//请求导航服务，返回是否到达
{
    srvbg::nav_goal rqst;
    rqst.request.tar_x = all_stop_pose[nav_index]->x;
    rqst.request.tar_y = all_stop_pose[nav_index]->y;
    rqst.request.tar_z = all_stop_pose[nav_index]->z;
    rqst.request.tar_yaw = all_stop_pose[nav_index]->yaw;
    Nav_Client.call(rqst);
    return rqst.response.reach_ok;    
}
bool Visite_Node::Request_Nav_Home()//请求导航服务，返回是否到达
{
    srvbg::nav_goal rqst;
    rqst.request.tar_x = home_x;
    rqst.request.tar_y = home_y;
    rqst.request.tar_z = home_z;
    rqst.request.tar_yaw = home_yaw;
    Nav_Client.call(rqst);
    return rqst.response.reach_ok;    
}
void Visite_Node::increase_nav_index()//更新目标点信息
{
    nav_index++;
}
int Visite_Node::get_nav_index()//更新目标点信息
{
    return nav_index;
}