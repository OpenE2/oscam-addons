<!--OSCam;3723609185;1.20-unstable_svn;9365;-->
##TPLHEADER##
##TPLMENU##
<DIV ID="subnav">
	<UL ID="nav">
		<li class="configmenu"><a href="http://www.streamboard.tv/oscam/timeline" target="_blank"><b>OSCAM r##CS_SVN_VERSION##</b></a></li>
		<li class="configmenu"><a href="status.html">Refresh</a></li>
	</UL>
</DIV>
<DIV CLASS="filterform">
	<form action="status.html" method="get">
		<select name="hideidle">
			<option value="0" ##HIDEIDLECLIENTSSELECTED0##>Show idle clients</option>
			<option value="1" ##HIDEIDLECLIENTSSELECTED1##>Hide idle clients</option>
			<option value="2">Show hidden clients</option>
		</select>
		<input type="submit" value="Update">
	</form>
</DIV>
	<TABLE CLASS="status">
		<TR>
			<TH COLSPAN="2" CLASS="statuscol0">hide/reset</TH>
			<TH CLASS="statuscol4">Label</TH>
			<TH CLASS="statuscol5">AU</TH>
			<TH CLASS="statuscol7">Address</TH>
			<TH CLASS="statuscol8">Port</TH>
			<TH CLASS="statuscol9">Protocol</TH>
			<TH CLASS="statuscol12">CAID:SRVID</TH>
			<TH CLASS="statuscol13">Current Channel</TH>
			<TH CLASS="statuscol14">LB Value/ Reader</TH>
			<TH TITLE="Online & Idle Info" CLASS="statuscol15">Login*</TH>
			<TH CLASS="statuscol16">Status</TH>
		</TR>
##SERVERSTATUS##
##READERHEADLINE##
##READERSTATUS##
##PROXYHEADLINE##
##PROXYSTATUS##
##CLIENTHEADLINE##
##CLIENTSTATUS##
	</TABLE>
	<DIV CLASS="log">
##LOGHISTORY##
	</DIV>
##SDEBUG##
    <DIV CLASS="info ##DISPLAYINFO##">
##SYSTEM_INFO##
##USER_INFO##
##CACHEEX_INFO##
    </DIV>
##TPLFOOTER##