<!--OSCam;1888981424;1.20-unstable_svn;9681;MODULE_CAMD35-->
##TPLHEADER##
##TPLMENU##
##TPLCONFIGMENU##
##TPLMESSAGE##
	<form action="config.html" method="get">
		<input name="part" type="hidden" value="camd35">
		<input name="action" type="hidden" value="execute">
		<input name="suppresscmd08" type="hidden" value="0">
		<TABLE CLASS="config">
			<TR><TH COLSPAN="2">Edit Cs357x (Camd35 UDP) Config</TH></TR>
			<TR><TD>##TPLHELPPREFIX##conf#port_4##TPLHELPSUFFIX##Port:</A></TD><TD><input name="port" type="text" size="5" maxlength="5" value="##PORT##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#serverip_4##TPLHELPSUFFIX##Serverip:</A></TD><TD><input name="serverip" type="text" size="15" maxlength="15" value="##SERVERIP##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#suppresscmd08##TPLHELPSUFFIX##Suppress cmd08:</A></TD><TD><input name="suppresscmd08" type="checkbox" value="1" ##SUPPRESSCMD08UDP##></TD></TR>
			<TR><TD COLSPAN="2"><input type="submit" value="Save" title="Save settings" ##BTNDISABLED##></TD></TR>
		</TABLE>
	</form>
##TPLFOOTER##