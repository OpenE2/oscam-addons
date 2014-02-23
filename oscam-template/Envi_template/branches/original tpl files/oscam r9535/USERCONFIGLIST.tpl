<!--OSCam;2023520734;1.20-unstable_svn;9535;-->
##TPLHEADER##
##TPLMENU##
##TPLMESSAGE##
	<DIV ID="subnav">
		<UL ID="nav">
			<LI CLASS="configmenu"><A HREF="#" onclick="adduser();">Add User</A></LI>
			<LI CLASS="configmenu"><A HREF="userconfig.html?action=reinit">Reinit User DB</A></LI>
			<LI CLASS="configmenu"><A HREF="userconfig.html?action=resetalluserstats">Reset Userstats</A></LI>
			<LI CLASS="configmenu"><A TARGET="_blank" HREF="graph.svg?type=users&amp;hidelabels=1">Show Graphs</A></LI>
		</UL>
	</DIV>
	<DIV ID="newuser">
		<TABLE CLASS="users">
			<TR><form action="user_edit.html" method="get"><TH>New User: <input name="user" type="text"><input type="submit" value="Add User"></TH></form></TR>
		</TABLE>
	</DIV>
	<DIV ID="searchTable">
		<TABLE CLASS="users">
			<TR><TH>Search: <input type="text" id="searchTerm" class="search_box" onkeyup="doSearch()" onClick="cdpause()" onBlur="initDoc()" /></TH></TR>
		</TABLE>
	</DIV>
	<TABLE ID="dataTable" CLASS="users">
	<THEAD>
		<TR>
			<TH COLSPAN="5"></TH>
			<TH ID="##GRPVIEW##"></TH>
			<TH></TH>
			<TH COLSPAN="8">ECM</TH>
			<TH COLSPAN="2">EMM</TH>
##TPLUSERCWCYCLE##
##TPLUSERANTICASC##
			<TH ID="##EXPIREVIEW##"></TH>
			<TH COLSPAN="3">Action</TH>
		</TR>
		<TR onClick="cdpause()"> <!--  Resolve  -->
			<TH CLASS="nosort">On/Off</TH>
			<TH>Label</TH>
			<TH CLASS="nosort">Status<BR>Address</TH>
			<TH>Protocol</TH>
			<TH ID="##GRPVIEW##">Groups</TH>
			<TH CLASS="nosort">Idle Time<BR>On Channel</TH>
			<TH>Last Channel</TH>
			<TH TITLE="Last ECM Time">LTIME</TH>
			<TH TITLE="Delivered ECM with status OK">OK</TH>
			<TH TITLE="Delivered ECM with status not OK">NOK</TH>
			<TH TITLE="Ignored ECM by filters, part of NOK">IGN</TH>
			<TH TITLE="Timeout ECM, part of NOK">TOUT</TH>
			<TH TITLE="Delivered ECM from cache, part of OK">CACHE</TH>
			<TH TITLE="Delivered ECM from tunneled, part of OK">TUN</TH>
			<TH CLASS="nosort" TITLE="Sum of ECM's in last 60s">last 60s</TH>
			<TH TITLE="Valid EMM delivered">OK</TH>
			<TH TITLE="Invalid EMM delivered">NOK</TH>
##TPLCWCYCLETHV##
##TPLCWANTICASCTHV##
			<TH ID="##EXPIREVIEW##" CLASS="nosort" TITLE="Expiration date of account">Exp. Date</TH>
			<TH CLASS="nosort"></TH>
			<TH CLASS="nosort"></TH>
			<TH CLASS="nosort"></TH>
		</TR>
	</THEAD>
	<TBODY>
##USERCONFIGS##
	</TBODY>
	</TABLE>
	<TABLE CLASS="user_totals smallmargintop">
		<TR>
			<TH TITLE="Total users" COLSPAN="6">User Info</TH>
		</TR>
		<TR>
			<TH TITLE="Total users">Total</TH>
			<TH TITLE="Total disabled users">Disabled</TH>
			<TH TITLE="Total expired users">Expired</TH>
			<TH TITLE="Total active users">Active</TH>
			<TH TITLE="Connected users">Connected</TH>
			<TH TITLE="Online users requesting ecms">Online</TH>
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
	<TABLE CLASS="ECM_totals smallmargintop">
		<TR>
			<TH COLSPAN="8">Total Ecm Info</TH>
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
			<TD CLASS="centered">##TOTAL_CWOK## (##REL_CWOK##%)</TD>
			<TD CLASS="centered">##TOTAL_CWCACHE## (##REL_CWCACHE##%)</TD>
			<TD CLASS="centered">##TOTAL_CWNOK## (##REL_CWNOK##%)</TD>
			<TD CLASS="centered">##TOTAL_CWTOUT## (##REL_CWTOUT##%)</TD>
			<TD CLASS="centered">##TOTAL_CWIGN## (##REL_CWIGN##%)</TD>
			<TD CLASS="centered">##TOTAL_ECM_MIN##</TD>
			<TD CLASS="centered">##TOTAL_CW##</TD>
		</TR>
		<TR>
			<TD CLASS="centered" COLSPAN="2"><B>Total OK:  </B> ##TOTAL_CWPOS## (##REL_CWPOS##%)</TD>
			<TD CLASS="centered" COLSPAN="2"><B>Total NOK:  </B>##TOTAL_CWNEG## (##REL_CWNEG##%)</TD>
			<TD CLASS="centered" COLSPAN="2"><B>Reset ECM Statistics:</B></TD>
			<TD CLASS="centered"><A HREF="userconfig.html?action=resetserverstats" TITLE="Reset statistics for server"><IMG CLASS="icon" SRC="image?i=ICRES" ALT="Reset Server Stats"></A></TD>
		</TR>
	</TABLE>

	<!-- To initialize a TABLE sorter -->
	<script type="text/javascript">
		var sorter = new TINY.table.sorter('sorter','dataTable',{
			headclass: 'head', // Header Class //
			ascclass: 'asc', // Ascending Class //
			descclass: 'desc', // Descending Class //
			sortdir: 1, // Sort Direction (1 or -1) //
			init: true// Init Now? (true or false) //
		});
	</script>
##TPLFOOTER##