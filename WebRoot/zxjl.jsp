<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
if(Info.getUser(request)==null){
 %>
 <script type="text/javascript">
 alert("请先登录");
 window.location.replace("index.jsp");
 </script>
 <%} %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
 

<link href="/schmsite/frontfiles/css/css.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
#dbgdtp {float:left;  margin:0px; width:960px;}
#demo {overflow:hidden; width: 720px; }
#demo1 {float: left; }
#demo2 {float: left; }
#indemo {float: left; width: 1500%; }
-->
</style>
</head>

 
<body>

 
<style>
A.applink:hover {border: 2px dotted #DCE6F4;padding:2px;background-color:#ffff00;color:green;text-decoration:none}
A.applink       {border: 2px dotted #DCE6F4;padding:2px;color:#2F5BFF;background:transparent;text-decoration:none}
A.info          {color:#2F5BFF;background:transparent;text-decoration:none}
A.info:hover    {color:green;background:transparent;text-decoration:underline}
</style>
 

 

 
<link href="/schmsite/frontfiles/css/css.css" rel="stylesheet" type="text/css" />
 
<jsp:include page="top.jsp"></jsp:include>

 
 
 
 <table width="998" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="4" background="/schmsite/frontfiles/images/left.jpg">&nbsp;</td>
    <td><table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        
        
        <jsp:include page="left.jsp"></jsp:include>
        
        
        
        <td valign="top"><table width="735" border="0" align="right" cellpadding="0" cellspacing="0">
          <tr>
            <td height="30" valign="bottom" background="/schmsite/frontfiles/images/ri.jpg"><table width="670" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td align="left" class="right">在线交流</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td height="540" valign="top" background="/schmsite/frontfiles/images/ri2.jpg"><table width="670" border="0" align="center" cellpadding="0" cellspacing="0" style="margin:10px;">
              <tr>
                <td align="left" valign="top">


 
<table width="100%" border="0" cellspacing="0" cellpadding="0">

  <tr align="center" valign="top">
    <td width="300%" colspan="3">
      <table width="100%"  border="0" cellpadding="0" cellspacing="0" id="standard_2">
    
    
  
      <%      
        CommDAO dao = new CommDAO();
        dao.delete(request,"taolun");
        HashMap umap = Info.getUser(request);
        if(request.getParameter("f")!=null)
        {
        dao.commOper("insert into taolun values(null,'"+request.getParameter("message")+"','"+umap.get("uname")+"','"+Info.getDateStr()+"','-1')");
        }
        %>
    
      <% 
        
        String url = "zxjl.jsp?1=1"; 
	ArrayList<HashMap> list = PageManager.getPages(url,8, "select * from taolun where pid='-1' order by id desc", request ); 
	for(HashMap m:list){ 
         %>  
        <tr>
          <td width="" height="32" align="left" valign="middle" class="dd">
          
          <a href="txiang.jsp?id=<%=m.get("id") %>"><%=m.get("saver")+" : "+m.get("message")+"&nbsp;&nbsp;("+m.get("savetime")+")" %></a>
          
          
             <%
        if(Info.getUser(request)!=null){
        if(!Info.getUser(request).get("utype").equals("会员")){
         %>
       &nbsp;&nbsp;&nbsp;
        <a href="zxjl.jsp?scid=<%=m.get("id") %>"> 删除</a> 
        <%}} %>    
           
          
          </td>
         
          </tr>
 <%} %>

      </table></td>
  </tr>
  <tr align="center" valign="middle">
    <td height="39" colspan="3" id="page">
		
		 ${page.info } 
		
        
           
		 	</td>
  </tr>
  
  
  
  
           <TR>
               <TD height=98 colspan="2" 
               align=center vAlign=center class=xh><label>
               
               <form action="zxjl.jsp?f=f" method="post" name="f1">
                 <textarea name="message" id="message" cols="45" rows="3"></textarea>
                 
                 <br /><br />
                 
                 <input type="submit"  value="发表帖子" />
                 
                 </form>
                 
               </label></TD>
               </TR>
          
  
  
</table> 
</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><img src="/schmsite/frontfiles/images/ri1.jpg" width="735" height="15" /></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
    <td width="4" background="/schmsite/frontfiles/images/right.jpg">&nbsp;</td>
  </tr>
</table>


 
<link href="css/css.css" rel="stylesheet" type="text/css" />

<jsp:include page="foot.jsp"></jsp:include>

 
 

</body>
</html>
<script language=javascript src='/schmsite/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/schmsite/js/popup.js'></script>
<script language=javascript src='/schmsite/js/ajax.js'></script>
<%@page import="util.Info"%>
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
<script language=javascript >  
 
 function checkform(){  
var unameobj = document.getElementById("uname");  
if(unameobj.value==""){  
document.getElementById("clabeluname").innerHTML="&nbsp;&nbsp;<font color=red>请输入用户名</font>";  
return false;  
}else{
document.getElementById("clabeluname").innerHTML="  ";  
}  
  
var unameobj = document.getElementById("uname");  
if(unameobj.value!=""){  
var ajax = new AJAX();
ajax.post("/schmsite/factory/checkno.jsp?table=sysuser&col=uname&value="+unameobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabeluname").innerHTML="&nbsp;&nbsp;<font color=red>用户名已存在</font>";  
return false;
}else{document.getElementById("clabeluname").innerHTML="  ";  
}  
}  
var upassobj = document.getElementById("upass");  
if(upassobj.value==""){  
document.getElementById("clabelupass").innerHTML="&nbsp;&nbsp;<font color=red>请输入密码</font>";  
return false;  
}else{
document.getElementById("clabelupass").innerHTML="  ";  
}  
  
var tnameobj = document.getElementById("tname");  
if(tnameobj.value==""){  
document.getElementById("clabeltname").innerHTML="&nbsp;&nbsp;<font color=red>请输入姓名</font>";  
return false;  
}else{
document.getElementById("clabeltname").innerHTML="  ";  
}  
  
var telobj = document.getElementById("tel");  
if(telobj.value!=""){  
if(telobj.value.length>11||telobj.value.length<8||isNaN(telobj.value)){ 
document.getElementById("clabeltel").innerHTML="&nbsp;&nbsp;<font color=red>联系电话必须为8-11位数字</font>";  
return false;
}else{  
document.getElementById("clabeltel").innerHTML="";  
}  
}  
var qqobj = document.getElementById("qq");  
if(qqobj.value!=""){  
if(qqobj.value.length>12||isNaN(qqobj.value)){ 
document.getElementById("clabelqq").innerHTML="&nbsp;&nbsp;<font color=red>联系QQ必须为12位以内数字</font>";  
return false;
}else{  
document.getElementById("clabelqq").innerHTML="";  
}  
}  
return true;   
}   
popheight=450;
</script>  
