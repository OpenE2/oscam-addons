<!--OSCam;2992644960;1.20-unstable_svn;8864;-->
			<TR><TD>##TPLHELPPREFIX##server#inactivitytimeout##TPLHELPSUFFIX##Inactivity timeout:</A></TD><TD><input name="inactivitytimeout" type="text" size="6" maxlength="10" value="##INACTIVITYTIMEOUT##"> s</TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#reconnecttimeout##TPLHELPSUFFIX##Reconnect timeout:</A></TD><TD><input name="reconnecttimeout" type="text" size="6" maxlength="10" value="##RECEIVETIMEOUT##"> s</TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#cccreconnect##TPLHELPSUFFIX##Request timeout:</A></TD><TD><input name="cccreconnect" type="text" size="6" maxlength="10" value="##CCCRECONNECT##"> ms</TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#user##TPLHELPSUFFIX##User:</A></TD><TD><input name="user" type="text" size="63" maxlength="63" value="##ACCOUNT##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#password##TPLHELPSUFFIX##Password:</A></TD><TD><input name="password" type="text" size="63" maxlength="63" value="##PASSWORD##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#cccversion##TPLHELPSUFFIX##Version:</A></TD>
				<TD>
					<SELECT name="cccversion">
						<OPTION value="2.0.11" ##CCCVERSIONSELECTED0##>2.0.11</OPTION>
						<OPTION value="2.1.1"##CCCVERSIONSELECTED1##>2.1.1</OPTION>
						<OPTION value="2.1.2"##CCCVERSIONSELECTED2##>2.1.2</OPTION>
						<OPTION value="2.1.3"##CCCVERSIONSELECTED3##>2.1.3</OPTION>
						<OPTION value="2.1.4"##CCCVERSIONSELECTED4##>2.1.4</OPTION>
						<OPTION value="2.2.0"##CCCVERSIONSELECTED5##>2.2.0</OPTION>
						<OPTION value="2.2.1"##CCCVERSIONSELECTED6##>2.2.1</OPTION>
						<OPTION value="2.3.0"##CCCVERSIONSELECTED7##>2.3.0</OPTION>
					</SELECT>
				</TD>
			</TR>
			<TR><TD>##TPLHELPPREFIX##server#cccmaxhops##TPLHELPSUFFIX##Maxhop:</A></TD><TD><input name="cccmaxhops" type="text" size="3" maxlength="2" value="##CCCMAXHOPS##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#cccmindown##TPLHELPSUFFIX##Mindown:</A></TD><TD><input name="cccmindown" type="text" size="3" maxlength="2" value="##CCCMINDOWN##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#cccreshare##TPLHELPSUFFIX##Reshare:</A></TD><TD><input name="cccreshare" type="text" size="3" maxlength="2" value="##CCCRESHARE##">				&nbsp;Global CCCam Reshare:<SPAN CLASS="global_conf" TITLE="This value is used if Reshare = -1"><A HREF="config.html?part=cccam">##RESHARE##</A></SPAN></TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#cccwantemu##TPLHELPSUFFIX##Want Emu:</A><input name="cccwantemu" type="hidden" value="0"></TD><TD><input name="cccwantemu" type="checkbox" value="1" ##CCCWANTEMUCHECKED##></TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#ccckeepalive##TPLHELPSUFFIX##Keep alive:</A></TD><TD><SELECT NAME="ccckeepalive"><OPTION VALUE="0">NO</OPTION><OPTION VALUE="1" ##KEEPALIVECHECKED##>YES</OPTION></SELECT></TD></TR>
