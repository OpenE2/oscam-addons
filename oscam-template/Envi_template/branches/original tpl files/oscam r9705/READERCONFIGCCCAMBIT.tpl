<!--OSCam;926151366;1.20-unstable_svn;9705;MODULE_CCCAM-->
			<TR><TD><A>Inactivity timeout:</A></TD><TD><input name="inactivitytimeout" type="text" size="6" maxlength="10" value="##INACTIVITYTIMEOUT##"> s</TD></TR>
			<TR><TD><A>Reconnect timeout:</A></TD><TD><input name="reconnecttimeout" type="text" size="6" maxlength="10" value="##RECEIVETIMEOUT##"> s</TD></TR>
			<TR><TD><A>Request timeout:</A></TD><TD><input name="cccreconnect" type="text" size="6" maxlength="10" value="##CCCRECONNECT##"> ms</TD></TR>
			<TR><TD><A>User:</A></TD><TD><input name="user" type="text" size="63" maxlength="63" value="##USERNAME##"></TD></TR>
			<TR><TD><A>Password:</A></TD><TD><input name="password" type="text" size="63" maxlength="63" value="##PASSWORD##"></TD></TR>
			<TR><TD><A>Version:</A></TD>
				<TD>
					<select name="cccversion">
						<option value="2.0.11"##CCCVERSIONSELECTED0##>2.0.11</option>
						<option value="2.1.1"##CCCVERSIONSELECTED1##>2.1.1</option>
						<option value="2.1.2"##CCCVERSIONSELECTED2##>2.1.2</option>
						<option value="2.1.3"##CCCVERSIONSELECTED3##>2.1.3</option>
						<option value="2.1.4"##CCCVERSIONSELECTED4##>2.1.4</option>
						<option value="2.2.0"##CCCVERSIONSELECTED5##>2.2.0</option>
						<option value="2.2.1"##CCCVERSIONSELECTED6##>2.2.1</option>
						<option value="2.3.0"##CCCVERSIONSELECTED7##>2.3.0</option>
					</select>
				</TD>
			</TR>
			<TR><TD><A>Maxhop:</A></TD><TD><input name="cccmaxhops" type="text" size="3" maxlength="2" value="##CCCMAXHOPS##"></TD></TR>
			<TR><TD><A>Mindown:</A></TD><TD><input name="cccmindown" type="text" size="3" maxlength="2" value="##CCCMINDOWN##"></TD></TR>
			<TR><TD><A>Reshare:</A></TD><TD><input name="cccreshare" type="text" size="3" maxlength="2" value="##CCCRESHARE##">				&nbsp;Global CCCam Reshare:<SPAN CLASS="global_conf" TITLE="This value is used if Reshare = -1"><A HREF="config.html?part=cccam">##RESHARE##</A></SPAN></TD></TR>
			<TR><TD><A>Want Emu:</A><input name="cccwantemu" type="hidden" value="0"></TD><TD><input name="cccwantemu" type="checkbox" value="1" ##CCCWANTEMUCHECKED##><label></label></TD></TR>
			<TR><TD><A>Keep alive:</A><input name="ccckeepalive" type="hidden" value="0"></TD><TD><input name="ccckeepalive" type="checkbox" value="1" ##KEEPALIVECHECKED##><label></label></TD></TR>
