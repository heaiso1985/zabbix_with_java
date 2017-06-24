package com.isoft.iradar.web.action;

import static com.isoft.iradar.Cphp._;
import static com.isoft.iradar.Cphp.empty;
import static com.isoft.iradar.common.util.IMonConsts.APP_NAME_TOMCAT;
import static com.isoft.iradar.inc.Defines.DB_ID;
import static com.isoft.iradar.inc.Defines.NOT_EMPTY;
import static com.isoft.iradar.inc.Defines.O_OPT;
import static com.isoft.iradar.inc.Defines.PAGE_TYPE_HTML_BLOCK;
import static com.isoft.iradar.inc.Defines.PAGE_TYPE_JS;
import static com.isoft.iradar.inc.Defines.PROFILE_TYPE_INT;
import static com.isoft.iradar.inc.Defines.P_ACT;
import static com.isoft.iradar.inc.Defines.P_SYS;
import static com.isoft.iradar.inc.Defines.RDA_SORT_UP;
import static com.isoft.iradar.inc.Defines.T_RDA_INT;
import static com.isoft.iradar.inc.Defines.T_RDA_STR;
import static com.isoft.iradar.inc.FuncsUtil.access_deny;
import static com.isoft.iradar.inc.FuncsUtil.get_request;
import static com.isoft.iradar.inc.FuncsUtil.hasRequest;
import static com.isoft.iradar.inc.FuncsUtil.validate_sort_and_sortorder;
import static com.isoft.iradar.inc.ValidateUtil.check_fields;
import static com.isoft.types.CArray.array;
import static com.isoft.types.CArray.map;

import java.util.Map;

import com.isoft.framework.persistlayer.SQLExecutor;
import com.isoft.iradar.api.API;
import com.isoft.iradar.managers.CProfile;
import com.isoft.iradar.model.params.CAppGet;
import com.isoft.iradar.tags.CTable;
import com.isoft.iradar.web.views.CView;
import com.isoft.types.CArray;
import com.isoft.types.Mapper.Nest;
/**
 * 设备详情页面 
 * @author HP Pro2000MT
 *
 */
public class TomcatInforAction extends RadarBaseAction{
	
	@Override
	protected void doInitPage() {
		page("title", _("Host detail"));
		page("file", "tomcatinfor.action");
		page("js", new String[] {"imon/common.js","imon/report/echarts-all.js"});	//添加设备
		page("hist_arg", new String[] { "groupid", "hostid" });
	}

	@Override
	protected void doCheckFields(SQLExecutor executor) {
		//		VAR		templateid	TYPE	OPTIONAL FLAGS	VALIDATION	EXCEPTION
		CArray fields = map(
			"groupid",					array(T_RDA_INT, O_OPT,	P_SYS,	DB_ID,		null),
			"hostid",					array(T_RDA_INT, O_OPT,	P_SYS,	DB_ID,		null),
			"applicationid",			array(T_RDA_INT, O_OPT,	P_SYS,	DB_ID,		null),
			"templateid",				array(T_RDA_INT, O_OPT,	P_SYS,	DB_ID,		null),
			// filter
			"filter_set",				array(T_RDA_STR, O_OPT,	P_SYS,	null,		null),
			"filter_field",				array(T_RDA_STR, O_OPT, null,	null,		null),
			"filter_field_value",	    array(T_RDA_STR, O_OPT, null,	null,		null),
			"filter_exact",           	array(T_RDA_INT, O_OPT, null,	"IN(0,1)",	null),
			//ajax
			"favobj",					array(T_RDA_STR, O_OPT, P_ACT,	null,		null),
			"favref",					array(T_RDA_STR, O_OPT, P_ACT,  NOT_EMPTY,	"isset({favobj})"),
			"favstate",				    array(T_RDA_INT, O_OPT, P_ACT,  NOT_EMPTY,	"isset({favobj})&&(\"filter\"=={favobj})")
		);
		check_fields(getIdentityBean(), fields);
	}

	@Override
	protected void doPermissions(SQLExecutor executor) {
		if (!empty(get_request("groupid")) && !API.HostGroup(getIdentityBean(), executor).isReadable(Nest.array(_REQUEST,"groupid").asLong())) {
			access_deny();
		}
		if (!empty(get_request("hostid")) && !API.Host(getIdentityBean(), executor).isReadable(Nest.array(_REQUEST,"hostid").asLong())) {
			access_deny();
		}
	}
	
	@Override
	protected boolean doAjax(SQLExecutor executor) {
		validate_sort_and_sortorder(getIdentityBean(), executor, "name", RDA_SORT_UP);
		
		if (hasRequest("favobj")) {
			if("filter".equals(Nest.value(_REQUEST,"favobj").asString())){
				CProfile.update(getIdentityBean(), executor, "web.hostinventories.filter.state", Nest.as(get_request("favstate")).asString(), PROFILE_TYPE_INT);
			}
		}

		if ((PAGE_TYPE_JS == Nest.value(page,"type").asInteger()) || (PAGE_TYPE_HTML_BLOCK == Nest.value(page,"type").asInteger())) {
			return false;
		}
		
		return false;
	}

	@Override
	public void doAction(SQLExecutor executor) {
		Long hostid = get_request("hostid", 0L);
		Long applicationid  = get_request("applicationid", 0L);
		CArray data = array();
		
		/* Display */
		if (hostid > 0) {
			CTable triggersForm = new  CTable();
			triggersForm.addItem(getLastTriggers(executor,hostid,0l,applicationid,APP_NAME_TOMCAT));
			Nest.value(data, "triggerForm").$(triggersForm);
			CAppGet options = new CAppGet();
			options.setOutput(new String[] { "name", "hostid",  "host" });
			options.setSelectHosts(new String[]{"name"});
			options.setApplicationIds(applicationid);
			Map application = API.Application(getIdentityBean(), executor).get(options);
			data.put("hostid", hostid);
			data.put("applicationid", applicationid);
			data.put("application", application);
			data.put("templateid", Nest.value(_REQUEST, "templateid").asString());
			CView hostinventoriesView = new CView("tomcat.view", data);
			hostinventoriesView.render(getIdentityBean(), executor);
			hostinventoriesView.show();
		} 
	}
	
	
	/** 获取最近告警事件
	 * @param executor
	 * @param hostid
	 * @param groupid
	 * @return
	 */
	public CArray getLastTriggers(SQLExecutor executor,long hostid,long groupid,long applicationid,String defprofix){
		TeventUtil events= new TeventUtil();
		return (CArray) events.getEventByAppid(executor, getIdentityBean(), 1, hostid, groupid,applicationid,defprofix);
		
	}
}
