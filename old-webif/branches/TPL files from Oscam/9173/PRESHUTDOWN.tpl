<!--OSCam;3941720044;1.20-unstable_svn;9173;-->
##TPLHEADER##
##TPLMENU##
	<DIV class="warning">
		Do you really want to shutdown&#47; restart oscam?<BR>
		All users will become disconnected.<BR>
		If you use &#39;Shutdown&#39; you will not be able to restart oscam from webinterface.<BR>
		The webinterface will try to connect to oscam once a few seconds after shutdown&#47; restart.<BR>
	</DIV>
	<form action="shutdown.html" method="get">
		<input type="submit" name="action" value="Shutdown" title="Shutdown OSCam" ##BTNDISABLED##>
		<input type="submit" name="action" value="Restart" title="Restart OSCam" ##BTNDISABLED##>
	</form>
##TPLFOOTER##
