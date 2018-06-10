<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<%@page import="util.Info"%>
 <%
HashMap user = Info.getUser(request);
String uname = user.get("uname").toString();
String utype = user.get("utype").toString();
String userid = user.get("id").toString();
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>管理页面</title>
<!-- 调用CSS，JS -->
<link href="/schmsite/admin/images/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-family: "宋体";
	font-size: 12px;
	color: #333333;
	background-color: ;
}
.STYLE1 {
	color: #333333;
	font-size: x-large;
	font-family: Arial, Helvetica, sans-serif;
}
-->
</style>
<script language="javascript">
function window.onload() { 

if(top.location != self.location){ 

var a = window.parent.document.getElementsByTagName('iframe'); 

for (var i=0; i<a.length; i++){ 

if (a[i].name == self.name) {a[i].height = document.body.scrollHeight+320; return;}}} 
} 
</script>
<script language=javascript>
function show(no)
{
for(var i=1;i<20;i++)
{
var a = document.getElementById(no+"@"+i);
if(a==null)
{
continue;
}
if(a.style.display=="")
{
a.style.display="none";
}else{
a.style.display="";
}
}

}
</script>
<script type="text/javascript">
function showzhi(inn)
{
var a = document.getElementById("loca");
a.innerHTML=inn;
}
function change(no)
{
var c = document.getElementById("c");
c.innerHTML=no;
}
</script>

</head>
<% 



new CommDAO().delete(request,"proscar"); 
String id = request.getParameter("id"); 
String erjitype = request.getParameter("erjitype"); 
String myztree = request.getParameter("myztree"); 
HashMap ext = new HashMap(); 
new CommDAO().update(request,response,"proscar",ext,true,true); 
HashMap mmm = new CommDAO().getmap(id,"proscar"); 
%>
<body>

 
<form id="form1" name="f1" method="post"  action="proscarxg.jsp?f=f&id=<%=mmm.get("id")%>"   onsubmit="return checkform()" >

<table width="99%" border="0" align="center" cellpadding="0" cellspacing="0"  >

<tr>
                            <td height="2" colspan="2" align="center"  >
                             </td>
    </tr></table>

<table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#DAEEF7">

  

 
<tr>
                            <td width="24%" height="36" align="center" bgcolor="#FFFFFF">数量</td>
      <td width="76%" height="36" align="left" bgcolor="#FFFFFF">&nbsp;<input type=text size='8' class='' id='num'  name='num' onkeyup='clearNoNum(this);' onblur='clearNoNum(this);checkform();' onmouseup='clearNoNum(this);'  /><label id='clabelnum' /></td>
    </tr>

                          
                          
                          <tr>
                            <td height="32" colspan="2" align="center" bgcolor="#FFFFFF"><label>
                              <input type="submit"    name="button2" id="button2" value="提交信息" />
                              &nbsp;&nbsp;&nbsp;
                              <input type=button value='返回上页' onclick='popclose();' />
                            </label></td>
    </tr>
</table>
 

   
</form>                 
</body>
</html>
 <script language=javascript src='/schmsite/js/My97DatePicker/WdatePicker.js'></script> 
<script language=javascript src='/schmsite/js/ajax.js'></script> 
<script language=javascript src='/schmsite/js/popup.js'></script> 
<%@page import="util.Info"%> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
<script language=javascript >  
 
</script>  
<script language=javascript >  
 function checkform(){  
var numobj = document.getElementById("num");  
if(numobj.value==""){  
document.getElementById("clabelnum").innerHTML="&nbsp;&nbsp;<font color=red>请输入数量</font>";  
return false;  
}else{ 
document.getElementById("clabelnum").innerHTML="  ";  
}  
return true;   
}   
var frames = parent.document.getElementsByTagName("iframe");
for(var i=0;i<frames.length;i++){ 
var alliframe = parent.document.getElementsByTagName("iframe")[i];  
if(alliframe.name=="ifr_popup0")
alliframe.style.height=document.body.scrollHeight+4; 
} 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
