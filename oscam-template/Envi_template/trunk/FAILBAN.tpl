<!--OSCam;4205610292;1.20-unstable_svn;9665;-->
##TPLHEADER##
##TPLMENU##
##TPLMESSAGE##
	<DIV ID="subnav">
		<input id="subtoggle" type="checkbox"></input>
		<label class="subtoggle" onclick="" for="subtoggle"></label>
		<UL ID="nav">
			<LI CLASS="configmenu"><A HREF="failban.html?action=delete&amp;intip=all">Clear all</A></LI>
		</UL>
	</DIV>
	<TABLE CLASS="stats">
		<TR><TH COLSPAN="6">List of banned IP Addresses</TH></TR>
		<TR><TH>IP Address</TH><TH>User</TH><TH>Violation date</TH><TH>Violation count</TH><TH>Left ban time</TH><TH>Action</TH></TR>
##FAILBANROW##
	</TABLE>
##TPLFOOTER##