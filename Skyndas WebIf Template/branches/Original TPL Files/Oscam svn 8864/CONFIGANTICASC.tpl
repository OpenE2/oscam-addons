<!--OSCam;2832801638;1.20-unstable_svn;8864;CS_ANTICASC-->
##TPLHEADER##
##TPLMENU##
##TPLCONFIGMENU##
##TPLMESSAGE##
	<form action="config.html" method="get">
		<input name="part" type="hidden" value="anticasc">
		<input name="action" type="hidden" value="execute">
		<input name="enabled" type="hidden" value="0">
		<TABLE class="config">
			<TR><TH COLSPAN="2">Edit Anticascading Config</TH></TR>
			<TR><TD>##TPLHELPPREFIX##conf#enabled_2##TPLHELPSUFFIX##Enabled:</A></TD><TD><input name="enabled" type="checkbox" value="1" ##CHECKED##></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#numusers##TPLHELPSUFFIX##Numusers:</A></TD><TD><input name="numusers" type="text" size="5" maxlength="5" value="##NUMUSERS##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#sampletime##TPLHELPSUFFIX##Sampletime:</A></TD><TD><input name="sampletime" type="text" size="5" maxlength="5" value="##SAMPLETIME##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#samples##TPLHELPSUFFIX##Samples:</A></TD><TD><input name="samples" type="text" size="5" maxlength="5" value="##SAMPLES##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#penalty##TPLHELPSUFFIX##Penalty:</A></TD>			<TD>				<select name="penalty">
					<option value="0" ##PENALTY0##>0 - Only write to log</option>
					<option value="1" ##PENALTY1##>1 - Fake DW delayed</option>
					<option value="2" ##PENALTY2##>2 - Ban</option>
					<option value="3" ##PENALTY3##>3 - Real DW delayed</option>
				</select>
			</TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#aclogfile##TPLHELPSUFFIX##AClogfile:</A></TD><TD><input name="aclogfile" type="text" size="63" maxlength="127" value="##ACLOGFILE##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#fakedelay##TPLHELPSUFFIX##Fakedelay:</A></TD><TD><input name="fakedelay" type="text" size="5" maxlength="5" value="##FAKEDELAY##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#denysamples##TPLHELPSUFFIX##Denysamples:</A></TD><TD><input name="denysamples" type="text" size="5" maxlength="5" value="##DENYSAMPLES##"></TD></TR>
			<TR><TD colspan="2" align="right"><input type="submit" value="Save" ##BTNDISABLED##></TD></TR>
		</TABLE>
	</form>
##TPLFOOTER##
