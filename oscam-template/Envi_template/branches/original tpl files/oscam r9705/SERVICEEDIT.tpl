<!--OSCam;3391145882;1.20-unstable_svn;9705;-->
##TPLHEADERSHORT##
<script type="text/javascript">
	
	var oscamconf = 'services';

</script>
##TPLBODY##
##TPLMENU##
<DIV ID="subnav"><UL ID="nav"><LI CLASS="configmenu"><A HREF="javascript:history.go(-1)">Back</A></LI></UL></DIV>
##TPLMESSAGE##
	<form action="services_edit.html" method="get">
		<input name="service" type="hidden" value="##LABEL##">
		<TABLE CLASS="config configservices">
			<TR><TH COLSPAN="2">Edit Service ##LABEL##</TH></TR>
			<TR><TD><A>Caid: </A></TD><TD><input name="caid" type="text" size="63" maxlength="160" value="##CAIDS##"></TD></TR>
			<TR><TD><A>Provid: </A></TD><TD><input name="provid" type="text" size="63" maxlength="60" value="##PROVIDS##"></TD></TR>
			<TR><TD><A>Srvid: </A></TD><TD><textarea name="srvid" ROWS="10" COLS="69">##SRVIDS##</textarea></TD></TR>
			<TR><TD CLASS="configcolsave" COLSPAN="2"><input type="submit" name="action" value="Save" title="Save service and reload services" ##BTNDISABLED##></TD>
		</TABLE>
	</form>
##TPLFOOTER##