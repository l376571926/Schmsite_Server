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
  
 
  <form  action="proscx.jsp"  method="post" name="f1">
   <table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="left_txt2" width="17" height="29" valign="top" background="/schmsite/frontfiles/images/mail_leftbg.gif"><img src="/schmsite/frontfiles/images/left-top-right.gif" width="17" height="29" /></td>
    <td class="left_txt2" width="1212" height="29" valign="top" background="/schmsite/frontfiles/images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td class="left_txt2" height="31"><div class="titlebt">图书管理</div></td>
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
                <td colspan=10 height="45" align="left" bgcolor="#f2f2f2" class="left_txt2">                &nbsp;&nbsp;&nbsp;
<% 
String pproname = request.getParameter("proname")==null?"":request.getParameter("proname"); 
String startproname = request.getParameter("startproname")==null?"":request.getParameter("startproname"); 
String endproname = request.getParameter("endproname")==null?"":request.getParameter("endproname"); 
String pbtype = request.getParameter("btype")==null?"":request.getParameter("btype"); 
String startbtype = request.getParameter("startbtype")==null?"":request.getParameter("startbtype"); 
String endbtype = request.getParameter("endbtype")==null?"":request.getParameter("endbtype"); 
String pstype = request.getParameter("stype")==null?"":request.getParameter("stype"); 
String startstype = request.getParameter("startstype")==null?"":request.getParameter("startstype"); 
String endstype = request.getParameter("endstype")==null?"":request.getParameter("endstype"); 
   %>

<%
 HashMap mmm = new HashMap();%> 

&nbsp;&nbsp;
图书名称 
&nbsp;:&nbsp; 
<input type=text class=''  size=20 name='proname' />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
类别 
&nbsp;:&nbsp; 
<%=Info.getselect("btype","splb","datashowname","tglparentid='-1'")%>&nbsp;&nbsp;&nbsp; 

<input type=submit class='' value='查询信息' />
 &nbsp;&nbsp;
<input type=button   class='' value='添加信息' onclick="window.location.replace('prostj.jsp')" /> 
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
               
                <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">图书名称</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">单价</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">折扣</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">类别</td> 
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">上架状态</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">发布时间</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">成交量</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">操作</td>
                </tr>
              
             
              <% 
new CommDAO().delete(request,"pros"); 
if(request.getParameter("statusid1")!=null){ 
 new CommDAO().commOper("update pros set status ='上架' where id="+request.getParameter("statusid1"));  
} 
if(request.getParameter("statusid2")!=null){ 
 new CommDAO().commOper("update pros set status ='下架' where id="+request.getParameter("statusid2"));  
} 
String sql = "select * from pros where 1=1 " ;
 if(!pproname.equals("")){ 
 sql+= " and proname like'%"+pproname+"%' " ;
 }  
 if(!startproname.equals("")){  
 mmm.put("startproname",startproname) ;
 sql+= " and proname >'"+startproname+"' " ;
 }  
 if(!endproname.equals("")){  
 mmm.put("endproname",endproname) ;
 sql+= " and proname <'"+Info.getDay(endproname,1)+"' " ;
 }  
 if(!pbtype.equals("")){ 
 sql+= " and btype like'%"+pbtype+"%' " ;
 }  
 if(!startbtype.equals("")){  
 mmm.put("startbtype",startbtype) ;
 sql+= " and btype >'"+startbtype+"' " ;
 }  
 if(!endbtype.equals("")){  
 mmm.put("endbtype",endbtype) ;
 sql+= " and btype <'"+Info.getDay(endbtype,1)+"' " ;
 }  
 if(!pstype.equals("")){ 
 sql+= " and stype like'%"+pstype+"%' " ;
 }  
 if(!startstype.equals("")){  
 mmm.put("startstype",startstype) ;
 sql+= " and stype >'"+startstype+"' " ;
 }  
 if(!endstype.equals("")){  
 mmm.put("endstype",endstype) ;
 sql+= " and stype <'"+Info.getDay(endstype,1)+"' " ;
 }  
  sql +=" order by id desc ";
String url = "proscx.jsp?1=1&proname="+pproname+"&btype="+pbtype+"&stype="+pstype+""; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
for(HashMap map:list){ %>
<tr  >

               
                <td height="30" align="center" class="left_txt2"><%=map.get("proname")%></td>
               
                <td height="30" align="center" class="left_txt2"><%=map.get("price")%></td>
               
                <td height="30" align="center" class="left_txt2"><%=map.get("discount")%></td>
               
                <td height="30" align="center" class="left_txt2"><%=map.get("btype")%></td>
                 
                <td height="30" align="center" class="left_txt2"><%=map.get("status")%></td>
               
                <td height="30" align="center" class="left_txt2"><%=map.get("savetime")%></td>
               
                <td height="30" align="center" class="left_txt2"><%=map.get("cjnum")%></td>
               
                <td height="30" align="center" class="left_txt2">
<a href="proscx.jsp?value=上架&statusid1=<%=map.get("id")%>">上架</a>
&nbsp;&nbsp;|&nbsp;&nbsp;
<a href="proscx.jsp?value=下架&statusid2=<%=map.get("id")%>">下架</a>
&nbsp;&nbsp;|&nbsp;&nbsp;

<a href="prosxg.jsp?id=<%=map.get("id")%>">修改</a>
&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;

<a onclick="return confirm('确定要删除这条记录吗?')" href="proscx.jsp?scid=<%=map.get("id")%>">删除</a>
</td>
</tr>
<%}%>
                
             <tr>
              <td colspan=10 class="left_txt2" height="30"  align="center">${page.info}</td>
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
mmm.put("proname",pproname); 
mmm.put("btype",pbtype); 
mmm.put("stype",pstype); 
%>

<%=Info.tform(mmm)%>  

<script language=javascript src='/schmsite/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/schmsite/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('prosxg.jsp?id='+no,'信息修改',550,'100%') 
}
</script> 
<script language=javascript> 
function add(){ 
pop('prostj.jsp','信息添加',550,'100%') 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
