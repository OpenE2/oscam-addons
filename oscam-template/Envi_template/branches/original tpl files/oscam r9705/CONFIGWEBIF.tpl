<!--OSCam;861236975;1.20-unstable_svn;9705;-->
		<input name="part" type="hidden" value="webif">
		<input name="http_prepend_embedded_css" type="hidden" value="0">
		<input name="httpshowpicons" type="hidden" value="0">
		<input name="httphideidleclients" type="hidden" value="0">
		<TABLE CLASS="config">
			<TR><TH COLSPAN="2">Edit WebIf Config</TH></TR>
			<TR><TD><A>Http port:</A></TD><TD><input name="httpport" type="text" size="6" maxlength="6" value="##HTTPPORT##"></TD></TR>
			<TR><TD><A>Serverip:</A></TD><TD><input name="serverip" type="text" size="15" maxlength="15" value="##SERVERIP##"></TD></TR>
			<TR><TD><A>Http user:</A></TD><TD><input name="httpuser" type="text" size="63" maxlength="64" value="##HTTPUSER##"></TD></TR>
			<TR><TD><A>Http pwd:</A></TD><TD><input name="httppwd" type="text" size="63" maxlength="64" value="##HTTPPASSWORD##"></TD></TR>
			<TR><TD><A>OSCam Label:</A></TD><TD><input name="httposcamlabel" type="text" size="63" maxlength="64" value="##HTTPOSCAMLABEL##"></TD></TR>
			<TR><TD><A>Refresh:</A></TD><TD>Http: <input name="httprefresh" class="withunit" type="text" size="5" maxlength="5" value="##HTTPREFRESH##"> s &nbsp;&nbsp;Poll (initial refresh): <input name="httppollrefresh" class="withunit" type="text" size="5" maxlength="2" value="##HTTPPOLLREFRESH##"> s</TD></TR>
			<TR><TD><A>Http allowed:</A></TD><TD><input name="httpallowed" type="text" size="63" maxlength="200" value="##HTTPALLOW##"></TD></TR>
			<TR><TD><A>Http Help Language (en|de|fr|it):</A></TD><TD><input name="httphelplang" type="text" size="3" maxlength="2" value="##HTTPHELPLANG##"></TD></TR>
			<TR><TD><A>Http dyndns:</A></TD><TD><input name="httpdyndns" type="text" size="63" maxlength="200" value="##HTTPDYNDNS##"></TD></TR>
			<TR><TD><A>Au low:</A></TD><TD><input name="aulow" class="withunit" type="text" size="5" maxlength="5" value="##AULOW##"> min</TD></TR>
			<TR><TD><A>Http save full config:</A></TD><TD><input name="httpsavefullcfg" value="0" type="hidden"><input name="httpsavefullcfg" type="checkbox" value="1" ##HTTPSAVEFULLSELECT##><label></label></TD></TR>
			<TR><TH COLSPAN="2">Css style settings</TH></TR>
			<TR><TD><A>Http prepend embedded css:</A></TD><TD><input name="http_prepend_embedded_css" value="0" type="hidden"><input name="http_prepend_embedded_css" type="checkbox" value="1" ##HTTPPREPENDEMBEDDEDCSS##><label></label></TD></TR>
			<TR><TD><A>Http css:</A></TD>
 				<TD>
					<select name="httpcss">
##CSSOPTIONS##
					</select>
				</TD>
			</TR>
			<TR><TH COLSPAN="2">Script settings</TH></TR>
			<TR><TD><A>Http javascript:</A></TD><TD><input name="httpjscript" type="text" size="63" maxlength="127" value="##HTTPJSCRIPT##"></TD></TR>
			<TR><TD><A>Http script:</A></TD><TD><input name="httpscript" type="text" size="63" maxlength="127" value="##HTTPSCRIPT##"></TD></TR>
##CONFIGWEBIFJQUERY##
			<TR><TH COLSPAN="2">Picons settings</TH></TR>
			<TR><TD><A>Http Show Picons:</A></TD>
				<TD>
					<TABLE CLASS="invisible">
						<TR>
							<TD><input name="httpshowpicons" value="0" type="hidden"><input name="httpshowpicons" type="checkbox" value="1" ##SHOWPICONSCHECKED##><label></label></TD>
							<TD><A data-p="httppiconsize">Height:</A>&nbsp;&nbsp;<input name="httppiconsize" class="withunit" type="text" size="5" maxlength="5" value="##HTTPPICONSIZE##"> px</TD>
						</TR>
					</TABLE>
				</TD>
			</TR>
			<TR><TH COLSPAN="2">Show/Hide in Status</TH></TR>
			<TR><TD><A>Http Hide Idle Clients:</A></TD>
				<TD>
					<TABLE CLASS="invisible">
						<TR>
							<TD><input name="httphideidleclients" value="0" type="hidden"><input name="httphideidleclients" type="checkbox" value="1" ##CHECKED##><label></label></TD>
							<TD><A data-p="hideclient_to">Hide client to:</A>&nbsp;&nbsp;<input name="hideclient_to" class="withunit" type="text" size="5" maxlength="5" value="##HIDECLIENTTO##"> s</TD>
						</TR>
					</TABLE>
				</TD>
			</TR>
			<TR><TD><A>Http Hide Type:</A></TD><TD><input name="httphidetype" type="text" size="10" maxlength="10" value="##HTTPHIDETYPE##"></TD></TR>
			<TR><TD><A>Show in STATUS:</A></TD>
				<TD>
					<TABLE CLASS="invisible">
						<TR>
							<TD><input name="http_status_log" type="hidden" value="0"><input name="http_status_log" type="checkbox" value="1" ##SHOWLOGCHECKED##><label>Log</label></TD>
							<TD><input name="httpshowmeminfo" type="hidden" value="0"><input name="httpshowmeminfo" type="checkbox" value="1" ##SHOWMEMINFOCHECKED##><label>Memory info</label></TD>
							<TD><input name="httpshowloadinfo" type="hidden" value="0"><input name="httpshowloadinfo" type="checkbox" value="1" ##SHOWLOADINFOCHECKED##><label>Load info</label></TD>
							<TD><input name="httpshowuserinfo" type="hidden" value="0"><input name="httpshowuserinfo" type="checkbox" value="1" ##SHOWUSERINFOCHECKED##><label>Users info</label></TD>
							<TD><input name="httpshowecminfo" type="hidden" value="0"><input name="httpshowecminfo" type="checkbox" value="1" ##SHOWECMINFOCHECKED##><label>ECM info</label></TD>
##TPLSHOWCACHEEXINFO##
						</TR>
					</TABLE>
				</TD>
			</TR>
			<TR><TH COLSPAN="2">Template settings</TH></TR>
			<TR><TD><A>Http tpl:</A></TD><TD><input name="httptpl" type="text" size="63" maxlength="127" value="##HTTPTPL##"></TD></TR>
##TPLHTTPFORCESSLV3##