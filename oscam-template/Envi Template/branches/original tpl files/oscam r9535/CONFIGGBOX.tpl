<!--OSCam;2432559887;1.20-unstable_svn;9535;MODULE_GBOX-->
##TPLHEADER##
##TPLMENU##
##TPLCONFIGMENU##
##TPLMESSAGE##
	<form action="config.html" method="get">
		<input name="part" type="hidden" value="gbox">
		<input name="action" type="hidden" value="execute">
		<TABLE CLASS="config">
			<TR><TH COLSPAN="2">Edit Gbox Config</TH></TR>
			<TR><TD>##TPLHELPPREFIX##conf#hostname##TPLHELPSUFFIX##Hostname:</A></TD><TD><input name="hostname" type="text" size="30" maxlength="30" value="##HOSTNAME##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#port_9##TPLHELPSUFFIX##Port:</A></TD><TD><input name="port" type="text" size="12" maxlength="5" value="##PORT##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#my_password##TPLHELPSUFFIX##my Password:</A></TD><TD><input name="my_password" type="text" size="12" maxlength="8" value="##MYPASSWORD##"></TD></TR>
			<TR><TD COLSPAN="2"><input type="submit" value="OK" ##BTNDISABLED##></TD></TR>
		</TABLE>
	</form>
##TPLFOOTER##
