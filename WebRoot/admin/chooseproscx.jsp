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
  
 
  <form  action="chooseproscx.jsp"  method="post" name="f1">
   <table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="left_txt2" width="17" height="29" valign="top" background="/schmsite/frontfiles/images/mail_leftbg.gif"><img src="/schmsite/frontfiles/images/left-top-right.gif" width="17" height="29" /></td>
    <td class="left_txt2" width="1212" height="29" valign="top" background="/schmsite/frontfiles/images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td class="left_txt2" height="31"><div class="titlebt">订单维护</div></td>
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
                <td colspan=7 height="45" align="left" bgcolor="#f2f2f2" class="left_txt2">                &nbsp;&nbsp;&nbsp;
<% 
String pproname = request.getParameter("proname")==null?"":request.getParameter("proname"); 
String startproname = request.getParameter("startproname")==null?"":request.getParameter("startproname"); 
String endproname = request.getParameter("endproname")==null?"":request.getParameter("endproname"); 
String pbtype = request.getParameter("btype")==null?"":request.getParameter("btype"); 
String startbtype = request.getParameter("startbtype")==null?"":request.getParameter("startbtype"); 
String endbtype = request.getParameter("endbtype")==null?"":request.getParameter("endbtype"); 
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
<%=Info.getselect("btype","splb","datashowname"," 1=1 ")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

<input type=submit class='' value='查询信息' />
 &nbsp;&nbsp;
<input type=button   class=''  value='返回' onclick="popclose();" /> &nbsp;&nbsp;</td>
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
               
                <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">选择</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">图书名称</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">单价</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">折扣</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">类别</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2"></td>

                </tr>
              
             
              <% 
new CommDAO().delete(request,"pros"); 
if(request.getParameter("id1")!=null){ 
 new CommDAO().commOper("update pros set  ='' where id="+request.getParameter("id1"));  
} 
if(request.getParameter("id2")!=null){ 
 new CommDAO().commOper("update pros set  ='' where id="+request.getParameter("id2"));  
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
  sql +=" order by id desc ";
String url = "chooseproscx.jsp?1=1&proname="+pproname+"&btype="+pbtype+""; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
for(HashMap map:list){ %>
<tr  >

               
                <td height="30" align="center" class="left_txt2">
<input type="checkbox" name="chosts" id="chosts<%=map.get("id") %>" value="<%=map.get("id")%>" onclick="choose(this)" />
</td>
               
                <td height="30" align="center" class="left_txt2"><%=map.get("proname")%></td>
               
                <td height="30" align="center" class="left_txt2"><%=map.get("price")%></td>
               
                <td height="30" align="center" class="left_txt2"><%=map.get("discount")%></td>
               
                <td height="30" align="center" class="left_txt2"><%=map.get("btype")%></td>
               
                <td height="30" align="center" class="left_txt2"><%=map.get("cjnum")%></td>
</tr>
<%}%>
                
             <tr>
              <td colspan=7 class="left_txt2" height="30"  align="center">${page.info}</td>
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
%>
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
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
<script language=javascript>
var frames = parent.document.getElementsByTagName("iframe");
for(var i=0;i<frames.length;i++){ 
var alliframe = parent.document.getElementsByTagName("iframe")[i];  
if(alliframe.name=="ifr_popup0")
<%=Info.popheight%>4; 
} 



 function choose(obj)  
 {   
   if(obj.checked) 
   {  
   parent.document.getElementById("choosebox"+obj.value).checked=true; 
   parent.document.getElementById("clabel"+obj.value).style.display=""; 
   }else{ 
   parent.document.getElementById("choosebox"+obj.value).checked=false; 
   parent.document.getElementById("clabel"+obj.value).style.display="none"; 
   } 
  }  



  function choosebyparent() 
 {   
  var cboxs = parent.document.getElementsByTagName("input"); 
  var cboxstr = "-"; 
  for(var i=0;i<cboxs.length;i++) 
  {  
    if(cboxs[i].id.indexOf("choosebox")>-1&&cboxs[i].checked) 
     { 
        cboxstr+=cboxs[i].value+"-"; 
     } 
  }  
  var mcboxs = document.getElementsByTagName("input");  
  for(var i=0;i<mcboxs.length;i++) 
  {  
    if(mcboxs[i].type=="checkbox"||mcboxs[i].type=="radio"){  
     if(mcboxs[i].id.indexOf("chosts")>-1&&cboxstr.indexOf("-"+mcboxs[i].value+"-")>-1) 
     { 
        mcboxs[i].checked=true; 
     } 
     } 
  }  
 }  
 choosebyparent();   
</script> 
