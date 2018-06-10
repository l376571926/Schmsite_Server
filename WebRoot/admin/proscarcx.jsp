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
  
 
  <form  action="proscarcx.jsp"  method="post" name="f1">
   <table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="left_txt2" width="17" height="29" valign="top" background="/schmsite/frontfiles/images/mail_leftbg.gif"><img src="/schmsite/frontfiles/images/left-top-right.gif" width="17" height="29" /></td>
    <td class="left_txt2" width="1212" height="29" valign="top" background="/schmsite/frontfiles/images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td class="left_txt2" height="31"><div class="titlebt">购物车</div></td>
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
                <td colspan=10 height="45" align="left" bgcolor="#f2f2f2" class="left_txt2">   

<% 
String ppid = request.getParameter("pid")==null?"":request.getParameter("pid"); 
String startpid = request.getParameter("startpid")==null?"":request.getParameter("startpid"); 
String endpid = request.getParameter("endpid")==null?"":request.getParameter("endpid"); 
   %>

<%
 HashMap mmm = new HashMap();%> 

&nbsp;&nbsp;
图书名称 
&nbsp;:&nbsp; 
<input type=text class=''  size=25 name='pid' />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<input type=submit class='' value='查询信息' />
 &nbsp;&nbsp;
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
               
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">图书名称</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">图片</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">单价</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">数量</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">折扣</td>
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">合计金额</td> 
<td height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">操作</td> 
                </tr>
              
               <%
 CommDAO dao = new CommDAO();
 
 
 String fs = request.getParameter("fs")==null?"":request.getParameter("fs");
 if(!fs.equals(""))
 {
  //String sql = "select a.uname,b.uname as shop,group_concat(c.proname,'-',c.price,'-',c.discount,'-',a.pid,'-',a.num ) as ddinfo from proscar a,sysuser b,pros c where a.pid=c.id and c.proshop=b.uname and a.uname='"+Info.getUser(request).get("uname")+"' group by a.uname,shop ";
 
  String shops = "";
  for(HashMap m:dao.select("select distinct(b.proshop) as shopname from proscar a,pros b where a.pid=b.id and a.uname='"+Info.getUser(request).get("uname")+"'"))
  {
  shops+=m.get("shopname")+"@@@";
  }
  if(shops.length()>0)shops=shops.substring(0,shops.length()-3);
  for(String str:shops.split("@@@"))
  {
   String ddinfo = "";
   System.out.println(str);
   HashMap ext = new HashMap();
   for(HashMap pmap:new CommDAO().select("select distinct *  from pros where id in(select pid from proscar where uname='"+Info.getUser(request).get("uname")+"' and pid in(select id from pros where proshop='"+str+"'))"))
   {
   ddinfo+=pmap.get("proname")+"-"+pmap.get("price")+"-"+pmap.get("discount")+"-"+pmap.get("id")+"-"+new CommDAO().getInt("select sum(num+0) from proscar where pid='"+pmap.get("id")+"'")+",";
     System.out.println("22222:"+ddinfo);
  ext.put("uname",Info.getUser(request).get("uname"));
  ext.put("savetime",Info.getDateStr());
  //if(ddinfo.length()>0)ddinfo=ddinfo.substring(0,ddinfo.length()-1);
  
  System.out.println("11111:"+ddinfo);
  ext.put("toshop",str);
  ext.put("status","待受理");
 ext.put("fkstatus","未付款");
   }
   ext.put("prosinfo",ddinfo);
   new CommDAO().insert(request,response,"prosorder",ext,false,false);
   
  } 
  dao.commOper("delete  from proscar where uname='"+Info.getUser(request).get("uname")+"'");
  %>
  
  <script type="text/javascript">
  alert("订单已发送");
  </script>
  
  <%
 }
 String c = request.getParameter("c")==null?"":request.getParameter("c");
 if(!c.equals(""))
 {
   new CommDAO().commOper("delete  from proscar where uname='"+Info.getUser(request).get("uname")+"'");
 }
new CommDAO().delete(request,"proscar"); 
if(request.getParameter("unameid1")!=null){ 
 new CommDAO().commOper("update proscar set uname ='' where id="+request.getParameter("unameid1"));  
} 
if(request.getParameter("unameid2")!=null){ 
 new CommDAO().commOper("update proscar set uname ='' where id="+request.getParameter("unameid2"));  
} 
String sql = "select *,a.id as cid from proscar a,pros b  where a.pid=b.id " ;
 if(!ppid.equals("")){ 
 sql+= " and b.proname like'%"+ppid+"%' " ;
 }   
  sql +="  and (1!=1 " ; 
  sql +="  or  a.uname like'%"+Info.getUser(request).get("uname")+"%') " ;
  sql +=" order by a.id desc ";
String url = "proscarcx.jsp?1=1&pid="+ppid+""; 
ArrayList<HashMap> list = PageManager.getPages(url,55, sql, request ); 
 int ztotal = 0;
for(HashMap map:list){ 

 int total = 0;
  System.out.println(map.get("num")+"-"+map.get("price"));
  String price = map.get("price").toString().indexOf(".")>-1?map.get("price").toString().substring(0,map.get("price").toString().indexOf(".")):map.get("price").toString();
  total = Integer.parseInt(map.get("num").toString())*Integer.parseInt(price) ;
  
  if(!map.get("discount").equals(""))
  {
  total = (Integer.parseInt(map.get("discount").toString())*total)/10;
  }
  ztotal+=total;

%>
<tr  >

               
                <td height="30" align="center" class="left_txt2"><%=map.get("proname")%></td>
               
                <td height="30" align="center" class="left_txt2"><img src="../upfile/<%=map.get("filename")%>" height="65" width="85" style="padding: 3px" /></td>
               
                <td height="30" align="center" class="left_txt2"><%=map.get("price")%></td>
               
                <td height="30" align="center" class="left_txt2"><%=map.get("num")%></td>
               
                <td height="30" align="center" class="left_txt2"><%=map.get("discount")%></td>
               
                <td height="30" align="center" class="left_txt2"><%=total %>  </td>
                
                <td height="30" align="center" class="left_txt2">
                
                <a href="javascript:update('<%=map.get("cid")%>')">修改数量</a>
&nbsp;|&nbsp;&nbsp;
<a onclick="return confirm('确定要移出吗?')"  href="proscarcx.jsp?scid=<%=map.get("cid")%>">移出</a>
                </td>
               
                 
                
</tr>
<%}%>
                
             <tr>
              <td colspan=10 class="left_txt2" height="30"  align="center">
              
              
          金额合计 :         <%=ztotal %> <label>
          &nbsp;&nbsp;&nbsp;
          <input type="button" onClick="window.location.replace('proscarcx.jsp?c=c')" name="button" style="height: 21px" id="button" value="清空购物车" />
          &nbsp;&nbsp;&nbsp;
          <input type="submit" onClick="f1.action='proscarcx.jsp?fs=fs&f=f'" name="button2" style="height: 21px"  id="button2" value="确认发送订单" />
           &nbsp;&nbsp;&nbsp;
          <input type="button" onClick="window.open('/schmsite')" name="button2" style="height: 21px"  id="button2" value="回首页" />
         </label>
              
              </td>
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
mmm.put("pid",ppid); 
%>
<%=Info.tform(mmm)%> 
<script language=javascript src='/schmsite/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/schmsite/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('proscarxg.jsp?id='+no,'信息修改',350,'100%') 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
