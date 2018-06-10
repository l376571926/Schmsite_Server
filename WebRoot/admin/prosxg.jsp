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
  
  <% 
new CommDAO().delete(request,"pros"); 
String id = request.getParameter("id"); 
String erjitype = request.getParameter("erjitype"); 
String myztree = request.getParameter("myztree"); 
HashMap ext = new HashMap(); 
new CommDAO().update(request,response,"pros",ext,true,false); 
HashMap mmm = new CommDAO().getmap(id,"pros"); 
%>
<body>
   
  <form  action="prosxg.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="f1"  onsubmit="return checkform();">
   <table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="left_txt2" width="17" height="29" valign="top" background="/schmsite/frontfiles/images/mail_leftbg.gif"><img src="/schmsite/frontfiles/images/left-top-right.gif" width="17" height="29" /></td>
    <td class="left_txt2" width="1212" height="29" valign="top" background="/schmsite/frontfiles/images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td class="left_txt2" height="31"><div class="titlebt">留言管理</div></td>
      </tr>
    </table></td>
    <td class="left_txt2" width="22" valign="top" background="/schmsite/frontfiles/images/mail_rightbg.gif"><img src="/schmsite/frontfiles/images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td class="left_txt2" height="71" valign="middle" background="/schmsite/frontfiles/images/mail_leftbg.gif">&nbsp;</td>
    <td class="left_txt2" valign="top" bgcolor="#F7F8F9"><table width="100%" height="92" border="0" cellpadding="0" cellspacing="0">
      
      <tr>
        <td  height="92" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
         
          <tr>
            <td><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="nowtable">
              <tr>
                <td class="left_bt2">&nbsp;&nbsp;&nbsp;请输入相关信息</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td height="46"><table width="100%" border="0" cellspacing="0" cellpadding="0">
			    <tr>
                <td  width="18%" height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">图书名称：</td>
                <td width="82%" bgcolor="#f2f2f2" class="left_txt2"><input type=text  onblur='checkform()'  class='' id='proname' name='proname' size=35 /><label id='clabelproname' />&nbsp;                </td>
                </tr>
<tr>
                <td  width="18%" height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">单价：</td>
                <td width="82%" bgcolor="#f2f2f2" class="left_txt2"><input type=text size='8' class='' id='price'  name='price' onkeyup='clearNoNum(this);' onblur='clearNoNum(this);checkform();' onmouseup='clearNoNum(this);'  /><label id='clabelprice' />&nbsp;                </td>
                </tr>
<tr>
                <td  width="18%" height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">折扣：</td>
                <td width="82%" bgcolor="#f2f2f2" class="left_txt2"> 
                
                 <select name='discount'  onblur='checkform()' >
				<option value=''>不打折</option> 
				<option value='9'>9</option> 
				<option value='8'>8</option> 
				<option value='7'>7</option> 
				<option value='6'>6</option> 
				<option value='5'>5</option> 
				<option value='4'>4</option> 
				<option value='3'>3</option> 
				<option value='2'>2</option> 
				<option value='1'>1</option> 
				</select>
                
                <label id='clabeldiscount' />&nbsp;                </td>
                </tr>
<tr>
                <td  width="18%" height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">图书简介：</td>
                <td width="82%" bgcolor="#f2f2f2" class="left_txt2"><textarea  cols='35'  onblur='checkform()'   style='margin-top: 1px;margin-bottom: 1px'  class=''   name='bei'   ></textarea>&nbsp;                </td>
                </tr>
<tr>
                <td  width="18%" height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">类别：</td>
                <td width="82%" bgcolor="#f2f2f2" class="left_txt2"><%=Info.getselect("btype","splb","datashowname~无名"," 1=1 ")%><label id='clabelbtype' />
&nbsp;                </td>
                </tr>
 
<tr>
                <td  width="18%" height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">上架状态：</td>
                <td width="82%" bgcolor="#f2f2f2" class="left_txt2"><span id="statusdanx"><label><input type=radio name='status' value='上架' />&nbsp;&nbsp;上架 </label>&nbsp;
<label><input type=radio name='status' value='下架' />&nbsp;&nbsp;下架 </label>&nbsp;
</span>&nbsp;                </td>
                </tr>
<tr>
                <td  width="18%" height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">相关图片：</td>
                <td width="82%" bgcolor="#f2f2f2" class="left_txt2"><%=Info.getImgUpInfo(65)%>&nbsp;                </td>
                </tr>

              

             <tr>
              <td height="31" colspan="2" align="center" valign="bottom" class="left_txt2">
              
              <input type="submit" value="提交信息" name="B1" />         
              
                &nbsp;&nbsp;&nbsp;
                
                <input type=button value='返回上页' onclick='window.location.replace("proscx.jsp")' />                 </td>
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
 function checkform(){  
var pronameobj = document.getElementById("proname");  
if(pronameobj.value==""){  
document.getElementById("clabelproname").innerHTML="&nbsp;&nbsp;<font color=red>请输入图书名称</font>";  
return false;  
}else{ 
document.getElementById("clabelproname").innerHTML="  ";  
}  
var priceobj = document.getElementById("price");  
if(priceobj.value==""){  
document.getElementById("clabelprice").innerHTML="&nbsp;&nbsp;<font color=red>请输入单价</font>";  
return false;  
}else{ 
document.getElementById("clabelprice").innerHTML="  ";  
}  
var discountobj = document.getElementById("discount");  
if(discountobj.value==""){  
document.getElementById("clabeldiscount").innerHTML="&nbsp;&nbsp;<font color=red>请输入折扣</font>";  
return false;  
}else{ 
document.getElementById("clabeldiscount").innerHTML="  ";  
}  
var btypeobj = document.getElementById("btype");  
if(btypeobj.value==""){  
document.getElementById("clabelbtype").innerHTML="&nbsp;&nbsp;<font color=red>请输入大类</font>";  
return false;  
}else{ 
document.getElementById("clabelbtype").innerHTML="  ";  
}  
var stypeobj = document.getElementById("stype");  
if(stypeobj.value==""){  
document.getElementById("clabelstype").innerHTML="&nbsp;&nbsp;<font color=red>请输入小类</font>";  
return false;  
}else{ 
document.getElementById("clabelstype").innerHTML="  ";  
}  
return true;   
}   
</script>  
<%=Info.tform(mmm)%> 
 
