<!--OSCam;1937066759;1.20-unstable_svn;983;-->
##TPLHEADERSHORT##
	<script type="text/javascript">
	
	var page = 'status';
	var jsonurl = 'oscamapi.json';
	var parameters = '?part=status';
	var stoppoll = 0;
	var pollintervall = 0;
	var httprefresh = '##REFRESHTIME##';

	</script>
##TPLBODY##
##TPLMENU##
<div id = "chart">
	<div id = "charthead" ></div>
	<div id = "graph" ></div>
</div>
<DIV ID="subnav">
	<UL ID="nav">
		<LI><B>##HTTPOSCAMLABEL## r9657</B></LI>
		<LI CLASS="configmenu"><A HREF="http://www.streamboard.tv/oscam-addons/timeline" TARGET="_blank">Timeline r##CS_SVN_VERSION##</A></LI>
		<LI CLASS="configmenu"><A HREF="#statusfooter">Status</A></LI>
		<LI ID="poll" CLASS="pollselect" style="display: none;">Pollintervall:<input type="text" name="pintervall" class="pintervall" value="" readonly>sec.<button id="dec">&ndash;</button><button id="inc">+</button></LI>
		<LI ID="nopoll" CLASS="pollselect" style="display: none;">httprefresh no set - polling disabled</LI>
	</UL>
</DIV>
##TPLMESSAGE##
<TABLE CLASS="status">
	<TR>
		<TH COLSPAN="2" CLASS="statuscol0">Hide/Reset</TH>
		<TH CLASS="statuscol4">Reader/User</TH>
		<TH CLASS="statuscol5">AU</TH>
		<TH CLASS="statuscol7">Address</TH>
		<TH CLASS="statuscol8">Port</TH>
		<TH CLASS="statuscol9">Protocol</TH>
		<TH CLASS="statuscol12">CAID:SRVID</TH>
		<TH CLASS="statuscol13">Current Channel</TH>
		<TH CLASS="statuscol14">LB Value/Reader</TH>
		<TH ID="onlineidle" TITLE="Online &amp; Idle Info" CLASS="statuscol15">Login*</TH>
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
##LOG_HISTORY##
<DIV CLASS="info ##DISPLAYINFO##">
##SYSTEM_INFO##
##USER_INFO##
##CACHEEX_INFO##
</DIV>
<DIV id="picolor"></DIV>
##TPLFOOTER##
