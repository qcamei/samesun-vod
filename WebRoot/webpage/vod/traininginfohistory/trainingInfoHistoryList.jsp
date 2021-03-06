<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="trainingInfoHistoryList" title="培训日志" actionUrl="trainingInfoHistoryController.do?datagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="编号" field="id" hidden="false"></t:dgCol>
   <t:dgCol title="VRS_ID号" field="billid" hidden="false" ></t:dgCol>
   <t:dgCol title="设备名" field="billname" hidden="false" ></t:dgCol>
   <t:dgCol title="时间" field="billstarttime" formatter="yyyy-MM-dd hh:mm:ss" align="center" query="true" queryMode="group"></t:dgCol>
   <t:dgCol title="持续时长(分钟)" field="billduration" align="center" ></t:dgCol>
   <t:dgCol title="Live类型" field="isasflive" replace="直播_1,录播_2" align="center" hidden="false" ></t:dgCol>
   <t:dgCol title="是否录制" field="isrecord" replace="否_0,是_1" align="center" ></t:dgCol>
   <t:dgCol title="培训状态" field="meetingstate" hidden="false" ></t:dgCol>
   <t:dgCol title="培训有限状态机" field="fsmstate" hidden="false" ></t:dgCol>
   <t:dgCol title="预约录制时间" field="appointmentdt" hidden="false" ></t:dgCol>
   <t:dgCol title="预约状态" field="appointmentstate" hidden="false" ></t:dgCol>
   <t:dgCol title="资源URL" field="asfurl" hidden="false" ></t:dgCol>
   <t:dgCol title="培训名称" field="name" hidden="false" ></t:dgCol>
   <t:dgCol title="所属类型" field="typeid" align="center" replace="公共类_1,专题类_2,讨论类_3" hidden="false" ></t:dgCol>
   <t:dgCol title="所属类型" field="typename" align="center" ></t:dgCol>
   <t:dgCol title="终端分组" field="rightid" hidden="false" ></t:dgCol>
   <t:dgCol title="培训主题" field="subject" align="center" query="true" width="100" ></t:dgCol>
   <t:dgCol title="培训主讲人" field="compere" align="center" width="50" ></t:dgCol>
   <t:dgCol title="培训简介" field="introduction" align="center" width="150" ></t:dgCol>
   <t:dgToolBar title="导出Excel" icon="icon-search" onclick="courseListExportXls();"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>
 
<script type="text/javascript">
	$(document).ready(function(){
		$("input[name='billstarttime_begin']").attr("class","easyui-datebox");
		$("input[name='billstarttime_end']").attr("class","easyui-datebox");
	});
	
	/*
	 *	excel导出
	 */
	function courseListExportXls() {
		JeecgExcelExport("trainingInfoHistoryController.do?exportXls","trainingInfoHistoryList");
	}
</script>