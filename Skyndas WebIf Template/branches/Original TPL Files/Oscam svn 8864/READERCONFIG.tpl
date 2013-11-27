<!--OSCam;547521927;1.20-unstable_svn;8864;-->
##TPLHEADER##
##TPLMENU##
##TPLMESSAGE##
	<form action="readerconfig.html?action=execute" method="get">
		<input name="label" type="hidden" value="##READERNAME##">
		<input name="protocol" type="hidden" value="##PROTOCOL##">
		<TABLE CLASS="configreader">
			<TR><TH COLSPAN="2">Edit Reader ##READERNAME##</TH></TR>
			<TR><TH>&nbsp;</TH><TH>Reader general settings</TH></TR>
			<TR><TD>##TPLHELPPREFIX##server#description##TPLHELPSUFFIX##Description:</A></TD><TD><input name="description" type="text" size="63" maxlength="256" value="##DESCRIPTION##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#enable##TPLHELPSUFFIX##Enable:</A></TD><TD><input name="enable" type="hidden" value="0"><input name="enable" type="checkbox" value="1" ##ENABLED##></TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#device##TPLHELPSUFFIX##Device:</A></TD><TD><input name="device" type="text" size="63" maxlength="127" value="##DEVICE##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#group##TPLHELPSUFFIX##Group:</A></TD><TD><input name="group" type="text" size="30" maxlength="155" value="##GRP##"> Valid values 1-64</TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#fallback##TPLHELPSUFFIX##Fallback:</A></TD><TD><input name="fallback" type="hidden" value="0"><input name="fallback" type="checkbox" value="1" ##FALLBACKCHECKED##></TD></TR>
