<!--OSCam;3084431576;1.20-unstable_svn;8864;-->
##TPLHEADER##
##TPLMENU##
##TPLCONFIGMENU##
##TPLMESSAGE##
	<form action="config.html" method="get">
		<input name="part" type="hidden" value="cache">
		<input name="action" type="hidden" value="execute">
		<TABLE class="config">
			<TR><TH COLSPAN="2">Global Cache Settings</TH></TR>
			<TR><TD>##TPLHELPPREFIX##conf#delay##TPLHELPSUFFIX##Delay:</A></TD><TD><input name="delay" type="text" size="5" maxlength="5" value="##CACHEDELAY##"> ms delaying answers from cache</TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#max_time##TPLHELPSUFFIX##Max time:</A></TD><TD><input name="max_time" type="text" size="5" maxlength="5" value="##MAXCACHETIME##"> s keep ECMs in cache</TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#max_count##TPLHELPSUFFIX##Max count:</A></TD><TD><input name="max_count" type="text" size="5" maxlength="5" value="##MAXCACHECOUNT##"> nr of ECMS to keep in cache</TD></TR>
##TPLCONFIGCACHEEXCSP##
##TPLCONFIGCWCYCLE##
			<TR><TD colspan="2" align="right"><input type="submit" value="Save" ##BTNDISABLED##></TD></TR>
		</TABLE>
	</form>
##TPLFOOTER##
