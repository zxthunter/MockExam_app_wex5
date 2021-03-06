define(function(require){
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/select/radioGroup');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/messageDialog/messageDialog');
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/button/radio');
require('$model/UI2/system/components/justep/wing/child');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/wing/wing');
require('$model/UI2/system/components/justep/output/output');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/AppTest/examW'); 
require('css!$model/UI2/AppTest/examW').load();
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='__baseID__';
	this._flag_='de852cc99d7a98b6d329c3ee804002fa';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"_id":{"define":"_id","label":"ID","name":"_id","relation":"_id","rules":{"integer":true},"type":"Integer"},"answer":{"define":"answer","label":"答案","name":"answer","relation":"answer","type":"String"},"questionId":{"define":"questionId","label":"问题ID","name":"questionId","relation":"questionId","type":"String"},"questionType":{"define":"questionType","label":"问题类型","name":"questionType","relation":"questionType","rules":{"integer":true},"type":"String"},"questionTypeName":{"define":"questionTypeName","label":"问题类型","name":"questionTypeName","relation":"questionTypeName","type":"String"},"quetion":{"define":"quetion","label":"问题","name":"quetion","relation":"quetion","type":"String"},"score":{"define":"score","label":"单题分数","name":"score","relation":"score","rules":{"integer":true},"type":"Integer"},"selectionNum":{"define":"selectionNum","label":"选项数量","name":"selectionNum","relation":"selectionNum","rules":{"integer":true},"type":"Integer"},"selections":{"define":"selections","label":"选项","name":"selections","relation":"selections","type":"String"},"viewQuestion":{"define":"viewQuestion","label":"显示问题","name":"viewQuestion","relation":"viewQuestion","rules":{"calculate":"$row.val(\"_id\")+ \"、（\" + $row.val(\"questionTypeName\") + \"）\" +$row.val(\"quetion\")"},"type":"String"}},"directDelete":false,"events":{"onValueChanged":"questionDataValueChanged"},"idColumn":"_id","initData":"[]","limit":20,"xid":"questionData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"_id":{"define":"_id","label":"ID","name":"_id","relation":"_id","rules":{"integer":true},"type":"Integer"},"answer":{"define":"answer","label":"显示选项","name":"answer","relation":"answer","rules":{"calculate":"$row.val(\"selection\")+\" 、\" +$row.val(\"content\")"},"type":"String"},"content":{"define":"content","label":"选项内容","name":"content","relation":"content","type":"String"},"selection":{"define":"selection","label":"选项","name":"selection","relation":"selection","type":"String"}},"directDelete":false,"events":{},"idColumn":"_id","initData":"[]","limit":20,"xid":"nowSelectionData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"PaperId":{"define":"PaperId","label":"试卷ID","name":"PaperId","relation":"PaperId","type":"String"},"calRemainTime":{"define":"calRemainTime","label":"显示时间","name":"calRemainTime","relation":"calRemainTime","rules":{"calculate":"$model.calTime();"},"type":"String"},"examId":{"define":"examId","label":"考试ID","name":"examId","relation":"examId","type":"String"},"finishedQuestionNum":{"define":"finishedQuestionNum","label":"完成题数","name":"finishedQuestionNum","relation":"finishedQuestionNum","rules":{"integer":true},"type":"Integer"},"remainTime":{"define":"remainTime","label":"剩下的时间","name":"remainTime","relation":"remainTime","rules":{"integer":true},"type":"Long"},"studentId":{"define":"studentId","label":"学生ID","name":"studentId","relation":"studentId","type":"String"},"title":{"define":"title","label":"标题","name":"title","relation":"title","type":"String"},"totalQuestionNum":{"define":"totalQuestionNum","label":"总题数","name":"totalQuestionNum","relation":"totalQuestionNum","rules":{"calculate":"$model.questionData.count();","integer":true},"type":"Integer"}},"directDelete":false,"events":{"onValueChanged":"totalDataValueChanged"},"idColumn":"totalQuestionNum","initData":"[{\"totalQuestionNum\":{\"value\":\"\"},\"remainTime\":{\"value\":\"\"},\"calRemainTime\":\"\",\"title\":\"\",\"studentId\":\"\"}]","limit":20,"xid":"totalData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"_1":{"define":"_1","label":"1","name":"_1","relation":"_1","type":"String"},"_2":{"define":"_2","label":"2","name":"_2","relation":"_2","type":"String"},"_3":{"define":"_3","label":"3","name":"_3","relation":"_3","type":"String"},"_4":{"define":"_4","label":"4","name":"_4","relation":"_4","type":"String"}},"directDelete":false,"events":{},"idColumn":"_1","initData":"[]","limit":20,"xid":"titleData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"viewLeftNum":{"define":"viewLeftNum","label":"题数","name":"viewLeftNum","relation":"viewLeftNum","type":"String"},"viewLeftTime":{"define":"viewLeftTime","label":"时间","name":"viewLeftTime","relation":"viewLeftTime","rules":{"calculate":"\"剩余时间：\"+ $model.totalData.val(\"calRemainTime\")"},"type":"String"},"viewLeftTitle":{"define":"viewLeftTitle","label":"名称","name":"viewLeftTitle","relation":"viewLeftTitle","rules":{"calculate":"\"考试名称：\"+ $model.totalData.val(\"title\")"},"type":"String"}},"directDelete":false,"events":{},"idColumn":"viewLeftTitle","initData":"[{}]","limit":20,"xid":"leftData"});
}}); 
return __result;});