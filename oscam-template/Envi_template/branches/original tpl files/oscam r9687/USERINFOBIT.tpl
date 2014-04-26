<!--OSCam;949205298;1.20-unstable_svn;9687;-->
<TABLE CLASS="statususerinfo ##DISPLAYUSERINFO##">
	<TR><TH COLSPAN="7" CLASS="nameinfo">Users info</TH></TR>
	<TR>
		<TH>Users</TH>
		<TD CLASS="centered"><B>Total:</B>&nbsp;<span id="total_users">##TOTAL_USERS##</span></TD>
		<TD CLASS="centered"><B>Active:</B>&nbsp;<span id="total_active">##TOTAL_ACTIVE##</span></TD>
		<TD CLASS="centered"><B>Connected:</B>&nbsp;<span id="total_connected">##TOTAL_CONNECTED##</span></TD>
		<TD CLASS="centered"><B>Online:</B>&nbsp;<span id="total_online">##TOTAL_ONLINE##</span></TD>
		<TD CLASS="centered"><B>Disabled:</B>&nbsp;<span id="total_disabled">##TOTAL_DISABLED##</span></TD>
		<TD CLASS="centered"><B>Expired:</B>&nbsp;<span id="total_expired">##TOTAL_EXPIRED##</span></TD>
	</TR>
</TABLE>
<TABLE CLASS="statususerinfo ##DISPLAYECMINFO##">
	<TR>
		<TH COLSPAN="8" CLASS="nameinfo">Total Ecm Info</TH>
	</TR>
	<TR>
		<TH TITLE="Delivered ECM with status OK">OK incl. TUN</TH>
		<TH TITLE="Delivered ECM from cache, part of OK">CACHE 1,2,3</TH>
		<TH TITLE="Delivered ECM with status not OK">NOK</TH>
		<TH TITLE="Timeout ECM, part of NOK">TOUT</TH>
		<TH TITLE="Ignored ECM by filters, Excluded from calculation">Ignored</TH>
		<TH TITLE="Sum of all ECM's in last 60s">last(60s)</TH>
		<TH TITLE="SUM of all ECM's">ALL</TH>
	</TR>
	<TR>
		<TD CLASS="centered"><span id="total_cwok">##TOTAL_CWOK##</span> (<span id="rel_cwok">##REL_CWOK##</span>%)</TD>
		<TD CLASS="centered"><span id="total_cwcache">##TOTAL_CWCACHE##</span> (<span id="rel_cwcache">##REL_CWCACHE##</span>%)</TD>
		<TD CLASS="centered"><span id="total_cwnok">##TOTAL_CWNOK##</span> (<span id="rel_cwnok">##REL_CWNOK##</span>%)</TD>
		<TD CLASS="centered"><span id="total_cwtout">##TOTAL_CWTOUT##</span> (<span id="rel_cwtout">##REL_CWTOUT##</span>%)</TD>
		<TD CLASS="centered"><span id="total_cwign">##TOTAL_CWIGN##</span></TD>
		<TD CLASS="centered"><span id="total_ecm_min">##TOTAL_ECM_MIN##</span></TD>
		<TD CLASS="centered"><span id="total_cw">##TOTAL_CW##</span></TD>
	</TR>
	<TR>
		<TD CLASS="centered" COLSPAN="2"><B>Total OK:</B>&nbsp;<span id="total_cwpos">##TOTAL_CWPOS##</span> (<span id="rel_cwpos">##REL_CWPOS##</span>%)</TD>
		<TD CLASS="centered" COLSPAN="2"><B>Total NOK:</B>&nbsp;<span id="total_cwneg">##TOTAL_CWNEG##</span> (<span id="rel_cwneg">##REL_CWNEG##</span>%)</TD>
		<TD CLASS="centered" COLSPAN="2"><B>Reset ECM Statistics:</B></TD>
		<TD CLASS="centered"><A HREF="status.html?action=resetserverstats" TITLE="Reset statistics for server"><IMG CLASS="icon" SRC="image?i=ICRES" ALT="Reset Server Stats"></A></TD>
	</TR>
</TABLE>