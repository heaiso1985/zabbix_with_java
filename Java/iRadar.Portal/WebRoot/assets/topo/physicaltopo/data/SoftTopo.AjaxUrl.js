//初始化拓扑图
SoftTopo.initTopo_url="NetTopoGetPhyLinkTopoData.action";

//获取设备cpu等信息
SoftTopo.updateSubNetTopo_url="TopoMonitorData.action?ajaxRequestType=hostMonitorData";
//获取告警
SoftTopo.updateNodes_url="TopoMonitorData.action?ajaxRequestType=hostEventData";
//保存
SoftTopo.saveTopo_url="TopoDataOperPhyTopoSave.action";
//设备详情
SoftTopo.detail_url="/platform/iradar/host_detail.action";
