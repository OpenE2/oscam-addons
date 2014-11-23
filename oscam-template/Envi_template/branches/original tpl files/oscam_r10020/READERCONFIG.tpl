<!--OSCam;4215475250;1.20-unstable_svn;10020;-->
##TPLHEADERSHORT##
	<script type="text/javascript">
		var oscamconf = 'server';
	</script>
##TPLBODY##
##TPLMENU##
##TPLMESSAGE##
<DIV ID="subnav"><UL ID="nav"><LI CLASS="text_entitle">Edit Reader ##READERNAME##</LI></UL></DIV>
	<form action="readerconfig.html?action=execute" method="get">
		<input name="label" type="hidden" value="##READERNAME##">
		<input name="protocol" type="hidden" value="##PROTOCOL##">
		<TABLE CLASS="configreader">
			<TR><TH COLSPAN="2">Reader general settings</TH></TR>
			<TR><TD><A>Description:</A></TD><TD><input name="description" type="text" maxlength="256" value="##DESCRIPTION##"></TD></TR>
			<TR><TD><A>Enable:</A></TD><TD><input name="enable" type="hidden" value="0"><input name="enable" type="checkbox" value="1" ##ENABLED##><label></label></TD></TR>
			<TR><TD><A>Device:</A></TD><TD><input name="device" type="text" maxlength="127" value="##DEVICE##"></TD></TR>
			<TR><TD><A>Group:</A></TD><TD><input name="group" class="longer" type="text" maxlength="155" value="##GRP##"> Valid values 1-64</TD></TR>
			<TR><TD><A>Fallback:</A></TD><TD><input name="fallback" type="hidden" value="0"><input name="fallback" type="checkbox" value="1" ##FALLBACKCHECKED##><label></label></TD></TR>
			<TR><TD><A>Fallback per caid:</A></TD><TD><textarea name="fallback_percaid" rows="3" class="bt">##FALLBACK_PERCAID##</textarea></TD></TR>
