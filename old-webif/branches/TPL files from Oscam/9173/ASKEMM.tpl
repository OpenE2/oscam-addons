<!--OSCam;383220258;1.20-unstable_svn;9173;-->
##TPLHEADER##
##TPLMENU##
##TPLMESSAGE##
	<form action="emm_running.html" method="get"><input type="hidden" name="label" value="##READER##">
		<TABLE CLASS="stats upspace">
			<TR><TH COLSPAN="2">Selected reader : ##READER##</TH></TR>
			<TR><TD>CAID:</TD><TD><input name="emmcaid" type="text" size="4" maxlength="4" value="##CAID##" ##READONLY##></TD></TR>
			<TR><TD>Single EMM to write:</TD><TD><textarea name="ep" cols="52" rows="11" maxlength="1024"></textarea></TD></TR>
			<TR><TD>File path with EMMs:</TD><TD><input name="emmfile" type="text" size="70" maxlength="256"></TD></TR>
			<TR><TD COLSPAN="2" class="centered"><input name="action" type="submit" value="Launch" title="Write EMM to this Reader" ##BTNDISABLED##></TD></TR>
		</TABLE>
	</form>
##TPLFOOTER##
