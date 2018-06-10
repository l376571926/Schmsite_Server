<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@page import="util.Info" %>
<%@page import="dao.CommDAO" %>
<%@page import="util.PageManager" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>


    <link href="/schmsite/frontfiles/css/css.css" rel="stylesheet" type="text/css"/>
    <style type="text/css">
        <!--
        #dbgdtp {
            float: left;
            margin: 0px;
            width: 960px;
        }

        #demo {
            overflow: hidden;
            width: 720px;
        }

        #demo1 {
            float: left;
        }

        #demo2 {
            float: left;
        }

        #indemo {
            float: left;
            width: 1500%;
        }

        -->
    </style>
</head>

<body>


<style>
    A.applink:hover {
        border: 2px dotted #DCE6F4;
        padding: 2px;
        background-color: #ffff00;
        color: green;
        text-decoration: none
    }

    A.applink {
        border: 2px dotted #DCE6F4;
        padding: 2px;
        color: #2F5BFF;
        background: transparent;
        text-decoration: none
    }

    A.info {
        color: #2F5BFF;
        background: transparent;
        text-decoration: none
    }

    A.info:hover {
        color: green;
        background: transparent;
        text-decoration: underline
    }
</style>


<link href="/schmsite/frontfiles/css/css.css" rel="stylesheet" type="text/css"/>

<jsp:include page="top.jsp"></jsp:include>
<form action="/schmsite/schmsite?ac=login&a=a" method="post" name="f11" style="display: inline">
    <table width="998" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
        <tr>
            <td width="4" height="229" background="/schmsite/frontfiles/images/left.jpg">&nbsp;</td>
            <td>
                <table width="459" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td height="39" colspan="2" align="center" valign="middle">


                            <font color=gray>


                                <strong> 用户登录 </strong>

                            </font></td>
                    </tr>
                    <tr>
                        <td width="169" height="39" align="center" valign="middle"><font color=gray>

                            用户名 :

                        </font></td>
                        <td width="290" height="39" align="left" valign="middle"><font color=gray><span
                                style="display: inline">
          <input type="text" name="uname" id="uname" size="11" onmouseover="this.focus();" style="width: 130px"/>
        </span></font></td>
                    </tr>
                    <tr>
                        <td height="39" align="center" valign="middle"><font color=gray><span style="display: inline"> 密码 :<br/></span></font>
                        </td>
                        <td height="39" align="left" valign="middle"><font color=gray><span style="display: inline">
        <input type="password" name="upass" id="upass" size="11" style="width: 130px"/>
        </span></font></td>
                    </tr>
                    <tr>
                        <td height="39" align="center" valign="middle"><font color="gray"><span style="display: inline">验证码 :<br/></span></font>
                        </td>
                        <td height="39" align="left" valign="middle">

                            <input class=wenbenkuang name=pagerandom type=text value="" maxLength=4 size=3/>

                            <img src="/schmsite/admin/ma.jsp" id="yzm"></img> &nbsp; <span onClick="ma();"
                                                                                           style="cursor: hand"
                                                                                           class="login_txt">换一张</span>
                            <script type="text/javascript">
                                function ma() {
                                    var a = document.getElementById("yzm");
                                    var myDate = new Date()
                                    a.src = "/schmsite/admin/ma.jsp?d=" + myDate;
                                }
                            </script>

                        </td>
                    </tr>
                    <tr>
                        <td height="39" colspan="2" align="center" valign="middle"><font color=gray><span
                                style="display: inline">
          <input type="submit" onMouseDown="return check();" style="height: 22px" value=" 登 录 "/>
                        <script type="text/javascript">
                        function check() {
                            if (document.getElementById("uname").value == "") {
                                alert("请输入用户名");
                                return false;
                            }
                            if (document.getElementById("upass").value == "") {
                                alert("请输入密码");
                                return false;
                            }
                            return false;
                        }

                        function reg() {
                            pop('regedit.jsp', '信息添加', 550, '100%')
                        }
                        </script>
          
          &nbsp;
          &nbsp;
          &nbsp;
          <input type="reset" style="height: 22px" value=" 重 置 "/>
        </span></font></td>
                    </tr>
                </table>
            </td>
            <td width="4" background="/schmsite/frontfiles/images/right.jpg">&nbsp;</td>
        </tr>
    </table>

</form>

<link href="css/css.css" rel="stylesheet" type="text/css"/>

<jsp:include page="foot.jsp"></jsp:include>


<script type="text/javascript">
    <%
   String error = (String)request.getAttribute("error");
   if(error!=null)
   {
    %>
    alert("用户名或密码错误");
    <%}%>

    <%
  String random = (String)request.getAttribute("random");
  if(random!=null)
  {
   %>
    alert("验证码输入错误");
    <%}%>

    popheight = 39;
</script>


</body>
</html>
