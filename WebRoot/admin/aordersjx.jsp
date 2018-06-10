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
  
 
  <form  action="aordersjx.jsp"  method="post" name="f1">
   <table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="left_txt2" width="17" height="29" valign="top" background="/schmsite/frontfiles/images/mail_leftbg.gif"><img src="/schmsite/frontfiles/images/left-top-right.gif" width="17" height="29" /></td>
    <td class="left_txt2" width="1212" height="29" valign="top" background="/schmsite/frontfiles/images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td class="left_txt2" height="31"><div class="titlebt">进行中的订单</div></td>
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
String psavetime = request.getParameter("savetime")==null?"":request.getParameter("savetime"); 
String startsavetime = request.getParameter("startsavetime")==null?"":request.getParameter("startsavetime"); 
String endsavetime = request.getParameter("endsavetime")==null?"":request.getParameter("endsavetime"); 
String pprosinfo = request.getParameter("prosinfo")==null?"":request.getParameter("prosinfo"); 
String startprosinfo = request.getParameter("startprosinfo")==null?"":request.getParameter("startprosinfo"); 
String endprosinfo = request.getParameter("endprosinfo")==null?"":request.getParameter("endprosinfo"); 
   %>

<%
 HashMap mmm = new HashMap();
 
 CommDAO dao = new CommDAO();
 
  String jsid = request.getParameter("jsid")==null?"":request.getParameter("jsid");
  
  String cfid = request.getParameter("cfid")==null?"":request.getParameter("cfid");
  String jtid = request.getParameter("jtid")==null?"":request.getParameter("jtid");
  
  if(!jsid.equals(""))
  {
  dao.commOper("update prosorder set status='订单已处理并已发货' where id="+jsid);
  }
  
  
   if(!cfid.equals(""))
  {
  dao.commOper("update prosorder set status='退货已处理并已发货' where id="+cfid);
  }
  
   if(!jtid.equals(""))
  {
  dao.commOper("update prosorder set status='拒绝退货' where id="+jtid);
  }
  
  
  String jjid = request.getParameter("jjid")==null?"":request.getParameter("jjid");
  
  if(!jjid.equals(""))
  {
  dao.commOper("update prosorder set status='订单已被拒绝' where id="+jjid);
  }
  
  String tkid = request.getParameter("tkid")==null?"":request.getParameter("tkid");
  
  if(!tkid.equals(""))
  {
  dao.commOper("update prosorder set fkstatus='已退款' where id="+tkid);
  }
  
  
  
 
 %> 

&nbsp;&nbsp;
订单发送时间 &nbsp;:&nbsp;
 
<input type=text class=''  size=10 name='startsavetime' onclick='WdatePicker();' />
&nbsp;&nbsp;至&nbsp;&nbsp;

<input type=text class=''  size=10 name='endsavetime' onclick='WdatePicker();' />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

&nbsp;&nbsp;
订单信息 
&nbsp;:&nbsp; 
<input type=text class=''  size=20 name='prosinfo' />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<input type=submit class='' value='查询信息' /> 


</td>
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
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">姓名</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">电话</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">送货地址</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">订单发送时间</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">订单信息</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">金额合计</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">状态</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">付款状态</td>
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
String sql = "select * from prosorder where 1=1   and status!='已确认收货' and status!='订单已被拒绝' " ;
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
String url = "aordersjx.jsp?1=1&savetime="+psavetime+"&prosinfo="+pprosinfo+""; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
for(HashMap map:list){
   HashMap mmap = new CommDAO().select("select * from sysuser where uname='"+map.get("uname")+"'").get(0);
  String proinfo = "";
  int total=0;
  for(String str:map.get("prosinfo").toString().split(","))
  {
  proinfo+=str.split("-")[0]+"&nbsp;&nbsp;单价 "+str.split("-")[1]+"&nbsp;&nbsp;"+(str.split("-")[2].equals("")?"不打折":str.split("-")[2]+"折&nbsp;&nbsp;")+"&nbsp;数量 "+str.split("-")[4]+"&nbsp;&nbsp;"+"<br />";
  String price = str.split("-")[1].indexOf(".")>-1?str.split("-")[1].substring(0,str.split("-")[1].indexOf(".")):str.split("-")[1];
  int ft = 0;
  ft=Integer.parseInt(price)*Integer.parseInt(str.split("-")[4]);
  if(!str.split("-")[2].equals(""))
  {
  ft = (Integer.parseInt(str.split("-")[2])*ft)/10;
  }
   total+=ft;
  }

 %>
<tr  >

               
                <td height="30" align="center" class="left_txt2"><%=map.get("uname")%></td>
                
                <td height="30" align="center" class="left_txt2"><%=mmap.get("tname")%></td>
                
                <td height="30" align="center" class="left_txt2"><%=mmap.get("tel")%></td>
                
                <td height="30" align="center" class="left_txt2"><%=mmap.get("addrs")%></td>
               
                <td height="30" align="center" class="left_txt2"><%=map.get("savetime")%></td>
               
                <td height="30" align="center" class="left_txt2"><%=  proinfo %></td>
               
                <td height="30" align="center" class="left_txt2"><%=total%></td>
               
                <td height="30" align="center" class="left_txt2"><%=map.get("status")%></td>
               
                <td height="30" align="center" class="left_txt2"><%=map.get("fkstatus")%></td>
               
                <td height="30" align="center" class="left_txt2">
                
                
           <%if(map.get("fkstatus").equals("已付款")){ %> 
          <a href="aordersjx.jsp?tkid=<%=map.get("id")%>">退款</a>
          
          |&nbsp;
          <%} %>
          
          
           <%if(map.get("status").equals("已申请退换货")){ %> 
          <a href="aordersjx.jsp?cfid=<%=map.get("id")%>">重新发货</a>
          | 
          <a href="aordersjx.jsp?jtid=<%=map.get("id")%>">拒绝退货</a>
          <%} %>
          
          
          <%if(map.get("status").equals("待受理")){ %> 
          
          
          
          
          <a href="aordersjx.jsp?jjid=<%=map.get("id")%>">拒绝订单</a>
          
          |&nbsp;
          
          
         <a href="aordersjx.jsp?jsid=<%=map.get("id")%>">处理并发货</a>
          
          
          
          <%}else{ %>
          &nbsp;
          <%} %>
          
                
                
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
mmm.put("savetime",psavetime); 
mmm.put("prosinfo",pprosinfo); 
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
