<!--OSCam;2948401739;1.20-unstable_svn;9705;MODULE_CCCSHARE-->
		<input name="part" type="hidden" value="cccam">
		<TABLE CLASS="config">
			<TR><TH COLSPAN="2">Edit Cccam Config</TH></TR>
			<TR><TD><A data-p="port_8">Port:</A></TD><TD><input name="port" type="text" size="16" maxlength="128" value="##PORT##"></TD></TR>
			<TR><TD><A data-p="serverip_10">Serverip:</A></TD><TD><input name="serverip" type="text" size="15" maxlength="15" value="##SERVERIP##"></TD></TR>
			<TR><TD><A>Reshare:</A></TD><TD><input name="reshare" type="text" size="2" maxlength="2" value="##RESHARE##"> -1 no reshare or lowest value off cccreshare reader account</TD></TR>
			<TR><TD><A>Ignore reshare:</A></TD>
				<TD>			
					<select name="ignorereshare">
						<option value="0" ##IGNRSHRSELECTED0##>0 - Use reshare level of Server</option>
						<option value="1" ##IGNRSHRSELECTED1##>1 - Use reshare level of Reader or User</option>
					</select>
				</TD>
			</TR>
			<TR><TD><A>Forward origin card:</A></TD>
				<TD>
					<input name="forward_origin_card" value="0" type="hidden"><input name="forward_origin_card" value="1" type="checkbox" ##FORWARDORIGINCARD##><label></label>
				</TD>
			</TR>
			<TR><TD><A>Stealth mode:</A></TD>
				<TD>
					<input name="stealth" value="0" type="hidden"><input name="stealth" value="1" type="checkbox" ##STEALTH##><label></label>
				</TD>
			</TR>
			<TR><TD><A>Node Id:</A></TD><TD><input name="nodeid" type="text" size="18" maxlength="16" value="##NODEID##"></TD></TR>
			<TR><TD><A>Keep clients connected:</A></TD>
				<TD>
					<input name="keepconnected" value="0" type="hidden"><input name="keepconnected" value="1" type="checkbox" ##KEEPCONNECTED##><label></label>
				</TD>
			</TR>
			<TR><TD><A>Version:</A></TD>
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
			<TR><TD><A>Update Interval:</A></TD><TD><input name="updateinterval" class="withunit" type="text" size="5" maxlength="4" value="##UPDATEINTERVAL##"> s</TD></TR>
			<TR><TD><A>Receive timeout:</A></TD><TD><input name="recv_timeout" class="withunit" type="text" size="5" maxlength="5" value="##RECV_TIMEOUT##"> ms</TD></TR>
			<TR><TD><A>Minimize cards:</A></TD>
				<TD>
					<select name="minimizecards">
						<option value="0" ##MINIMIZECARDSELECTED0##>0 - legacy (default)</option>
						<option value="1" ##MINIMIZECARDSELECTED1##>1 - smallest hop</option>
						<option value="2" ##MINIMIZECARDSELECTED2##>2 - via caid</option>
					</select>
				</TD>
			</TR>
			<TR><TD><A>Reshare mode:</A></TD>
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
