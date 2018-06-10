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
HashMap ext = new HashMap(); 
String tglparentid=request.getParameter("tglparentid")==null?"":request.getParameter("tglparentid"); 
ext.put("tglparentid",tglparentid); 
new CommDAO().insert(request,response,"prosorder",ext,true,false); 
%>
<body>
   
  <form  action="testprosordertj.jsp?f=f&tglparentid=<%=tglparentid%>"  method="post" name="f1"  onsubmit="return checkform();">
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
                <td  width="18%" height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">会员：</td>
                <td width="82%" bgcolor="#f2f2f2" class="left_txt2"><%=Info.getselect("uname","sysuser","uname~无名;tname~无名"," 1=1 ")%> 
<label id='clabeluname' />
&nbsp;                </td>
                </tr>
<tr>
                <td  width="18%" height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">预订信息：</td>
                <td width="82%" bgcolor="#f2f2f2" class="left_txt2">&nbsp;

 <%  
for(HashMap choosemap:new CommDAO().select("select * from pros order by id desc")){ 
 %> 
<label id="clabel<%=choosemap.get("id")%>" style="display: none"> 
<input type="checkbox" name="prosinfo" id="choosebox<%=choosemap.get("id")%>" value="<%=choosemap.get("id")%>" style="display: " /> 
<%=choosemap.get("proname")%> 
&nbsp;&nbsp;&nbsp; 
<%=choosemap.get("price")%> 
&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp; 数量 <label><input type=text name='<%=choosemap.get("id")%>' value='' size=5 /></label> 
<table><tr><td height=2></td></tr></table> &nbsp;  
</label> 
<%} %> 
<a href="javascript:csts()">[预订信息选择]</a> 
<script language=javascript>  
function csts(){  
pop('chooseproscx.jsp?paramstr=','预订信息选择',790,'100%')  
} 
</script>  
<input type=hidden name='prosinfo' value='' /><input type=hidden name='dk-prosinfo-value' value='数量' />&nbsp;                </td>
                </tr>
<tr>
                <td  width="18%" height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">收货人：</td>
                <td width="82%" bgcolor="#f2f2f2" class="left_txt2"><input type=text  onblur='checkform()' class='' id='toshop' name='toshop' size=35 /><label id='clabeltoshop' />&nbsp;                </td>
                </tr>
<tr>
                <td  width="18%" height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">状态：</td>
                <td width="82%" bgcolor="#f2f2f2" class="left_txt2"><span id="statusdanx"><label><input type=radio checked=checked name='status' id='status' value='已预订' />&nbsp;已预订 </label>&nbsp;
<label><input type=radio  name='status' id='status' value='已成交' />&nbsp;已成交 </label>&nbsp;
<label><input type=radio  name='status' id='status' value='已收货' />&nbsp;已收货 </label>&nbsp;
</span>&nbsp;                </td>
                </tr>
<tr>
                <td  width="18%" height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">付款状态：</td>
                <td width="82%" bgcolor="#f2f2f2" class="left_txt2"><span id="fkstatusdanx"><label><input type=radio checked=checked name='fkstatus' id='fkstatus' value='未付款' />&nbsp;未付款 </label>&nbsp;
<label><input type=radio  name='fkstatus' id='fkstatus' value='已付款' />&nbsp;已付款 </label>&nbsp;
<label><input type=radio  name='fkstatus' id='fkstatus' value='已退款' />&nbsp;已退款 </label>&nbsp;
</span>&nbsp;                </td>
                </tr>
<tr>
                <td  width="18%" height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">送货地址：</td>
                <td width="82%" bgcolor="#f2f2f2" class="left_txt2"><textarea  cols='55' rows='3'  style='margin-top: 1px;margin-bottom: 1px'  class=''  name='tinfo'  ></textarea>&nbsp;                </td>
                </tr>

              

             <tr>
              <td height="31" colspan="2" align="center" valign="bottom" class="left_txt2">
              
              <input type="submit" value="提交信息" name="B1" />         
              
                &nbsp;&nbsp;&nbsp;
                
                <input type=button value='返回上页' onclick='window.location.replace("testprosordercx.jsp")' />                 </td>
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
document.getElementById("clabeluname").innerHTML="&nbsp;&nbsp;<font color=red>请输入会员</font>";  
return false;  
}else{
document.getElementById("clabeluname").innerHTML="  ";  
}  
  
var toshopobj = document.getElementById("toshop");  
if(toshopobj.value==""){  
document.getElementById("clabeltoshop").innerHTML="&nbsp;&nbsp;<font color=red>请输入收货人</font>";  
return false;  
}else{
document.getElementById("clabeltoshop").innerHTML="  ";  
}  
  
return true;   
}   
</script>  
