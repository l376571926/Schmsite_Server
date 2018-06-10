<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="util.Info"%>

 
<%
String url = "";
System.out.println("1");
HashMap user = new HashMap(); 
user = Info.getUser(request);
  user = (HashMap)session.getAttribute("admin");
String uname = user.get("uname").toString();
 if(user.get("utype").equals("管理员"))
{
url="aordersjx.jsp";
}

 if(user.get("utype").equals("会员"))
{
url="ordersjx.jsp";
}
 
  if(user.get("utype").equals("会员")&&request.getParameter("zj")!=null)
{
url="proscarcx.jsp";
}

 %>
 
 
 <!DOCTYPE html>
<html>
    <head>
       
        <link href="css/public.css" type="text/css" rel="stylesheet">
        <link href="css/houtai.css" type="text/css" rel="stylesheet">
        <link href="css/smartMenu.css" type="text/css" rel="stylesheet">
        <title>后台管理</title>
        <style type="text/css">
<!--
.STYLE1 {
	color: #FFFFFF;
	font-size: 18px;
}
-->
        </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>
    <body>
    	<div id="admin">
    		<div class="ad-menu" id="ad-menu">
                <div class="ad-logo STYLE1"> 后台管理</div>
                <div class="ad-list">
                    <ul>
                        <li>
                            <div class="li-item"><em class="scm li-ico ic1"></em>功能列表<span class="scm arrow"></span></div>
							
				 <dl>			   
      <%
      if(user.get("utype").equals("管理员"))
      {
       %>
                           
                                <dd>
                                    <a href="#" class="dd-item">权限管理管理<span class="scm dd-ar"></span></a>
                                    <ul class="ad-item-list">
                                        <li class="J_menuItem" href="psysuserck.jsp?id=<%=user.get("id")%>" data-index="1">查看个人信息</li>
										 <li class="J_menuItem" href="sysusercx.jsp" data-index="1">管理员管理</li>
										<li class="J_menuItem" href="uppass.jsp" data-index="1">修改登录密码</li>
                                       
                                    </ul>
                                </dd>
                                <dd>
                                    <a href="#" class="dd-item">订单管理<span class="scm dd-ar"></span></a>
                                    <ul class="ad-item-list">
                                        <li class="J_menuItem" href="aordersjx.jsp" data-index="1">订单管理</li>
										 
                                         
                                    </ul>
                                </dd>
								
								     <dd>
                                    <a href="#" class="dd-item">图书管理<span class="scm dd-ar"></span></a>
                                    <ul class="ad-item-list">
                                        <li class="J_menuItem" href="proscx.jsp" data-index="1">图书管理</li>
										 <li class="J_menuItem" href="splbcx.jsp" data-index="1">图书类别管理</li>
                                         
                                    </ul>
                                </dd>
								
								
								
								     <dd>
                                    <a href="#" class="dd-item">会员管理<span class="scm dd-ar"></span></a>
                                    <ul class="ad-item-list">
                                        <li class="J_menuItem" href="hysysusercx.jsp" data-index="1">会员管理</li>
										 
                                         
                                    </ul>
                                </dd>
									    
								
								
								
								
								     <dd>
                                    <a href="#" class="dd-item">文章管理<span class="scm dd-ar"></span></a>
                                    <ul class="ad-item-list">
                                        <li class="J_menuItem" href="ntypescx.jsp" data-index="1">文章类别管理</li>
										   <li class="J_menuItem" href="newscx.jsp" data-index="1">文章信息管理</li>
										   
										    
										 
                                         
                                    </ul>
                                </dd>
									    
								<dd>
                                    <a href="#" class="dd-item">评论管理<span class="scm dd-ar"></span></a>
                                    <ul class="ad-item-list">
                                       										 <li class="J_menuItem" href="pinluncx.jsp" data-index="1">评论管理</li>
                                         
                                    </ul>
                                </dd>
								      <%} %>
      
      
      
      
    
      
      <%
      if(user.get("utype").equals("会员"))
      {
       %>
								     <dd>
                                    <a href="#" class="dd-item">订单管理<span class="scm dd-ar"></span></a>
                                    <ul class="ad-item-list">
                                        <li class="J_menuItem" href="ordersjx.jsp" data-index="1">订单管理</li>
										 <li class="J_menuItem" href="proscarcx.jsp" data-index="1">查看购物车</li>
                                         
                                    </ul>
                                </dd>
								
								
								     <dd>
                                    <a href="#" class="dd-item">个人信息管理<span class="scm dd-ar"></span></a>
                                    <ul class="ad-item-list">
                                        <li class="J_menuItem" href="psysuserck.jsp?id=<%=user.get("id")%>" data-index="1">查看个人信息</li>
										 
										<li class="J_menuItem" href="uppass.jsp" data-index="1">修改登录密码</li>
                                         
                                    </ul>
                                </dd>
								
								
							
								
						    <%} %>		
								
								
                            </dl>
                        </li>
                        
                    </ul>
                </div>
            </div>
    		<div class="ad-comment-box" id="ad-comment">
                <div class="ad-top-comment">
                    <div class="ad-message">
                        <div class="ad-top-left">
                            <div class="ad-change-btn"><a id="ad-list" href="javascript:;" class="scm ad-list-btn"></a></div>
                            <div class="ad-search-box clear">
                              <div class="ad-search-cha"></div>
                          </div>
                        </div>
                        <div class="ad-top-right">
                            
                            <div class="ad-welcom">
                                <div class="ad-wel-img"> </div>
                                <div class="ad-wel-text">
                                    <div class="font-wel">欢迎您！<%=uname %> (<%=user.get("utype") %>)</div>
                                    <div class="font-wel"><a href="/schmsite/index.jsp?z=z"><strong>【退出】</strong></a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ad-main-nav-box">
                        <ul id="breadcrumbs-three">
                            <li title="首页"><a href="javascript:;" class="dot">首页</a></li>
                        </ul>
                        <a href="javascript:;" class="scm jian-a J_mainLeft main-sel pre"></a>
                        <div class="ad-main-wraper .J_menuItems">
                            <ul class="ad-main-list" id="ad-main">
                            </ul>
                        </div>
                        <a href="javascript:;" class="scm jian-a J_mainRight next"></a>
                    </div>
                    <div class="ad-sub-nav-box content-tabs">
                        <!-- <div class="ad-sub-record">历史记录</div> -->
                        <a href="javascript:;" class="scm jian-a sub-sel pre j_tabBg J_tabLeft"></a>
                        <div class="ad-sub-wraper page-tabs J_menuTabs">
                            <ul class="ad-sub-list page-tabs-content">
                                <li class="active J_menuTab" data-id="#">首页</li>
                            </ul>
                        </div>
                        <a href="javascript:;" class="scm jian-a next j_tabBg J_tabRight"></a>
                    </div>
                </div>
                <div class="ad-main-comment J_mainContent" id="ad-iframe">
                    <iframe class="J_iframe" name="iframe0" width="100%" height="100%" src="sys.jsp" frameborder="0" data-id="sys.jsp" seamless></iframe>
                </div>
    		</div>
    	</div>
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/contabs.js"></script>
        <script type="text/javascript" src="js/maintabs.js"></script>
        <script type="text/javascript" src="js/jquery-smartMenu-min.js"></script>
        <script type="text/javascript" src="js/jquery.nicescroll.min.js"></script>
        <script type="text/javascript">
            $(function(){
                $(".ad-menu").niceScroll({cursorborder:"0 none",cursorcolor:"#1a1a19",cursoropacitymin:"0",boxzoom:false});
            })
        </script>
    </body>
</html>