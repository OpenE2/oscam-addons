<!--OSCam;899166978;1.20-unstable_svn;9173;MODULE_CCCSHARE-->
##TPLHEADER##
##TPLMENU##
##TPLCONFIGMENU##
##TPLMESSAGE##
	<form action="config.html" method="get">
		<input name="part" type="hidden" value="cccam">
		<input name="action" type="hidden" value="execute">
		<TABLE CLASS="config">
			<TR><TH COLSPAN="2">Edit Cccam Config</TH></TR>
			<TR><TD>##TPLHELPPREFIX##conf#port_8##TPLHELPSUFFIX##Port:</A></TD><TD><input name="port" type="text" size="16" maxlength="128" value="##PORT##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#serverip_10##TPLHELPSUFFIX##Serverip:</A></TD><TD><input name="serverip" type="text" size="15" maxlength="15" value="##SERVERIP##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#reshare##TPLHELPSUFFIX##Reshare:</A></TD><TD><input name="reshare" type="text" size="2" maxlength="2" value="##RESHARE##"> -1 no reshare or lowest value off cccreshare reader account</TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#ignorereshare##TPLHELPSUFFIX##Ignore reshare:</A></TD>
				<TD>			
					<select name="ignorereshare">
						<option value="0" ##IGNRSHRSELECTED0##>0 - Use reshare level of Server</option>
						<option value="1" ##IGNRSHRSELECTED1##>1 - Use reshare level of Reader or User</option>
					</select>
				</TD>
			</TR>
			<TR><TD>##TPLHELPPREFIX##conf#forward_origin_card##TPLHELPSUFFIX##Forward origin card:</A></TD>
				<TD>
					<select name="forward_origin_card">
						<option value="0">OFF</option>
						<option value="1" ##FORWARDORIGINCARD##>ON</option>
					</select>
				</TD>
			</TR>
			<TR><TD>##TPLHELPPREFIX##conf#stealth##TPLHELPSUFFIX##Stealth mode:</A></TD>
				<TD>
					<select name="stealth">
						<option value="0">DISABLE</option>
						<option value="1" ##STEALTH##>ENABLE</option>
					</select>
				</TD>
			</TR>
			<TR><TD>##TPLHELPPREFIX##conf#nodeid##TPLHELPSUFFIX##Node Id:</A></TD><TD><input name="nodeid" type="text" size="18" maxlength="16" value="##NODEID##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#keepconnected##TPLHELPSUFFIX##Keep clients connected:</A></TD>
				<TD>
					<select name="keepconnected">
						<option value="0">OFF</option>
						<option value="1" ##KEEPCONNECTED##>ON</option>
					</select>
				</TD>
			</TR>
			<TR><TD>##TPLHELPPREFIX##conf#version##TPLHELPSUFFIX##Version:</A></TD>
				<TD>
					<select name="version">
						<option value="2.0.11" ##VERSIONSELECTED0##>2.0.11</option>
						<option value="2.1.1" ##VERSIONSELECTED1##>2.1.1</option>
						<option value="2.1.2" ##VERSIONSELECTED2##>2.1.2</option>
						<option value="2.1.3" ##VERSIONSELECTED3##>2.1.3</option>
						<option value="2.1.4" ##VERSIONSELECTED4##>2.1.4</option>
						<option value="2.2.0" ##VERSIONSELECTED5##>2.2.0</option>
						<option value="2.2.1" ##VERSIONSELECTED6##>2.2.1</option>
						<option value="2.3.0" ##VERSIONSELECTED7##>2.3.0</option>
					</select>
				</TD>
			</TR>
			<TR><TD>##TPLHELPPREFIX##conf#updateinterval##TPLHELPSUFFIX##Update Interval:</A></TD><TD><input name="updateinterval" type="text" size="5" maxlength="4" value="##UPDATEINTERVAL##"> s</TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#recv_timeout##TPLHELPSUFFIX##Receive timeout:</A></TD><TD><input name="recv_timeout" type="text" size="5" maxlength="5" value="##RECV_TIMEOUT##"> ms</TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#minimizecards##TPLHELPSUFFIX##Minimize cards:</A></TD>
				<TD>
					<select name="minimizecards">
						<option value="0" ##MINIMIZECARDSELECTED0##>0 - legacy (default)</option>
						<option value="1" ##MINIMIZECARDSELECTED1##>1 - smallest hop</option>
						<option value="2" ##MINIMIZECARDSELECTED2##>2 - via caid</option>
					</select>
				</TD>
			</TR>
			<TR><TD>##TPLHELPPREFIX##conf#reshare_mode##TPLHELPSUFFIX##Reshare mode:</A></TD>
				<TD>
					<select name="reshare_mode">
						<option value="0" ##RESHAREMODE0##>0 - reshare cards only+def caid</option>
						<option value="1" ##RESHAREMODE1##>1 - reshare cards+services</option>
						<option value="2" ##RESHAREMODE2##>2 - reshare reader-services</option>
						<option value="3" ##RESHAREMODE3##>3 - reshare user-services</option>
						<option value="4" ##RESHAREMODE4##>4 - reshare only cards (default)</option>
					</select>
				</TD>
			</TR>
			<TR><TD COLSPAN="2" align="right"><input type="submit" value="Save" ##BTNDISABLED##></TD></TR>
		</TABLE>
	</form>
	<TABLE CLASS="config upspace">
		<TR><TH COLSPAN="2">Control</TH></TR>
		<TR>
			<TD CLASS="centered">				
				<form action="config.html" method="get">
					<input name="part" type="hidden" value="cccam">
					<input type="submit" name="button" value="Refresh global list" ##BTNDISABLED##>
				</form></TD>
			<TD CLASS="centered">				
				<form action="entitlements.html" method="get">
					<input name="globallist" type="hidden" value="1">
					<input type="submit" name="button" value="Show global list" ##BTNDISABLED##>
				</form></TD>
		</TR>
	</TABLE>
##TPLFOOTER##
