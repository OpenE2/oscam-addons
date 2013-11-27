<!--OSCam;3078254717;1.20-unstable_svn;8864;MODULE_CCCSHARE-->
##TPLHEADER##
##TPLMENU##
##TPLCONFIGMENU##
##TPLMESSAGE##
	<form action="config.html" method="get">
		<input name="part" type="hidden" value="cccam">
		<input name="action" type="hidden" value="execute">
		<TABLE class="config">
			<TR><TH COLSPAN="2">Edit Cccam Config</TH></TR>
			<TR><TD>##TPLHELPPREFIX##conf#port_8##TPLHELPSUFFIX##Port:</A></TD><TD><input name="port" type="text" size="16" maxlength="128" value="##PORT##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#serverip_10##TPLHELPSUFFIX##Serverip:</A></TD><TD><input name="serverip" type="text" size="15" maxlength="15" value="##SERVERIP##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#reshare##TPLHELPSUFFIX##Reshare:</A></TD><TD><input name="reshare" type="text" size="2" maxlength="2" value="##RESHARE##"> -1 no reshare or lowest value off cccreshare reader account</TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#ignorereshare##TPLHELPSUFFIX##Ignore reshare:</A></TD><TD>			<SELECT NAME="ignorereshare">				<OPTION VALUE="0" ##IGNRSHRSELECTED0##>0 - Use reshare level of Server</OPTION>				<OPTION VALUE="1" ##IGNRSHRSELECTED1##>1 - Use reshare level of Reader or User</OPTION>			</SELECT></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#forward_origin_card##TPLHELPSUFFIX##Forward origin card:</A></TD><TD><SELECT NAME="forward_origin_card"><OPTION VALUE="0">OFF</OPTION><OPTION VALUE="1" ##FORWARDORIGINCARD##>ON</OPTION></SELECT></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#stealth##TPLHELPSUFFIX##Stealth mode:</A></TD><TD><SELECT NAME="stealth"><OPTION VALUE="0">DISABLE</OPTION><OPTION VALUE="1" ##STEALTH##>ENABLE</OPTION></SELECT></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#nodeid##TPLHELPSUFFIX##Node Id:</A></TD><TD><input name="nodeid" type="text" size="18" maxlength="16" value="##NODEID##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#keepconnected##TPLHELPSUFFIX##Keep clients connected:</A></TD><TD><SELECT NAME="keepconnected"><OPTION VALUE="0">OFF</OPTION><OPTION VALUE="1" ##KEEPCONNECTED##>ON</OPTION></SELECT></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#version##TPLHELPSUFFIX##Version:</A></TD>
				<TD>
					<SELECT name="version">
						<OPTION value="2.0.11" ##VERSIONSELECTED0##>2.0.11</OPTION>
						<OPTION value="2.1.1" ##VERSIONSELECTED1##>2.1.1</OPTION>
						<OPTION value="2.1.2" ##VERSIONSELECTED2##>2.1.2</OPTION>
						<OPTION value="2.1.3" ##VERSIONSELECTED3##>2.1.3</OPTION>
						<OPTION value="2.1.4" ##VERSIONSELECTED4##>2.1.4</OPTION>
						<OPTION value="2.2.0" ##VERSIONSELECTED5##>2.2.0</OPTION>
						<OPTION value="2.2.1" ##VERSIONSELECTED6##>2.2.1</OPTION>
						<OPTION value="2.3.0" ##VERSIONSELECTED7##>2.3.0</OPTION>
					</SELECT>
				</TD>
			</TR>
			<TR><TD>##TPLHELPPREFIX##conf#updateinterval##TPLHELPSUFFIX##Update Interval:</A></TD><TD><input name="updateinterval" type="text" size="5" maxlength="4" value="##UPDATEINTERVAL##"> s</TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#recv_timeout##TPLHELPSUFFIX##Receive timeout:</A></TD><TD><input name="recv_timeout" type="text" size="5" maxlength="5" value="##RECV_TIMEOUT##"> ms</TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#minimizecards##TPLHELPSUFFIX##Minimize cards:</A></TD>
				<TD>
					<SELECT name="minimizecards">
						<OPTION value="0" ##MINIMIZECARDSELECTED0##>0 - legacy (default)</OPTION>
						<OPTION value="1" ##MINIMIZECARDSELECTED1##>1 - smallest hop</OPTION>
						<OPTION value="2" ##MINIMIZECARDSELECTED2##>2 - via caid</OPTION>
					</SELECT>
				</TD>
			</TR>
			<TR><TD>##TPLHELPPREFIX##conf#reshare_mode##TPLHELPSUFFIX##Reshare mode:</A></TD>
				<TD>
					<SELECT name="reshare_mode">
						<OPTION value="0" ##RESHAREMODE0##>0 - reshare cards only+def caid</OPTION>
						<OPTION value="1" ##RESHAREMODE1##>1 - reshare cards+services</OPTION>
						<OPTION value="2" ##RESHAREMODE2##>2 - reshare reader-services</OPTION>
						<OPTION value="3" ##RESHAREMODE3##>3 - reshare user-services</OPTION>
						<OPTION value="4" ##RESHAREMODE4##>4 - reshare only cards (default)</OPTION>
					</SELECT>
				</TD>
			</TR>
			<TR><TD colspan="2" align="right"><input type="submit" value="Save" ##BTNDISABLED##></TD></TR>
		</TABLE>
	</form>
	<BR><BR>	<TABLE class="config">
		<TR><TH COLSPAN="2">Control</TH></TR>
		<TR>
			<TD STYLE="text-align:center;">				<form action="config.html" method="get">
				<input name="part" type="hidden" value="cccam">
				<input type="submit" name="button" value="Refresh global list" ##BTNDISABLED##>
				</form></TD>
			<TD STYLE="text-align:center;">				<form action="entitlements.html" method="get">
				<input name="globallist" type="hidden" value="1">
				<input type="submit" name="button" value="Show global list" ##BTNDISABLED##>
				</form></TD>
		</TR>
	</TABLE>
##TPLFOOTER##
