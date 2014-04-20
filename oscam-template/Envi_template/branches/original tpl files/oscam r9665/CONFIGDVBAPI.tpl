<!--OSCam;1036850912;1.20-unstable_svn;9665;HAVE_DVBAPI-->
##TPLHEADER##
##TPLMENU##
##TPLCONFIGMENU##
##TPLMESSAGE##
<form action="config.html" method="get">
	<input name="part" type="hidden" value="dvbapi">
	<input name="action" type="hidden" value="execute">
	<input name="enabled" type="hidden" value="0">
	<input name="au" type="hidden" value="0">
	<TABLE CLASS="config">
		<TR><TH COLSPAN="2">Edit DVB Api Config</TH></TR>
		<TR><TD>##TPLHELPPREFIX##conf#enabled##TPLHELPSUFFIX##Enabled:</A></TD><TD><input name="enabled" type="checkbox" value="1" ##ENABLEDCHECKED##>
		<TR><TD>##TPLHELPPREFIX##conf#au##TPLHELPSUFFIX##AU:</A></TD><TD><input name="au" type="checkbox" value="1" ##AUCHECKED##>
		<TR><TD>##TPLHELPPREFIX##conf#boxtype##TPLHELPSUFFIX##Boxtype:</A></TD><TD><select name="boxtype">##BOXTYPE##</select></TD></TR>
		<TR><TD>##TPLHELPPREFIX##conf#user_2##TPLHELPSUFFIX##User:</A></TD><TD><input name="user" type="text" size="63" maxlength="63" value="##USERNAME##"></TD></TR>
		<TR><TD>##TPLHELPPREFIX##conf#pmt_mode##TPLHELPSUFFIX##PMT Mode:</A></TD>
			<TD>
				<select name="pmt_mode">
					<option value="0" ##PMTMODESELECTED0##>0 - use camd.socket and PMT file</option>
					<option value="1" ##PMTMODESELECTED1##>1 - disable reading PMT file</option>
					<option value="2" ##PMTMODESELECTED2##>2 - disable camd.socket</option>
					<option value="3" ##PMTMODESELECTED3##>3 - read PMT file on startup only</option>
					<option value="4" ##PMTMODESELECTED4##>4 - do not use signal handler to monitor /tmp</option>
					<option value="5" ##PMTMODESELECTED5##>5 - do not use signal handler to monitor /tmp &amp; disable camd.socket</option>
					<option value="6" ##PMTMODESELECTED6##>6 - use CA PMT server</option>
				</select>
			</TD>
		</TR>
		<TR><TD>##TPLHELPPREFIX##conf#request_mode##TPLHELPSUFFIX##Request Mode:</A></TD>
			<TD>
				<select name="request_mode">
					<option value="0" ##REQMODESELECTED0##>0 - try all possible CAIDs one by one</option>
					<option value="1" ##REQMODESELECTED1##>1 - try all CAIDs simultaneously</option>
				</select>
			</TD>
		</TR>
		<TR><TD>##TPLHELPPREFIX##conf#listen_port##TPLHELPSUFFIX##Listen port:</A></TD><TD><input name="listen_port" type="text" size="5" maxlength="5" value="##LISTENPORT##"> TCP port to listen instead of camd.socket</TD></TR>
		<TR><TD>##TPLHELPPREFIX##conf#delayer##TPLHELPSUFFIX##Delayer:</A></TD><TD><input name="delayer" type="text" size="5" maxlength="4" value="##DELAYER##"> ms</TD></TR>
		<TR><TD COLSPAN="2"><input type="submit" value="Save" title="Save settings" ##BTNDISABLED##></TD></TR>
	</TABLE>
</form>
##TPLFOOTER##