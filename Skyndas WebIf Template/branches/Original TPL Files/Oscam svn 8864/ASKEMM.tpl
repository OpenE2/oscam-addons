<!--OSCam;1090643874;1.20-unstable_svn;8864;-->
##TPLHEADER##
##TPLMENU##
##TPLMESSAGE##
	<BR><BR>
	<FORM action="emm_running.html" method="get"><INPUT TYPE="hidden" NAME="label" VALUE="##READER##">
		<TABLE CLASS="stats">
			<TR><TH colspan="2">Selected reader : ##READER##</TH></TR>
			<TR><TD>CAID:</TD><TD><input name="emmcaid" type="text" size="4" maxlength="4" value="##CAID##" ##READONLY##></TD></TR>
			<TR><TD>Single EMM to write:</TD><TD><textarea name="ep" cols="80" rows="7" maxlength="1024"></textarea></TD></TR>
			<TR><TD>File path with EMMs:</TD><TD><input name="emmfile" type="text" size="70" maxlength="256"></TD></TR>
			<TR><TD colspan="2" class="centered"><input name="action" type="submit" value="Launch" ##BTNDISABLED##></TD></TR>
		</TABLE>
	</FORM>
##TPLFOOTER##
