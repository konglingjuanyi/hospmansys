<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {
	font-size: 12px;
	color: #000000;
}
.STYLE5 {font-size: 12}
.STYLE7 {font-size: 12px; color: #FFFFFF; }
.STYLE7 a{font-size: 12px; color: #FFFFFF; }
a img {
	border:none;
}
-->
</style>
<script type="text/javascript">
	function getInfo(){
		var userAccount = document.getElementById("account").value;
		window.showModalDialog("servlet/ConsumerOneDetailServlet?userAccount="+userAccount,"","dialogHeight:200px");
	}
	function modifyPsw(){
		var status = document.getElementById("status");
		//alert(document.getElementById("account").value);
		if(status.value == "false"){
			var userAccount = document.getElementById("account").value;
			var userPsw = window.prompt("请输入原密码:");
			var a = document.getElementById("modify");
			var flag=true;
			if(document.getElementById("psw").value != userPsw){
				alert("原密码不正确!");			
			}else{
				while(flag){
					var pswQ = window.prompt("请输入新密码:");
					if(pswQ==""||pswQ.split(" ").length>1){
						alert("新密码不能为空!");
						
					}else if(pswQ.length<6||pswQ.length>16){
						alert("密码不能少于6位，最多不能超过15位");
						
					}else {
						var pswQQ = window.prompt("请再次输入新密码:");
						if(pswQQ==""||pswQQ.split(" ").length>1){
							alert("新密码不能为空!");
						}else if(pswQ.length<6||pswQ.length>16){
							alert("密码不能少于6位，最多不能超过15位");
						}else if(pswQ != pswQQ){
							alert("新密码与旧密码不同!");
						}else{
							flag=false;
							alert("修改成功,请重新登录!");
							a.href="servlet/ConsumerModifyPswServlet?userAccount="+userAccount+"&userPsw="+pswQ;
						}
					}
				}
			}
		}
	}
	
</script>

</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="57" background="images/main_03.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="378" height="57" background="images/main_01.gif">&nbsp;</td>
        <td>&nbsp;</td>
        <td width="281" valign="bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="33" height="27"><img src="images/main_05.gif" width="33" height="27" /></td>
            <td width="248" background="images/main_06.gif"><table width="225" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="17"><div align="right"><a id="modify" target="_top"><img id="im" src="images/pass.gif" width="69" height="17" onclick="modifyPsw();" /></a></div></td>
                <td><div align="right"><a href="javascript:void(0)" target="rightFrame"><img id="img" src="images/user.gif" width="69" height="17" onclick="getInfo();" /></a></div></td>
                <td><div align="right"><a href="servlet/CancleSessionServlet" target="_top"><img src="images/quit.gif" alt=" " width="69" height="17" /></a></div></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="40" background="images/main_10.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="194" height="40" background="images/main_07.gif">&nbsp;</td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="21"><img src="images/main_13.gif" width="19" height="14" /></td>
            <td width="35" class="STYLE7"><div align="center"><a href="<%=path %>/manfunction/right.jsp" target="rightFrame">首页</a></div></td>
            <td width="21" class="STYLE7"><img src="images/main_15.gif" width="19" height="14" /></td>
            <td width="35" class="STYLE7"><div align="center"><a href="javascript:history.go(-1);">后退</a></div></td>
            <td width="21" class="STYLE7"><img src="images/main_17.gif" width="19" height="14" /></td>
            <td width="35" class="STYLE7"><div align="center"><a href="javascript:history.go(1);">前进</a></div></td>
            <td width="21" class="STYLE7"><img src="images/main_19.gif" width="19" height="14" /></td>
            <td width="35" class="STYLE7"><div align="center"><a href="javascript:window.parent.location.reload();">刷新</a></div></td>
            <td width="21" class="STYLE7"><img src="images/main_21.gif" width="19" height="14" /></td>
            <td width="35" class="STYLE7"><div align="center"><a href="http://www.865171.cn" target="_parent">帮助</a></div></td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
        <td width="248" background="images/main_11.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="16%"><span class="STYLE5"></span></td>
            <td width="75%"><div align="center"><span class="STYLE7">By Jessica (<a href="http://Www.865171.cn" target="_blank">Www.865171.cn</a>)</span></div></td>
            <td width="9%">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="30" background="images/main_31.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" height="30"><img src="images/main_28.gif" width="8" height="30" /></td>
        <td width="147" background="images/main_29.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="24%">&nbsp;</td>
            <td width="43%" height="20" valign="bottom" class="STYLE1">管理菜单</td>
            <td width="33%">&nbsp;</td>
          </tr>
        </table></td>
        <td width="39"><img src="images/main_30.gif" width="39" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="20" valign="bottom"><span class="STYLE1">当前登录用户：admin &nbsp;用户角色：管理员</span></td>
            <td valign="bottom" class="STYLE1"><div align="right"></div></td>
          </tr>
        </table></td>
        <td width="17"><img src="images/main_32.gif" width="17" height="30" /></td>
      </tr>
    </table></td>
  </tr>
</table>
<input type="hidden" id="psw" value=<%=request.getSession().getAttribute("psw") %> />
<input type="hidden" id="account" value=<%=request.getSession().getAttribute("user") %> />
<input type="hidden" id="status" value=<%=request.getSession().getAttribute("status") %> />
</body>
</html>
