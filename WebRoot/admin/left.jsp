<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
HashMap user = new HashMap(); 
if(session.getAttribute("admin")!=null)
{
user = (HashMap)session.getAttribute("admin");
} 
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>管理页面</title>

<script src="/schmsite/js/prototype.lite.js" type="text/javascript"></script>
<script src="/schmsite/js/moo.fx.js" type="text/javascript"></script>
<script src="/schmsite/js/moo.fx.pack.js" type="text/javascript"></script>
<style>
body {
	font:12px Arial, Helvetica, sans-serif;
	color: #000;
	background-color: #EEF2FB;
	margin: 0px;
}
#container {
	width: 182px;
}
H1 {
	font-size: 12px;
	margin: 0px;
	width: 182px;
	cursor: pointer;
	height: 30px;
	line-height: 20px;	
}
H1 a {
	display: block;
	width: 182px;
	color: #000;
	height: 30px;
	text-decoration: none;
	moz-outline-style: none;
	background-image: url(/schmsite/frontfiles/images/menu_bgs.gif);
	background-repeat: no-repeat;
	line-height: 30px;
	text-align: center;
	margin: 0px;
	padding: 0px;
}
.content{
	width: 182px;
	height: 26px;
	
}
.MM ul {
	list-style-type: none;
	margin: 0px;
	padding: 0px;
	display: block;
}
.MM li {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	list-style-type: none;
	display: block;
	text-decoration: none;
	height: 26px;
	width: 182px;
	padding-left: 0px;
}
.MM {
	width: 182px;
	margin: 0px;
	padding: 0px;
	left: 0px;
	top: 0px;
	right: 0px;
	bottom: 0px;
	clip: rect(0px,0px,0px,0px);
}
.MM a:link {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(/schmsite/frontfiles/images/menu_bg1.gif);
	background-repeat: no-repeat;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}
.MM a:visited {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(/schmsite/frontfiles/images/menu_bg1.gif);
	background-repeat: no-repeat;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}
.MM a:active {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(/schmsite/frontfiles/images/menu_bg1.gif);
	background-repeat: no-repeat;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}
.MM a:hover {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	font-weight: bold;
	color: #006600;
	background-image: url(/schmsite/frontfiles/images/menu_bg1.gif);
	background-repeat: no-repeat;
	text-align: center;
	display: block;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}
</style>
</head>

<body>
<table width="100%" height="280" border="0" cellpadding="0" cellspacing="0" bgcolor="#EEF2FB">
  <tr>
    <td width="182" valign="top"><div id="container">
    
 
    
      
      <%
      if(user.get("utype").equals("管理员"))
      {
       %>
      <h1 class="type" style="display: "><a href="javascript:void(0)">订单管理</a></h1>
      <div class="content" style="display: ">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="/schmsite/frontfiles/images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">  
          <li><a href="ordersjx.jsp" target="main">进行中的订单</a></li>
    
        </ul>
      </div>
        
      
      <h1 class="type" style="display: "><a href="javascript:void(0)">网站基础信息管理</a></h1>
      <div class="content" style="display: ">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="/schmsite/frontfiles/images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
        
        <li><a href="proscx.jsp" target="main">图书管理</a></li>
        
        <li><a href="pinluncx.jsp" target="main">评论管理</a></li>
        <li><a href="messagescx.jsp" target="main">客户建议</a></li>
 
        
          
          <li><a href="splbcx.jsp" target="main">图书类别管理</a></li>  
          <li><a href="hysysusercx.jsp" target="main">会员信息维护</a></li>
          <li><a href="sysusercx.jsp" target="main">管理员信息维护</a></li>
          
        </ul>
      </div>
      
      
       <h1 class="type"><a href="javascript:void(0)">基本信息维护</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="/schmsite/frontfiles/images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
        <li><a href="yqljcx.jsp" target="main">友情链接管理</a></li>
        <li><a href="newscx.jsp" target="main">新闻信息管理</a></li>
        
          
          <li><a href="ntypescx.jsp" target="main">新闻类别管理</a></li>
          <li><a href="wzjj.jsp" target="main">网站简介</a></li>
          <li><a href="wzgg.jsp" target="main">网站公告</a></li>
          <li><a href="lxwm.jsp" target="main">联系我们</a></li>  
          
          <li><a href="psysuserck.jsp?id=<%=user.get("id")%>" target="main">查看个人信息</a></li>
          <li><a href="uppass.jsp" target="main">修改登录密码</a></li>
        </ul>
      </div>
      <%} %>
      
      
      
      
    
      
      <%
      if(user.get("utype").equals("会员"))
      {
       %>
      <h1 class="type" style="display: "><a href="javascript:void(0)">订单管理</a></h1>
      <div class="content" style="display: ">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="/schmsite/frontfiles/images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">  
          <li><a href="ordersjx.jsp" target="main">进行中的订单</a></li> 
 
          <li><a href="proscarcx.jsp" target="main">查看购物车</a></li>
        </ul>
      </div>
        
       
      
       <h1 class="type"><a href="javascript:void(0)">基本信息维护</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="/schmsite/frontfiles/images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          
          <li><a href="psysuserck.jsp?id=<%=user.get("id")%>" target="main">查看个人信息</a></li>
          <li><a href="uppass.jsp" target="main">修改登录密码</a></li>
        </ul>
      </div>
      <%} %>
      
       
      
      
        <script type="text/javascript">
		var contents = document.getElementsByClassName('content');
		var toggles = document.getElementsByClassName('type');
	
		var myAccordion = new fx.Accordion(
			toggles, contents, {opacity: true, duration: 120}
		);
		myAccordion.showThisHideOpen(contents[0]);
	</script>
        </td>
  </tr>
</table>
</body>
</html>