##TPLREADERCONFIGLBWEIGHT##
			<TR><TD>##TPLHELPPREFIX##server#caid##TPLHELPSUFFIX##Caid:</A></TD><TD><input name="caid" type="text" size="63" maxlength="160" value="##CAIDS##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#ident##TPLHELPSUFFIX##Ident:</A></TD><TD><textarea name="ident" cols="58" rows="3" class="bt">##IDENTS##</textarea></TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#chid##TPLHELPSUFFIX##CHID:</A></TD><TD><textarea name="chid" cols="58" rows="3" class="bt">##CHIDS##</textarea></TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#audisabled##TPLHELPSUFFIX##AU disabled:</A></TD><TD><input name="audisabled" type="hidden" value="0"><input name="audisabled" type="checkbox" value="1" ##AUDISABLED##></TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#auprovid##TPLHELPSUFFIX##AU Provid:</A></TD><TD><input name="auprovid" type="text" size="10" maxlength="6" value="##AUPROVID##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#ratelimitecm##TPLHELPSUFFIX##Ratelimit ECM:</A></TD><TD><input name="ratelimitecm" type="text" size="5" maxlength="5" value="##RATELIMITECM##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#ecmunique##TPLHELPSUFFIX##ECM Unique:</A><input name="ecmunique" type="hidden" value="0"></TD><TD><input name="ecmunique" type="checkbox" value="1" ##ECMUNIQUECHECKED##></TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#ratelimitseconds##TPLHELPSUFFIX##Ratelimit seconds:</A></TD><TD><input name="ratelimitseconds" type="text" size="5" maxlength="5" value="##RATELIMITSECONDS##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#srvidholdseconds##TPLHELPSUFFIX##Seconds to hold SRVID in slot:</A></TD><TD><input name="srvidholdseconds" type="text" size="5" maxlength="5" value="##SRVIDHOLDSECONDS##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#cooldowndelay##TPLHELPSUFFIX##Cooldown Delay:</A></TD><TD><input name="cooldowndelay" type="text" size="5" maxlength="5" value="##COOLDOWNDELAY##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#cooldowntime##TPLHELPSUFFIX##Cooldown Time:</A></TD><TD><input name="cooldowntime" type="text" size="5" maxlength="5" value="##COOLDOWNTIME##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#ecmnotfoundlimit##TPLHELPSUFFIX##ECM not found limit:</A></TD><TD><input name="ecmnotfoundlimit" type="text" size="10" maxlength="6" value="##ECMNOTFOUNDLIMIT##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#ecmwhitelist##TPLHELPSUFFIX##ECM whitelist:</A></TD><TD><textarea name="ecmwhitelist" cols="58" rows="2" class="bt">##ECMWHITELIST##</textarea></TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#ecmheaderwhitelist##TPLHELPSUFFIX##ECM HeaderWhitelist:</A></TD><TD><textarea name="ecmheaderwhitelist" cols="58" rows="2" class="bt">##ECMHEADERWHITELIST##</textarea></TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#dropbadcws##TPLHELPSUFFIX##Drop CWs with wrong checksum:</A><input name="dropbadcws" type="hidden" value="0"></TD><TD><input name="dropbadcws" type="checkbox" value="1" ##DROPBADCWSCHECKED##></TD></TR>
            <TR><TD>##TPLHELPPREFIX##server#disablecrccws##TPLHELPSUFFIX##Skip CWs checksum test:</A><input name="disablecrccws" type="hidden" value="0"></TD><TD><input name="disablecrccws" type="checkbox" value="1" ##DISABLECRCCWSCHECKED##></TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#emmcache##TPLHELPSUFFIX##Emmcache:</A></TD><TD><input name="emmcache" type="text" size="10" maxlength="10" value="##EMMCACHE##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##server#saveemm-u##TPLHELPSUFFIX##Saveemm:</A></TD>
			<TD>
				<TABLE class="invisible">
					<TR><TD class="centered">unknown</TD><TD class="centered">unique</TD><TD class="centered">shared</TD><TD class="centered">global</TD></TR>
					<TR>
						<TD class="centered"><input name="saveemm-unknown" type="hidden" value="0"><input name="saveemm-unknown" type="checkbox" value="1" ##SAVEEMMUNKNOWNCHK##></TD>
						<TD class="centered"><input name="saveemm-u" type="hidden" value="0"><input name="saveemm-u" type="checkbox" value="1" ##SAVEEMMUNIQCHK##></TD>
						<TD class="centered"><input name="saveemm-s" type="hidden" value="0"><input name="saveemm-s" type="checkbox" value="1" ##SAVEEMMSHAREDCHK##></TD>
						<TD class="centered"><input name="saveemm-g" type="hidden" value="0"><input name="saveemm-g" type="checkbox" value="1" ##SAVEEMMGLOBALCHK##></TD>
					</TR>
				</TABLE>
			</TD>
			<TR><TD>##TPLHELPPREFIX##server#blockemm-u##TPLHELPSUFFIX##Blockemm:</A></TD>
			<TD>
				<TABLE class="invisible">
					<TR><TD class="centered">unknown</TD><TD class="centered">unique</TD><TD class="centered">shared</TD><TD class="centered">global</TD></TR>
					<TR>
						<TD class="centered"><input name="blockemm-unknown" type="hidden" value="0"><input name="blockemm-unknown" type="checkbox" value="1" ##BLOCKEMMUNKNOWNCHK##></TD>
						<TD class="centered"><input name="blockemm-u" type="hidden" value="0"><input name="blockemm-u" type="checkbox" value="1" ##BLOCKEMMUNIQCHK##></TD>
						<TD class="centered"><input name="blockemm-s" type="hidden" value="0"><input name="blockemm-s" type="checkbox" value="1" ##BLOCKEMMSHAREDCHK##></TD>
						<TD class="centered"><input name="blockemm-g" type="hidden" value="0"><input name="blockemm-g" type="checkbox" value="1" ##BLOCKEMMGLOBALCHK##></TD>
					</TR>
				</TABLE>
			</TD>
			<TR><TD>##TPLHELPPREFIX##server#blockemm-bylen##TPLHELPSUFFIX##Block EMM by Len:</A></TD><TD><input name="blockemm-bylen" type="text" size="63" maxlength="256" value="##BLOCKEMMBYLEN##"></TD></TR>
      <TR><TH>&nbsp;</TH><TH>Reader services settings</TH></TR>
      <TR><TD COLSPAN="2">
      <TABLE CLASS="invisiblelb">
				<TR>
          <TH class="withservices">##TPLHELPPREFIX##server#services##TPLHELPSUFFIX##With_Services:</A></TH>
				  <TH class="notservices">##TPLHELPPREFIX##server#services##TPLHELPSUFFIX##Not_Services:</A></TH>
				  <TH class="lbservices">##TPLHELPPREFIX##server#lb_whitelist_services##TPLHELPSUFFIX##LB_Whitelist_Services:</A></TH>
        </TR>
				<TR>
##SIDS##
				</TR>
      </TABLE>
      </TD></TR>
      <TR><TH>&nbsp;</TH><TH>Reader specific settings for protocol ##PROTOCOL##</TH></TR>
##READERDEPENDINGCONFIG##
##TPLREADEREDITCACHEEXBIT##
			<TR><TD colspan="2" align="right"><input type="submit" name="action" value="Save" ##BTNDISABLED##></TD></TR>
		</TABLE>
	</form>
	<BR><BR>
##TPLFOOTER##
