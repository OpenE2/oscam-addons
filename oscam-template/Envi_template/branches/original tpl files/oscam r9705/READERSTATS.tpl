<!--OSCam;1035841107;1.20-unstable_svn;9705;WITH_LB-->
##TPLHEADER##
##TPLMENU##
##TPLMESSAGE##
	<DIV ID="subnav">
		<UL ID="nav">
				<LI CLASS="configmenu"><A HREF="readerstats.html?label=##ENCODEDLABEL##&amp;hide=-1">Show all</A></LI>
				<LI CLASS="configmenu"><A HREF="readerstats.html?label=##ENCODEDLABEL##&amp;hide=4">Hide 'not found'</A></LI>
				<LI CLASS="configmenu"><A HREF="readerstats.html?label=##ENCODEDLABEL##&amp;action=resetstat">Reset statistics</A></LI>
				<LI CLASS="configmenu"><A HREF="readerstats.html?label=##ENCODEDLABEL##&amp;action=updateecmlen">Add ecm len to reader whitelist</A></LI>
		</UL>
	</DIV>
	<TABLE CLASS="statsbalance">
	<TR><TH COLSPAN="8"> Loadbalance statistics for reader ##LABEL##</TH></TR>
	<TR><TH>Channel</TH><TH>Channelname</TH><TH>ECM Length</TH><TH>Result</TH><TH>Avg-Time</TH><TH>Last-Time</TH><TH>Count</TH><TH>Last checked/ found</TH></TR>
##READERSTATSROW##
##READERSTATSROWFOUND##
##READERSTATSTOHEADLINE##
##READERSTATSROWTIMEOUT##
##READERSTATSNFHEADLINE##
##READERSTATSROWNOTFOUND##
	</TABLE>
	<P ID="text_totalecm">Total ECM count: ##TOTALECM##</P>
##TPLFOOTER##