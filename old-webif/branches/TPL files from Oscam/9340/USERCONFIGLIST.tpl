<!--OSCam;3768212870;1.20-unstable_svn;9340;-->
##TPLHEADER##
##TPLMENU##
##TPLMESSAGE##
<DIV ID="subnav">
	<UL ID="nav" CLASS="configmenu">
		<LI CLASS="configmenu"><A HREF="userconfig.html?part=adduser">Add User</A></LI>
		<LI CLASS="configmenu"><A HREF="userconfig.html?action=reinit">Reinit User DB</A></LI>
		<LI CLASS="configmenu"><A HREF="userconfig.html?action=resetalluserstats">Reset Userstats</A></LI>
		<LI CLASS="configmenu"><A TARGET="_blank" HREF="graph.svg?type=users&amp;hidelabels=1">Show Graphs</A></LI>
	</UL>
</DIV>
	<TABLE CLASS="users">
		<TR>
			<TH COLSPAN="7"></TH>
			<TH COLSPAN="7">ECM</TH>
##TPLUSERCWCYCLE##
			<TH COLSPAN="2">EMM</TH>
##TPLUSERANTICASC##
			<TH COLSPAN="5"></TH>
		</TR>
		<TR>
			<TH>On/Off</TH>
			<TH>Label</TH>
			<TH TITLE="Idle & Sleep Info">Status<BR>On Channel*</TH>
			<TH>Address</TH>
			<TH>Protocol</TH>
			<TH>Groups</TH>
			<TH>Last Channel</TH>
			<TH TITLE="Last ECM Time">LTIME</TH>
			<TH TITLE="Delivered ECM with status OK">OK</TH>
			<TH TITLE="Delivered ECM with status not OK">NOK</TH>
			<TH TITLE="Ignored ECM by filters, part of NOK">IGN</TH>
			<TH TITLE="Timeout ECM, part of NOK">TOUT</TH>
			<TH TITLE="Delivered ECM from cache, part of OK">CACHE</TH>
			<TH TITLE="Delivered ECM from tunneled, part of OK">TUN</TH>
##TPLCWCYCLETHV##
			<TH TITLE="Valid EMM delivered">OK</TH>
			<TH TITLE="Invalid EMM delivered">NOK</TH>
##TPLCWANTICASCTHV##
			<TH TITLE="Sum of ECM's in last 60s">ECMs(60s)</TH>
			<TH COLSPAN="3" CLASS="centered">Action</TH>
		</TR>
##USERCONFIGS##
##NEWUSERFORM##
	</TABLE>
	<SPAN CLASS="user_totals_headline">Totals for the server:</SPAN>
	<TABLE CLASS="user_totals">
		<TR>
			<TH TITLE="Total users">Total User</TH>
			<TH TITLE="Total disabled users">Disabled User</TH>
			<TH TITLE="Total expired users">Expired User</TH>
			<TH TITLE="Total active users">Active User</TH>
			<TH TITLE="Connected users">Connected User</TH>
			<TH TITLE="Online users requesting ecms">Online User</TH>
		</TR>
		<TR>
			<TD CLASS="centered">##TOTAL_USERS##</TD>
			<TD CLASS="centered">##TOTAL_DISABLED##</TD>
			<TD CLASS="centered">##TOTAL_EXPIRED##</TD>
			<TD CLASS="centered">##TOTAL_ACTIVE##</TD>
			<TD CLASS="centered">##TOTAL_CONNECTED##</TD>
			<TD CLASS="centered">##TOTAL_ONLINE##</TD>
		</TR>
	</TABLE>
	<TABLE CLASS="ECM_totals">
		<TR>
			<TH TITLE="Sum of all ECM's in last 60s">ECMs(60s) ALL</TH>
			<TH TITLE="SUM of all ECM's">ECMs ALL</TH>
			<TH TITLE="Delivered ECM with status OK">ECMs OK</TH>
			<TH TITLE="Delivered ECM from cache, part of OK">CACHE 1,2,3</TH>
			<TH TITLE="Delivered ECM from tunneled, part of OK">ECMs TUN (OK/CACHE)</TH>
			<TH TITLE="Delivered ECM with status not OK">ECMs NOK</TH>
			<TH TITLE="Ignored ECM by filters, part of NOK">ECMs IGN</TH>
			<TH TITLE="Timeout ECM, part of NOK">ECMs TOUT</TH>
			<TH>Action</TH>
		</TR>
		<TR>
			<TD CLASS="centered">##TOTAL_ECM_MIN##</TD>
			<TD CLASS="centered">##TOTAL_CW##</TD>
			<TD CLASS="centered">##TOTAL_CWOK## (##REL_CWOK##%)</TD>
			<TD CLASS="centered">##TOTAL_CWCACHE## (##REL_CWCACHE##%)</TD>
			<TD CLASS="centered">##TOTAL_CWTUN## (##REL_CWTUN##%)</TD>
			<TD CLASS="centered">##TOTAL_CWNOK## (##REL_CWNOK##%)</TD>
			<TD CLASS="centered">##TOTAL_CWIGN## (##REL_CWIGN##%)</TD>
			<TD CLASS="centered">##TOTAL_CWTOUT## (##REL_CWTOUT##%)</TD>
			<TD CLASS="centered"><A HREF="userconfig.html?action=resetserverstats" TITLE="Reset statistics for server"><IMG CLASS="icon" SRC="image?i=ICRES" ALT="Reset Server Stats"></A></TD>
		</TR>
	</TABLE>
	<TABLE CLASS="ECM_totals">
		<TR>
			<TH TITLE="Delivered ECM with POS Status">ECM's Positiv</TH>
			<TH TITLE="Delivered ECM with NEG Status">ECM's Negativ</TH>
		</TR>
		<TR>
			<TH TITLE="Delivered ECM with status OK/CACHE">READERs / CACHE 1,2,3</TH>
			<TH TITLE="Delivered ECM with status NOK/IGN/TOUT">NOK / IGN / TOUT</TH>
		</TR>
		<TR>
			<TD CLASS="centered">##REL_CWPOSOK##% / ##REL_CWPOSCACHE##%</TD>
			<TD CLASS="centered">##REL_CWNEGNOK##% / ##REL_CWNEGIGN##% / ##REL_CWNEGTOUT##%</TD>
		</TR>
		<TR>
			<TD CLASS="centered">##TOTAL_CWPOS## (##REL_CWPOS##%)</TD>
			<TD CLASS="centered">##TOTAL_CWNEG## (##REL_CWNEG##%)</TD>
		</TR>
	</TABLE>
##TPLFOOTER##