<!--OSCam;3489100406;1.20-unstable_svn;9093;MODULE_GHTTP-->
##TPLHEADER##
##TPLMENU##
##TPLMESSAGE##
	<br><br><br>
	<DIV class = "warning">Auto-configure GHttp?<br>Any existing GHttp readers will be replaced.<br>
		3 new GHttp readers will be created (2 primary and 1 fallback).<br>
	</DIV>
	<br>
	<form action="ghttp.html" method="post">
		<table><tr><td>User ##USERREQ##</td><td>Password ##PWDREQ##</td><td>Name ##NAMEREQ##</td></tr><tr>
		<td><input type="text" name="gacuser" value="##GACUSER##" title="User" ##USERRDONLY##></td>
		<td><input type="text" name="gacpasswd" value="##GACPASSWD##" title="Password" ##PWDRDONLY##></td>
		<td><input type="text" name="gacname" value="##GACNAME##" title="Name" ##NAMERDONLY##></td>
		</tr></table><br>
		<input type="submit" name="action" value="Autoconf" title="Auto-configure GHttp" ##BTNDISABLED##>
	</form>
##TPLFOOTER##
