﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
<%@page import="util.PageManager"%>
  <%
HashMap user = Info.getUser(request);
String uname = user.get("uname").toString();
String utype = user.get("utype").toString();
String userid = user.get("id").toString();
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #F8F9FA;
}
-->
</style>
 
<link href="/schmsite/frontfiles/images/skin.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body>
  
 
  <form  action="messagescx.jsp"  method="post" name="f1">
   <table width="100%" border="0" cellpadding="0" cellspacing="0" >
  <tr>
    <td class="left_txt2" width="17" height="29" valign="top" background="/schmsite/frontfiles/images/mail_leftbg.gif"><img src="/schmsite/frontfiles/images/left-top-right.gif" width="17" height="29" /></td>
    <td class="left_txt2" width="1212" height="29" valign="top" background="/schmsite/frontfiles/images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td class="left_txt2" height="31"><div class="titlebt">客户建议</div></td>
      </tr>
    </table></td>
    <td class="left_txt2" width="22" valign="top" background="/schmsite/frontfiles/images/mail_rightbg.gif"><img src="/schmsite/frontfiles/images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td class="left_txt2" height="71" valign="middle" background="/schmsite/frontfiles/images/mail_leftbg.gif">&nbsp;</td>
    <td class="left_txt2" valign="top" bgcolor="#F7F8F9"><table width="100%" height="141" border="0" cellpadding="0" cellspacing="0">
      
      <tr>
        <td  height="141" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
         
          <tr>
            <td><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="nowtable">
              <tr>
                <td class="left_bt2">&nbsp;&nbsp;&nbsp; 请输入查询信息</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
			    <tr>
                <td colspan=6 height="45" align="left" bgcolor="#f2f2f2" class="left_txt2">                &nbsp;&nbsp;&nbsp;
<% 
String psaver = request.getParameter("saver")==null?"":request.getParameter("saver"); 
String startsaver = request.getParameter("startsaver")==null?"":request.getParameter("startsaver"); 
String endsaver = request.getParameter("endsaver")==null?"":request.getParameter("endsaver"); 
String psavetime = request.getParameter("savetime")==null?"":request.getParameter("savetime"); 
String startsavetime = request.getParameter("startsavetime")==null?"":request.getParameter("startsavetime"); 
String endsavetime = request.getParameter("endsavetime")==null?"":request.getParameter("endsavetime"); 
String pcontent = request.getParameter("content")==null?"":request.getParameter("content"); 
String startcontent = request.getParameter("startcontent")==null?"":request.getParameter("startcontent"); 
String endcontent = request.getParameter("endcontent")==null?"":request.getParameter("endcontent"); 
   %>

<%
 HashMap mmm = new HashMap();%> 

&nbsp;&nbsp;
会员 
&nbsp;:&nbsp; 
<input type=text class=''  size=20 name='saver' /> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
留言时间 &nbsp;:&nbsp; 
  
<input type=text class=''  size=10 name='startsavetime' onclick='WdatePicker();' />
&nbsp;&nbsp;至&nbsp;&nbsp;

<input type=text class=''  size=10 name='endsavetime' onclick='WdatePicker();' /> 
&nbsp;&nbsp; 
 
&nbsp;&nbsp; 
内容  
&nbsp;:&nbsp;  
<input type=text class=''  size=20 name='content' /> 
&nbsp;&nbsp;&nbsp; 
 
<input type=submit class='' value='查询信息' /> </td>
                </tr>
              
 
              
              
            </table></td>
          </tr>
        </table>
		
		
		
		
		
		
		<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
         
          <tr>
            <td ><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="nowtable">
              <tr>
                <td  class="left_bt2">&nbsp;&nbsp;&nbsp; 信息列表</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td  height="90"><table width="100%" border="0" cellspacing="0" cellpadding="0"  class="mytab2">
			    <tr>
                
                <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">会员</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">留言时间</td>
<td height="30" align="center" bgcolor="#f2f2f2" width="30%" class="left_txt2">内容</td>
<td height="30" align="center" bgcolor="#f2f2f2" width="30%"  class="left_txt2">回复</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">操作</td>
                </tr>
              
             
              <% 
