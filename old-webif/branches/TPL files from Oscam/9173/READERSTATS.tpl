<!--OSCam;3734941635;1.20-unstable_svn;9173;-->
##TPLHEADER##
##TPLMENU##
##TPLMESSAGE##
	<TABLE CLASS="configmenu">
		<TR>
			<TD CLASS="configmenu"><A HREF="readerstats.html?label=##ENCODEDLABEL##&amp;hide=-1">show all</A></TD>
			<TD CLASS="configmenu"><A HREF="readerstats.html?label=##ENCODEDLABEL##&amp;hide=4">hide 'not found'</A></TD>
			<TD CLASS="configmenu"><A HREF="readerstats.html?label=##ENCODEDLABEL##&amp;action=resetstat">reset statistics</A></TD>
			<TD CLASS="configmenu"><A HREF="readerstats.html?label=##ENCODEDLABEL##&amp;action=updateecmlen">store valid ecm len in whitelist</A></TD>
		</TR>
	</TABLE>
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
	<SPAN CLASS="text_totalecm">Total ECM count: ##TOTALECM##</SPAN>
##TPLFOOTER##