##TPLREADERCONFIGLBWEIGHT##
			<TR><TD><A>Caid:</A></TD><TD><input name="caid" type="text" maxlength="160" value="##CAIDS##"></TD></TR>
			<TR><TD><A>Ident:</A></TD><TD><textarea name="ident" rows="3" class="bt">##IDENTS##</textarea></TD></TR>
			<TR><TD><A>CHID:</A></TD><TD><textarea name="chid" rows="3" class="bt">##CHIDS##</textarea></TD></TR>
			<TR><TD><A>AU disabled:</A></TD><TD><input name="audisabled" type="hidden" value="0"><input name="audisabled" type="checkbox" value="1" ##AUDISABLED##><label></label></TD></TR>
			<TR><TD><A>AU Provid:</A></TD><TD><input name="auprovid" class="short" type="text" maxlength="6" value="##AUPROVID##"></TD></TR>
			<TR><TD><A>Ratelimit ECM:</A></TD>
				<TD CLASS="invisible">
					<TABLE>
						<TR>
							<TD><input name="ratelimitecm" class="short" type="text" maxlength="5" value="##RATELIMITECM##"><label></label></TD>
							<TD><A data-p="ecmunique">ECM Unique:</A><input name="ecmunique" type="hidden" value="0"></TD><TD><input name="ecmunique" type="checkbox" value="1" ##ECMUNIQUECHECKED##><label></label></TD>
						</TR>
					</TABLE>
				</TD>
			</TR>
			<TR><TD><A>Ratelimittime:</A></TD><TD><input name="ratelimittime" class="withunit short" type="text" maxlength="5" value="##RATELIMITTIME##"> ms</TD></TR>
			<TR><TD><A>Additional ms to hold SRVID in slot:</A></TD><TD><input name="srvidholdtime" class="short" type="text" maxlength="5" value="##SRVIDHOLDTIME##"></TD></TR>
			<TR><TD><A>Cooldown Delay:</A></TD><TD><input name="cooldowndelay" class="short" type="text" maxlength="5" value="##COOLDOWNDELAY##"></TD></TR>
			<TR><TD><A>Cooldown Time:</A></TD><TD><input name="cooldowntime" class="short" type="text" maxlength="5" value="##COOLDOWNTIME##"></TD></TR>
			<TR><TD><A>ECM not found limit:</A></TD><TD><input name="ecmnotfoundlimit" class="medium" type="text" maxlength="6" value="##ECMNOTFOUNDLIMIT##"></TD></TR>
			<TR><TD><A>ECM whitelist:</A></TD><TD><textarea name="ecmwhitelist" rows="2" class="bt">##ECMWHITELIST##</textarea></TD></TR>
			<TR><TD><A>ECM HeaderWhitelist:</A></TD><TD><textarea name="ecmheaderwhitelist" rows="2" class="bt">##ECMHEADERWHITELIST##</textarea></TD></TR>
			<TR><TD><A>Drop CWs with wrong checksum:</A><input name="dropbadcws" type="hidden" value="0"></TD><TD><input name="dropbadcws" type="checkbox" value="1" ##DROPBADCWSCHECKED##><label></label></TD></TR>
			<TR><TD><A>Skip CWs checksum test:</A><input name="disablecrccws" type="hidden" value="0"></TD><TD><input name="disablecrccws" type="checkbox" value="1" ##DISABLECRCCWSCHECKED##><label></label></TD></TR>
			<TR><TD><A>Emmcache:</A></TD><TD><input name="emmcache" class="medium" type="text" maxlength="10" value="##EMMCACHE##"></TD></TR>
			<TR><TD><A data-p="saveemm-u">Saveemm:</A></TD>
				<TD CLASS="invisible">
					<TABLE>
						<TR>
							<TD><input name="saveemm-unknown" type="hidden" value="0"><input name="saveemm-unknown" type="checkbox" value="1" ##SAVEEMMUNKNOWNCHK##><label>unknown</label></TD>
							<TD><input name="saveemm-u" type="hidden" value="0"><input name="saveemm-u" type="checkbox" value="1" ##SAVEEMMUNIQCHK##><label>unique</label></TD>
							<TD><input name="saveemm-s" type="hidden" value="0"><input name="saveemm-s" type="checkbox" value="1" ##SAVEEMMSHAREDCHK##><label>shared</label></TD>
							<TD><input name="saveemm-g" type="hidden" value="0"><input name="saveemm-g" type="checkbox" value="1" ##SAVEEMMGLOBALCHK##><label>global</label></TD>
						</TR>
					</TABLE>
				</TD>
			<TR><TD><A data-p="blockemm-u">Blockemm:</A></TD>
				<TD CLASS="invisible">
					<TABLE>
						<TR>
							<TD><input name="blockemm-unknown" type="hidden" value="0"><input name="blockemm-unknown" type="checkbox" value="1" ##BLOCKEMMUNKNOWNCHK##><label>unknown</label></TD>
							<TD><input name="blockemm-u" type="hidden" value="0"><input name="blockemm-u" type="checkbox" value="1" ##BLOCKEMMUNIQCHK##><label>unique</label></TD>
							<TD><input name="blockemm-s" type="hidden" value="0"><input name="blockemm-s" type="checkbox" value="1" ##BLOCKEMMSHAREDCHK##><label>shared</label></TD>
							<TD><input name="blockemm-g" type="hidden" value="0"><input name="blockemm-g" type="checkbox" value="1" ##BLOCKEMMGLOBALCHK##><label>global</label></TD>
						</TR>
					</TABLE>
				</TD>
			<TR><TD><A>Block EMM by Len:</A></TD><TD><input name="blockemm-bylen" type="text" maxlength="256" value="##BLOCKEMMBYLEN##"></TD></TR>
##READERCONFIGSIDINS##
			<TR><TH COLSPAN="2">Reader specific settings for protocol ##PROTOCOL##</TH></TR>
##READERDEPENDINGCONFIG##
##TPLREADEREDITCACHEEXBIT##
			<TR><TD CLASS="configcolsave" COLSPAN="2"><input type="submit" name="action" value="Save" title="Save settings and reload Reader" ##BTNDISABLED##></TD></TR>
			<TR CLASS="configfirstrow"><TD></TD><TD></TD></TR>
		</TABLE>
	</form>
##TPLFOOTER##