new CommDAO().delete(request,"messages"); 
if(request.getParameter("saverid1")!=null){ 
 new CommDAO().commOper("update messages set saver ='' where id="+request.getParameter("saverid1"));  
} 
if(request.getParameter("saverid2")!=null){ 
 new CommDAO().commOper("update messages set saver ='' where id="+request.getParameter("saverid2"));  
} 
String sql = "select * from messages where 1=1 " ;
 if(!psaver.equals("")){ 
 sql+= " and saver like'%"+psaver+"%' " ;
 }  
 if(!startsaver.equals("")){  
 mmm.put("startsaver",startsaver) ;
 sql+= " and saver >'"+startsaver+"' " ;
 }  
 if(!endsaver.equals("")){  
 mmm.put("endsaver",endsaver) ;
 sql+= " and saver <'"+Info.getDay(endsaver,1)+"' " ;
 }  
 if(!psavetime.equals("")){ 
 sql+= " and savetime like'%"+psavetime+"%' " ;
 }  
 if(!startsavetime.equals("")){  
 mmm.put("startsavetime",startsavetime) ;
 sql+= " and savetime >'"+startsavetime+"' " ;
 }  
 if(!endsavetime.equals("")){  
 mmm.put("endsavetime",endsavetime) ;
 sql+= " and savetime <'"+Info.getDay(endsavetime,1)+"' " ;
 }  
 if(!pcontent.equals("")){ 
 sql+= " and content like'%"+pcontent+"%' " ;
 }  
 if(!startcontent.equals("")){  
 mmm.put("startcontent",startcontent) ;
 sql+= " and content >'"+startcontent+"' " ;
 }  
 if(!endcontent.equals("")){  
 mmm.put("endcontent",endcontent) ;
 sql+= " and content <'"+Info.getDay(endcontent,1)+"' " ;
 }  
  sql +=" order by id desc ";
String url = "messagescx.jsp?1=1&saver="+psaver+"&savetime="+psavetime+"&content="+pcontent+""; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
for(HashMap map:list){ %>
<tr  >

               
                <td height="30" align="center" class="left_txt2"><%=map.get("saver")%></td>
               
                <td height="30" align="center" class="left_txt2"><%=map.get("savetime")%></td>
               
                <td height="30" align="center" class="left_txt2"><%=map.get("content")%></td>
               
                <td height="30" align="center" class="left_txt2"><%=map.get("recontent")%></td>
               
                <td height="30" align="center" class="left_txt2">
<a href="javascript:update('<%=map.get("id")%>')">回复</a>
&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a onclick="return confirm('确定要删除这条记录吗?')"  href="messagescx.jsp?scid=<%=map.get("id")%>">删除</a>
</td>
</tr>
<%}%>
                
             <tr>
              <td colspan=6 class="left_txt2" height="30"  align="center">${page.info}</td>
              </tr>
              
              
            </table></td>
          </tr>
        </table>
		
		
		
		
		
		
          </td>
      </tr>
    </table></td>
    <td class="left_txt2" background="/schmsite/frontfiles/images/mail_rightbg.gif">&nbsp;</td>
  </tr>
  <tr>
    <td class="left_txt2" valign="middle" background="/schmsite/frontfiles/images/mail_leftbg.gif"><img src="/schmsite/frontfiles/images/buttom_left2.gif" width="17" height="17" /></td>
      <td class="left_txt2" height="17" valign="top" background="/schmsite/frontfiles/images/buttom_bgs.gif"><img src="/schmsite/frontfiles/images/buttom_bgs.gif" width="17" height="17" /></td>
    <td class="left_txt2" background="/schmsite/frontfiles/images/mail_rightbg.gif"><img src="/schmsite/frontfiles/images/buttom_right2.gif" width="16" height="17" /></td>
  </tr>
</table>
</form>
  </body>
</html>
<script language=javascript src='/schmsite/js/ajax.js'></script>
<% 
mmm.put("saver",psaver); 
mmm.put("savetime",psavetime); 
mmm.put("content",pcontent); 
%>
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript src='/schmsite/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/schmsite/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('messagesxg.jsp?id='+no,'信息修改',550,'100%') 
}
</script> 
<script language=javascript> 
function add(){ 
pop('messagestj.jsp','信息添加',550,'100%') 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
