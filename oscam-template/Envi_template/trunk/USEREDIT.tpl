<!--OSCam;315789389;1.20-unstable_svn;9705;-->
##TPLHEADERSHORT##
<script type="text/javascript">
	
	var oscamconf = 'user';

</script>
##TPLBODY##
##TPLMENU##
##TPLMESSAGE##
<DIV ID="subnav"><UL ID="nav"><LI CLASS="text_entitle">Edit User ##USERNAME##</LI></UL></DIV>
	<form action="user_edit.html" method="get">
		<input name="user" type="hidden" value="##USERNAME##">
		<TABLE CLASS="configuser">
			<TR><TH COLSPAN="2">User general settings</TH></TR>
			<TR><TD><A>Password:</A></TD><TD><input name="pwd" type="text" size="63" maxlength="63" value="##PASSWORD##"></TD></TR>
			<TR><TD><A>Description:</A></TD><TD><input name="description" type="text" size="63" maxlength="256" value="##DESCRIPTION##"></TD></TR>
			<TR><TD><A>Disabled:</A></TD><TD><input name="disabled" type="hidden" value="0"><input name="disabled" type="checkbox" value="1" ##DISABLEDCHECKED##><label></label></TD></TR>
			<TR><TD><A>Exp. Date:</A></TD><TD><input name="expdate" type="text" size="30" maxlength="30" value="##EXPDATE##"></TD></TR>
			<TR><TD><A>Failban:</A></TD><TD><input name="failban" type="text" size="2" maxlength="1" value="##FAILBAN##"></TD></TR>
			<TR><TD><A>Allowed Timeframe:</A></TD><TD><input name="allowedtimeframe" type="text" size="15" maxlength="11" value="##ALLOWEDTIMEFRAME##">&nbsp;(hh:mm-hh:mm)</TD></TR>
			<TR><TD><A>Allowed Protocols:</A></TD><TD><input name="allowedprotocols" type="text" size="63" maxlength="60" value="##ALLOWEDPROTOCOLS##"></TD></TR>
			<TR><TD><A>Group:</A></TD><TD><input name="group" type="text" size="30" maxlength="155" value="##GROUPS##"> Valid values 1-64</TD></TR>
			<TR><TD><A>Hostname:</A></TD><TD><input name="hostname" type="text" size="63" maxlength="63" value="##DYNDNS##"></TD></TR>
			<TR><TD><A>Uniq:</A></TD>
				<TD>
					<select name="uniq">
						<option value="0" ##UNIQSELECTED0##>0 - none</option>
						<option value="1" ##UNIQSELECTED1##>1 - strict first</option>
						<option value="2" ##UNIQSELECTED2##>2 - per IP</option>
						<option value="3" ##UNIQSELECTED3##>3 - strict last</option>
						<option value="4" ##UNIQSELECTED4##>4 - per IP last</option>
					</select>
				</TD>
			</TR>
			<TR><TD><A>Sleep:</A></TD><TD><input name="sleep" type="text" size="4" maxlength="4" value="##SLEEP##"></TD></TR>
##TPLUSEREDITMONLEVEL##
			<TR><TD><A>AU:</A></TD><TD><input name="au" type="text" size="63" maxlength="63" value="##AUREADER##"></TD></TR>
			<TR><TD><A>CAID:</A></TD><TD><input name="caid" type="text" size="63" maxlength="160" value="##CAIDS##"></TD></TR>
			<TR><TD><A>Ident:</A></TD><TD><textarea name="ident" cols="58" rows="3" class="bt">##IDENTS##</textarea></TD></TR>
			<TR><TD><A>CHID:</A></TD><TD><textarea name="chid" cols="58" rows="3" class="bt">##CHIDS##</textarea></TD></TR>
			<TR><TD><A>Class:</A></TD><TD><input name="class" type="text" size="63" maxlength="150" value="##CLASS##"></TD></TR>
			<TR><TD><A>Betatunnel:</A></TD><TD><textarea name="betatunnel" cols="58" rows="3" class="bt">##BETATUNNELS##</textarea></TD></TR>
			<TR><TD><A>Suppresscmd08:</A></TD><TD><select name="suppresscmd08"><option value="0">CMD08 active</option><option value="1" ##SUPPRESSCMD08##>CMD08 suppressed</option></select></TD></TR>
			<TR><TD><A>Sleepsend:</A></TD><TD><input name="sleepsend" type="text" size="3" maxlength="3" value="##SLEEPSEND##"> 0 or 255</TD></TR>
			<TR><TD><A>User Max Idle:</A></TD><TD><input name="umaxidle" type="text" size="3" maxlength="3" value="##UMAXIDLE##"> s to disconnect idle users</TD></TR>
			<TR><TD><A>EMM Reassembly:</A></TD>
				<TD>
					<select name="emmreassembly">
						<option value="0" ##EMMRSELECTED0##>0 - disabled</option>
						<option value="1" ##EMMRSELECTED1##>1 - enabled for DVBAPI</option>
						<option value="2" ##EMMRSELECTED2##>2 - enabled (default)</option>
					</select>
				</TD>
			</TR>
##USEREDITSIDINS##
##TPLUSEREDITANTICASC##
##TPLUSEREDITCCCAM##
			<TR><TD><A>Keepalive:</A></TD><TD><input name="keepalive" type="hidden" value="0"><input name="keepalive" type="checkbox" value="1" ##KEEPALIVE##><label></label></TD></TR>
##TPLUSEREDITCACHEEXBIT##
			<TR>
				<TD CLASS="centered"><input type="submit" name="action" value="Save" title="Save settings and reload users" ##BTNDISABLED##></TD>
				<TD CLASS="centered"><input name="newuser" type="text" size="20" maxlength="20" title="Enter new username if you want to clone this user">&nbsp;&nbsp;&nbsp;<input type="submit" name="action" value="Save As" title="Save as new user and reload users" ##BTNDISABLED##></TD>
			</TR>
		</TABLE>
	</form>
##TPLFOOTER##
