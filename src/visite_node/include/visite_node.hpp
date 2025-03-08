#include <ros/ros.h>
#include <std_msgs/Header.h>
#include <vector>
#include"srvbg/people_id_ui.h"
#include"srvbg/visite_start.h"
#include"srvbg/bed_recog.h"
#include"srvbg/people_id_lan.h"
#include"srvbg/nav_goal.h"
class org_node
{
    protected:
        org_node()=default;
        ~org_node()=default;    
        org_node(org_node&&)=delete;
        org_node(const org_node&)=delete;
        org_node& operator=(org_node&&)=delete;
        org_node& operator=(const org_node)=delete;
};
struct pos
{
    float x;
    float y;
    float z;
    float yaw;
    pos(float x_,float y_,float z_,
    float yaw_){x=x_;y=y_;z=z_;yaw=yaw_;};
};
class Visite_Node:public org_node
{
    public:
        static Visite_Node* GetInstance();
        static void DeleteInstance();
        void SetHandle(ros::NodeHandle &nh_);
        void InitService();//初始化所有服务
        bool get_visit_ok();
        void set_visit_ok(bool);
        bool check_go_home();
        void ResetMission();
                    ros::ServiceClient UI_Render_Client;//让UI渲染病人信息
                    ros::ServiceClient BedRec_Client;//询问病床是否有人
                    ros::ServiceClient Lan_Client;//请求语言节点服务
                    ros::ServiceClient Nav_Client;//请求导航服务
                    ros::ServiceServer Start_Visit_Server;//响应UI的启动信息
        void Request_UI(int people_id_);//发送UI请求渲染病人识别写过
        bool Request_BedRec();//请求识别病床上是否有人
        void Request_Lan(int people_id_);//请求语言服务 
        bool Request_Nav();//请求导航服务，返回是否到达
        bool Request_Nav_Home();//请求导航服务，返回是否到达
        void increase_nav_index();//更新目标点信息
        int get_nav_index();//更新目标点信息
    private:
        Visite_Node();
        bool StartVisitCallBack(srvbg::visite_start::Request & rqst,srvbg::visite_start::Response & resp);
        ros::NodeHandle nh;
        void get_stop_points();

        bool start_visite_ok = false;
        int nav_index = 0;
                    float home_x  = 0;
                    float home_y  = 0;
                    float home_z  = 0;
                    float home_yaw  = 0;
                    std::vector<pos*> all_stop_pose;
};
static Visite_Node* inst=nullptr;