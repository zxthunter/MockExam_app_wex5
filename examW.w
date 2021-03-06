<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:mobile">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:329px;top:0px;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="questionData" idColumn="_id" 
      onValueChanged="questionDataValueChanged"> 
      <column label="ID" name="_id" type="Integer" xid="xid5"></column>
  <column label="问题ID" name="questionId" type="String" xid="xid17"></column>
  <column label="问题类型" name="questionType" type="Integer" xid="xid6"></column>
  <column label="选项数量" name="selectionNum" type="Integer" xid="xid7"></column>
  <column label="问题类型" name="questionType" type="String" xid="xid7"></column>
  <column label="答案" name="answer" type="String" xid="xid6"></column>
  <column label="问题" name="quetion" type="String" xid="xid8"></column>
  <data xid="default4">[]</data>
  <column label="选项" name="selections" type="String" xid="xid9"></column>
  <column label="显示问题" name="viewQuestion" type="String" xid="xid11"></column>
  <rule xid="rule3">
   <col name="viewQuestion" xid="ruleCol4">
    <calculate xid="calculate4">
     <expr xid="default7">$row.val(&quot;_id&quot;)+ &quot;、（&quot; +  $row.val(&quot;questionTypeName&quot;) + &quot;）&quot; +$row.val(&quot;quetion&quot;)</expr></calculate> </col> 
   <col name="isFinished" xid="ruleCol5">
    <calculate xid="calculate5">
     <expr xid="default8">js: ($row.val(&quot;answer&quot;)!=&quot;&quot;)</expr></calculate> </col> </rule>
  <column label="单题分数" name="score" type="Integer" xid="xid16"></column>
  <column label="问题类型" name="questionTypeName" type="String" xid="xid15"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="nowSelectionData" idColumn="_id"> 
      <column label="ID" name="_id" type="Integer" xid="xid1"></column>
  <column label="选项" name="selection" type="String" xid="xid1"></column>
  <column label="选项内容" name="content" type="String" xid="xid2"></column>
  <data xid="default2">[]</data>
  <rule xid="rule1">
   <col name="calSelction" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default1"></expr></calculate> </col> 
   <col name="answer" xid="ruleCol2">
    <calculate xid="calculate2">
     <expr xid="default3">$row.val(&quot;selection&quot;)+&quot; 、&quot; +$row.val(&quot;content&quot;)</expr></calculate> </col> </rule>
  <column label="显示选项" name="answer" type="String" xid="xid3"></column></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="totalData" idColumn="totalQuestionNum" onValueChanged="totalDataValueChanged"> 
      <column label="总题数" name="totalQuestionNum" type="Integer" xid="xid4"></column>
  <column label="完成题数" name="finishedQuestionNum" type="Integer" xid="xid10"></column>
  <column label="试卷ID" name="PaperId" type="String" xid="xid18"></column>
  <column label="剩下的时间" name="remainTime" type="Long" xid="xid13"></column>
  <rule xid="rule2">
   <col name="totalQuestionNum" xid="ruleCol3">
    <calculate xid="calculate3">
     <expr xid="default6">$model.questionData.count();</expr></calculate> </col> 
   <col name="calRemainTime" xid="ruleCol6">
    <calculate xid="calculate6">
     <expr xid="default9">$model.calTime();</expr></calculate> </col> </rule>
  <column label="显示时间" name="calRemainTime" type="String" xid="xid14"></column>
  <column label="标题" name="title" type="String" xid="xid19"></column>
  <column label="学生ID" name="studentId" type="String" xid="xid24"></column>
  <column label="考试ID" name="examId" type="String" xid="xid25"></column>
  <data xid="default5">[{&quot;totalQuestionNum&quot;:{&quot;value&quot;:&quot;&quot;},&quot;remainTime&quot;:{&quot;value&quot;:&quot;&quot;},&quot;calRemainTime&quot;:&quot;&quot;,&quot;title&quot;:&quot;&quot;,&quot;studentId&quot;:&quot;&quot;}]</data></div> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="titleData" idColumn="_1"><column label="1" name="_1" type="String" xid="xid20"></column>
  <column label="2" name="_2" type="String" xid="xid21"></column>
  <column label="3" name="_3" type="String" xid="xid22"></column>
  <column label="4" name="_4" type="String" xid="xid23"></column>
  <data xid="default10">[]</data>
  <rule xid="rule4"></rule></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="leftData" idColumn="viewLeftTitle"><column label="名称" name="viewLeftTitle" type="String" xid="xid12"></column>
  <column label="时间" name="viewLeftTime" type="String" xid="xid26"></column>
  <column label="题数" name="viewLeftNum" type="String" xid="xid27"></column>
  <rule xid="rule5">
   <col name="viewLeftTitle" xid="ruleCol7">
    <calculate xid="calculate7">
     <expr xid="default11">&quot;考试名称：&quot;+ $model.totalData.val(&quot;title&quot;)</expr></calculate> </col> 
   <col name="viewLeftTime" xid="ruleCol8">
    <calculate xid="calculate8">
     <expr xid="default12">&quot;剩余时间：&quot;+ $model.totalData.val(&quot;calRemainTime&quot;)</expr></calculate> </col> </rule>
  <data xid="default13">[{}]</data></div></div>  
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog2" message="考试时间已经到了！" onOK="messageDialog2OK" style="left:44px;top:28px;"></span><span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver1" onReceive="windowReceiver1Receive" style="left:61px;top:54px;"></span>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog1" type="YesNo" onYes="messageDialog1Yes" message="您确定要交卷？" style="left:120px;top:16px;"></span><div component="$UI/system/components/justep/wing/wing" class="x-wing" xid="wing1"
    display="push" dismissible="true"> 
    <div class="x-wing-left bg-success" xid="left1"><div component="$UI/system/components/justep/output/output" class="x-output outputDiv" xid="output7" bind-ref="leftData.ref('viewLeftTitle')"></div>
  <div component="$UI/system/components/justep/output/output" class="x-output outputDiv" xid="output8" bind-ref="leftData.ref('viewLeftTime')"></div>
  <a component="$UI/system/components/justep/button/button" class="btn btn-warning _buttonOver" label="交卷" xid="button8" onClick="button8Click">
   <i xid="i8"></i>
   <span xid="span8">交卷</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-warning buttonOver" label="离开" xid="button9" onClick="button9Click">
   <i xid="i9"></i>
   <span xid="span9">离开</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-success buttonOver" label="主页面" xid="button10" onClick="button10Click">
   <i xid="i10"></i>
   <span xid="span10">主页面</span></a></div>  
    <div class="x-wing-content" xid="content1"> 
      <div class="x-wing-backdrop" xid="div1"/>  
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel1"> 
        <div class="x-panel-top" xid="top1"> 
          <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar bg-success"
            xid="titleBar1"> 
            <div class="x-full bg-success" xid="div2"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-success btn-only-icon"
                style="position:relative; left:10px; top:5px" label="button" xid="button2"
                onClick="button2Click" icon="icon-android-note"> 
                <i xid="i2" class="icon-android-note"/>  
                <span xid="span2"/> 
              </a>  
              <div xid="div3" style=" float:right; right:2px; width:150px; margin:0px 10px 0px 0px"> 
                <div component="$UI/system/components/justep/output/output"
                  class="glyphicon glyphicon-time x-output timeColor" xid="output1" style="width:150px; float:right;"
                  bind-ref="totalData.ref('calRemainTime')"/>
              </div> 
            </div> 
          </div> 
        </div>  
        <div class="x-panel-content" xid="content2"> 
          <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
            xid="contents1" onActiveChange="contents1ActiveChange" routable="false" slidable="true" swipe="false" wrap="true"> 
            <div class="x-contents-content active" xid="content2"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-lg btn-icon-right btn-only-icon"
                label="button" xid="button5" icon="icon-chevron-right" style="position:absolute; top:38%; right:0px; float:right"
                onClick="buttonNext" bind-disable=" $model.questionData.val(&quot;_id&quot;)== $model.totalData.val(&quot;totalQuestionNum&quot;)"> 
                <i xid="i5" class="icon-chevron-right"/>  
                <span xid="span5"/> 
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-lg btn-icon-left btn-only-icon"
                label="button" xid="button3" icon="icon-chevron-left" style="position:absolute; top:38%; left:0px"
                onClick="buttonPrev" bind-disable=" $model.questionData.val(&quot;_id&quot;)=='1'"> 
                <i xid="i3" class="icon-chevron-left"/>  
                <span xid="span3"/> 
              </a>  
              <div xid="div6" class="showDiv"> 
                <div component="$UI/system/components/justep/output/output"
                  class="x-output textSize_lg" xid="output2" bind-ref="questionData.ref('viewQuestion')"/>  
                <span component="$UI/system/components/justep/select/radioGroup"
                  class="x-radio-group x-radio-group-lg x-radio-group-vertical" xid="radioGroup1" bind-ref="questionData.ref('answer')"
                  bind-itemset="nowSelectionData" bind-itemsetValue="ref('_id')"
                  bind-itemsetLabel="ref('answer')"/> 
              </div> 
            </div>  
            <div class="x-contents-content" xid="content4"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-lg btn-icon-left btn-only-icon"
                label="button" xid="button7" icon="icon-chevron-left" style="position:absolute; top:38%; left:0px"
                onClick="buttonPrev" bind-disable=" $model.questionData.val(&quot;_id&quot;)=='1'"
                target="content2"> 
                <i xid="i7" class="icon-chevron-left"/>  
                <span xid="span7"/> 
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-lg btn-icon-right btn-only-icon"
                label="button" xid="button6" icon="icon-chevron-right" style="position:absolute; top:38%; right:0px; float:right"
                onClick="buttonNext" bind-disable=" $model.questionData.val(&quot;_id&quot;)== $model.totalData.val(&quot;totalQuestionNum&quot;)"> 
                <i xid="i6" class="icon-chevron-right"/>  
                <span xid="span6"/> 
              </a>  
              <div xid="div7" class="showDiv"> 
                <div component="$UI/system/components/justep/output/output"
                  class="x-output textSize_lg" xid="output2" bind-ref="questionData.ref('viewQuestion')"/>  
                <span component="$UI/system/components/justep/select/radioGroup"
                  class="x-radio-group x-radio-group-lg x-radio-group-vertical" xid="radioGroup3" bind-itemset="nowSelectionData"
                  bind-itemsetValue="ref('_id')" bind-itemsetLabel="ref('answer')"
                  bind-ref="questionData.ref('answer')" /> 
              </div> 
            </div> 
          <div class="x-contents-content" xid="content3">
  <div xid="div8" class="welcomeClass">
  <a component="$UI/system/components/justep/button/button" class="btn x-green btn-lg beginButton" label="开始考试" xid="button4" onClick="button4Click">
   <i xid="i4"></i>
   <span xid="span4">开始考试</span></a>
  <div xid="div9" class="showTitleDiv"><div component="$UI/system/components/justep/output/output" class="x-output titleClass" xid="output3" bind-ref="titleData.ref('_1')"></div>
  <div component="$UI/system/components/justep/output/output" class="x-output titleClass" xid="output4" bind-ref="titleData.ref('_2')"></div>
  <div component="$UI/system/components/justep/output/output" class="x-output titleClass" xid="output5" bind-ref="titleData.ref('_3')"></div>
  <div component="$UI/system/components/justep/output/output" class="x-output titleClass" xid="output6" bind-ref="titleData.ref('_4')"></div></div></div></div></div> 
        </div>  
        <div xid="div4" style="position:absolute;  bottom:0px; width:100%"
          class="bg-success xui-hignlight-selected x-scroll-view"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-success btn-xs btn-only-icon"
            label="button" xid="button1" icon="icon-chevron-up" style="width:100%"
            onClick="button1Click"> 
            <i xid="i1" class="icon-chevron-up"/>  
            <span xid="span1"/> 
          </a>  
          <div style="width:100%; height:100px; display:none; overflow:scroll"
            xid="div5" class="x-scroll-content bg-success"/> 
        </div> 
      </div> 
    </div> 
  </div> 
<span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog3" type="OKCancel" onOK="messageDialog3OK" message="本次考试还未开始计时，您选择退出考试，这不会浪费考试机会。" style="left:137px;top:36px;"></span></div>
