<!--OSCam;3420674537;1.20-unstable_svn;8864;MODULE_NEWCAMD-->
##TPLHEADER##
##TPLMENU##
##TPLCONFIGMENU##
##TPLMESSAGE##
	<form action="config.html" method="get">
		<input name="part" type="hidden" value="newcamd">
		<input name="action" type="hidden" value="execute">
		<input name="keepalive" type="hidden" value="0">
		<input name="mgclient" type="hidden" value="0">
		<TABLE class="config">
			<TR><TH COLSPAN="2">Edit Newcamd Config</TH></TR>
			<TR><TD>##TPLHELPPREFIX##conf#port_6##TPLHELPSUFFIX##Port:</A></TD><TD><textarea name="port" cols="120" rows="3" class="bt">##PORT##</textarea></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#serverip_6##TPLHELPSUFFIX##Serverip:</A></TD><TD><input name="serverip" type="text" size="15" maxlength="15" value="##SERVERIP##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#key_2##TPLHELPSUFFIX##Key:</A></TD><TD><input name="key" type="text" size="28" maxlength="28" value="##KEY##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#allowed##TPLHELPSUFFIX##Allowed:</A></TD><TD><textarea name="allowed" cols="58" rows="3" class="bt">##ALLOWED##</textarea></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#keepalive##TPLHELPSUFFIX##Keepalive:</A></TD><TD><input name="keepalive" type="checkbox" value="1" ##KEEPALIVE##></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#mgclient##TPLHELPSUFFIX##Mgclient:</A></TD><TD><input name="mgclient" type="checkbox" value="1" ##MGCLIENTCHK##></TD></TR>
			<TR><TD colspan="2" align="right"><input type="submit" value="Save" ##BTNDISABLED##></TD></TR>
		</TABLE>
	</form>
##TPLFOOTER##
