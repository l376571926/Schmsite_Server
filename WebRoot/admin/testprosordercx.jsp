<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
  
 
  <form  action="testprosordercx.jsp"  method="post" name="f1">
   <table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="left_txt2" width="17" height="29" valign="top" background="/schmsite/frontfiles/images/mail_leftbg.gif"><img src="/schmsite/frontfiles/images/left-top-right.gif" width="17" height="29" /></td>
    <td class="left_txt2" width="1212" height="29" valign="top" background="/schmsite/frontfiles/images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td class="left_txt2" height="31"><div class="titlebt">测试</div></td>
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
                <td colspan=9 height="45" align="left" bgcolor="#f2f2f2" class="left_txt2">                &nbsp;&nbsp;&nbsp;
<% 
String puname = request.getParameter("uname")==null?"":request.getParameter("uname"); 
String startuname = request.getParameter("startuname")==null?"":request.getParameter("startuname"); 
String enduname = request.getParameter("enduname")==null?"":request.getParameter("enduname"); 
String pprosinfo = request.getParameter("prosinfo")==null?"":request.getParameter("prosinfo"); 
String startprosinfo = request.getParameter("startprosinfo")==null?"":request.getParameter("startprosinfo"); 
String endprosinfo = request.getParameter("endprosinfo")==null?"":request.getParameter("endprosinfo"); 
   %>

<%
 HashMap mmm = new HashMap();%> 

&nbsp;&nbsp;
会员 
&nbsp;:&nbsp; 
<input type=text class=''  size=20 name='uname' />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

&nbsp;&nbsp;
预订信息 
&nbsp;:&nbsp; 
<input type=text class=''  size=20 name='prosinfo' />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<input type=submit class='' value='查询信息' />
 &nbsp;&nbsp;
<input type=button   class='' value='添加信息' onclick="window.location.replace('testprosordertj.jsp')" /> 
&nbsp;&nbsp;</td>
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
            <td  height="90"><table width="100%" border="0" cellspacing="0" cellpadding="0"   class="mytab2">
			    <tr>
               
                <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">会员</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">发布时间</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">预订信息</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">收货人</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">状态</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">付款状态</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">送货地址</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">操作</td>
                </tr>
              
             
              <% 
new CommDAO().delete(request,"prosorder"); 
if(request.getParameter("unameid1")!=null){ 
 new CommDAO().commOper("update prosorder set uname ='' where id="+request.getParameter("unameid1"));  
} 
if(request.getParameter("unameid2")!=null){ 
 new CommDAO().commOper("update prosorder set uname ='' where id="+request.getParameter("unameid2"));  
} 
String sql = "select * from prosorder where 1=1 " ;
 if(!puname.equals("")){ 
 sql+= " and uname like'%"+puname+"%' " ;
 }  
 if(!startuname.equals("")){  
 mmm.put("startuname",startuname) ;
 sql+= " and uname >'"+startuname+"' " ;
 }  
 if(!enduname.equals("")){  
 mmm.put("enduname",enduname) ;
 sql+= " and uname <'"+Info.getDay(enduname,1)+"' " ;
 }  
 if(!pprosinfo.equals("")){ 
 sql+= " and prosinfo like'%"+pprosinfo+"%' " ;
 }  
 if(!startprosinfo.equals("")){  
 mmm.put("startprosinfo",startprosinfo) ;
 sql+= " and prosinfo >'"+startprosinfo+"' " ;
 }  
 if(!endprosinfo.equals("")){  
 mmm.put("endprosinfo",endprosinfo) ;
 sql+= " and prosinfo <'"+Info.getDay(endprosinfo,1)+"' " ;
 }  
  sql +=" order by id desc ";
String url = "testprosordercx.jsp?1=1&uname="+puname+"&prosinfo="+pprosinfo+""; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
for(HashMap map:list){ %>
<tr  >

               
                <td height="30" align="center" class="left_txt2"><%=map.get("uname")%></td>
               
                <td height="30" align="center" class="left_txt2"><%=map.get("savetime")%></td>
               
                <td height="30" align="center" class="left_txt2"><%=map.get("prosinfo")%></td>
               
                <td height="30" align="center" class="left_txt2"><%=map.get("toshop")%></td>
               
                <td height="30" align="center" class="left_txt2"><%=map.get("status")%></td>
               
                <td height="30" align="center" class="left_txt2"><%=map.get("fkstatus")%></td>
               
                <td height="30" align="center" class="left_txt2"><%=map.get("tinfo")%></td>
               
                <td height="30" align="center" class="left_txt2">
<a href="testprosorderxg.jsp?id=<%=map.get("id")%>">修改</a>
&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;

<a onclick="return confirm('确定要删除这条记录吗?')" href="testprosordercx.jsp?scid=<%=map.get("id")%>">删除</a>
</td>
</tr>
<%}%>
                
             <tr>
              <td colspan=9 class="left_txt2" height="30"  align="center">${page.info}</td>
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
mmm.put("uname",puname); 
mmm.put("prosinfo",pprosinfo); 
%>
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript src='/schmsite/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/schmsite/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('testprosorderxg.jsp?id='+no,'信息修改',550,'100%') 
}
</script> 
<script language=javascript> 
function add(){ 
pop('testprosordertj.jsp','信息添加',550,'100%') 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
