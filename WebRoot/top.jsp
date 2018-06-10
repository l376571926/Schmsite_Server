<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
if(request.getParameter("z")!=null)session.invalidate();
 %>
 
    
<link href="favicon.ico" rel="shortcut icon" />
<link rel="stylesheet" type="text/css" href="images/metinfo.css" />
<script src="images/jQuery1.7.2.js" type="text/javascript"></script>
<script src="images/ch.js" type="text/javascript"></script>
         
			
			<header>
		<div class="inner">
			<div class="top-logo">

				<a href="#" title="网站名称" id="web_logo">
					<img src="images/logo.png" alt="网站名称" title="网站名称" style="margin:20px 700px 0px 0px;" />
				</a>

				<ul class="top-nav list-none">
					<li class="t"><a href='#' onclick='SetHome(this,window.location,"非IE浏览器不支持此功能，请手动设置！");' style='cursor:pointer;' title='设为首页'  >设为首页</a><span>|</span><a href='#' onclick='addFavorite("非IE浏览器不支持此功能，请手动设置！");' style='cursor:pointer;' title='收藏本站'  >收藏本站</a><span>|</span><a class="fontswitch" id="StranLink" href="javascript:StranBody()">繁体中文</a><span>|</span> 
					<li class="b"><a href="admin/"><strong><span style="color:#ffff00;"><span style="font-size: 16px;"> </span></span></strong></a></li>
				</ul>
			</div>
			<nav>
<ul class="list-none">
<li id="nav_10001" style='width:121px;' class='navdown' ><a href='index.jsp' x class='nav'><span>网站首页</span></a></li>
<li class="line"></li>
<li id='nav_1' style='width:121px;'  ><a href='nlist.jsp' 0  class='hover-none nav'><span>通知公告</span></a></li>
<li class="line"></li>
<li id='nav_2' style='width:121px;'><a href='nlist2.jsp'  class='hover-none nav'><span>新闻动态</span></a></li>
<li class="line"></li>
<li id='nav_3' style='width:121px;' ><a href='pros.jsp?f=f&key=考研书籍'   class='hover-none nav'><span>考研书籍</span></a></li>
<li class="line"></li>
<li id='nav_32' style='width:121px;' ><a href='pros.jsp?f=f&key=计算机书籍'   class='hover-none nav'><span>计算机书籍</span></a></li>
<li class="line"></li>
<li id='nav_33' style='width:121px;' ><a href='pros.jsp?f=f&key=历史文献'   class='hover-none nav'><span>历史文献</span></a></li>

 


 <%			    if(Info.getUser(request)==null){			     %>
 
 <li class="line"></li>
<li id='nav_22' style='width:120px;' > <a href='regedit.jsp'   class='hover-none nav'><span>免费注册</span></a></li> 

 
 <li class="line"></li>
<li id='nav_22' style='width:120px;' > <a href='login.jsp'   class='hover-none nav'><span>会员登录</span></a></li> 



 <%}else {%>

 <li class="line"></li>
<li id='nav_22' style='width:120px;' > <a href='/schmsite/admin'   class='hover-none nav'><span>管理中心</span></a></li>  

 <li class="line"></li>
<li id='nav_22' style='width:120px;' > <a href='index.jsp?z=z'   class='hover-none nav'><span>会员退出</span></a></li> 



<%}%>


</ul></nav>
		</div>
	</header>
	
	
	    
                 <form action="/schmsite/pros.jsp" name="f33" method="post" style="display: inline">
                 
                 <font color="gray"><span style="display: inline">关键字检索 :
                 <input type="text" name="key" size="18" style="height:15px" />
                 
                 
&nbsp;&nbsp; 


 <select name=leibie>
                  <%
    for(HashMap m:new CommDAO().select("select * from splb  order by id")){
     %>
     <option value=<%=m.get("datashowname") %>><%=m.get("datashowname") %></option>
      <%} %>
                 
                 
                 </select><font  onclick="f33.submit()" style="cursor: hand"  >查找 </font>&nbsp;</span></font><font color="gray"><span style="display: inline">&nbsp;&nbsp;&nbsp;</span></font>&nbsp;&nbsp;&nbsp;
                
                </form>
                 
    <div   ><div  >
<a href='#' target='_blank' title=' '><img src='images/1342430358.jpg' width='993' alt=' ' height='260'></a>
</div></div>             
              
            
  
      
 
 <script type="text/javascript">
<!--
<%
if(request.getAttribute("error")!=null){
%>
alert("用户名或密码错误");
<%}%>
//-->
</script>
