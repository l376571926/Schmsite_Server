<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
<%@page import="util.PageManager"%>
<%@page import="java.lang.*"%>
 
 <%
 
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
  
  <% 
 
%>
<body>
   <table width="810" border="0">
  <tr>
    <td width="20">&nbsp;</td>
    <td><form name="form1" id="form1" method="post" action="suiji.jsp">
   设定抽奖人数:
  <input name="bianhao" type="text" id="bianhao" />
 
  <input type="submit" name="Submit" value="开始抽奖" />  
</form>
   
  <%
  
  
  int y=5;
   int x=1;
   if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null )
  {}
  else
  {
  	y=Integer.parseInt(request.getParameter("bianhao") );
  }
  
  
    
  out.println("摇奖"+y+"次最后一个随机数为处理单<br>");
 
  for(int i=1; i<y+1; i++) {
      x=(int)(Math.random()*y)+1;
    out.println("第"+i+"个随机数是"+x+"<br>  <br>");
   }
    out.println("本期处理是第"+x+"单");
   
   %></td>
  </tr>
</table>

     
   </body>
