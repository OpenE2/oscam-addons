<!--OSCam;2717464229;1.20-unstable_svn;9173;-->
##TPLHEADER##
##TPLMENU##
##TPLMESSAGE##
	<TABLE CLASS="configmenu"><TR><TD CLASS="configmenu"><A HREF="scanusb.html">Scan USB</A></TD><TD CLASS="configmenu"><A TARGET="_blank" HREF="graph.svg?type=servers">Show Graphs</A></TD></TR></TABLE>
	<form action="readerconfig.html" method="get">
		<TABLE CLASS="readers">
			<TR>
				<TH>Enabled</TH>
				<TH>Reader</TH>
				<TH>Protocol</TH>
				<TH>Groups</TH>
				<TH>EMM error<BR><SPAN TITLE="unknown EMM"> UK </SPAN>/<SPAN TITLE="global EMM"> G </SPAN>/<SPAN TITLE="shared EMM"> S </SPAN>/<SPAN TITLE="unique EMM"> UQ </SPAN></TH>
				<TH>EMM written<BR><SPAN TITLE="unknown EMM"> UK </SPAN>/<SPAN TITLE="global EMM"> G </SPAN>/<SPAN TITLE="shared EMM"> S </SPAN>/<SPAN TITLE="unique EMM"> UQ </SPAN></TH>
				<TH>EMM skipped<BR><SPAN TITLE="unknown EMM"> UK </SPAN>/<SPAN TITLE="global EMM"> G </SPAN>/<SPAN TITLE="shared EMM"> S </SPAN>/<SPAN TITLE="unique EMM"> UQ </SPAN></TH>
				<TH>EMM blocked<BR><SPAN TITLE="unknown EMM"> UK </SPAN>/<SPAN TITLE="global EMM"> G </SPAN>/<SPAN TITLE="shared EMM"> S </SPAN>/<SPAN TITLE="unique EMM"> UQ </SPAN></TH>
				<TH>ECMs OK</TH>
				<TH>ECMs NOK</TH>
				<TH>ECMs Filtered<BR><SPAN TITLE="filtered by ECM Header Whitelist"> Head </SPAN>/<SPAN TITLE="filtered by ECM Whitelist"> Len </SPAN></TH>
				<TH>LB Weight</TH>
				<TH COLSPAN="6">Action</TH>
			</TR>
##READERLIST##
			<TR>
				<TD>&nbsp;</TD>
				<TD COLSPAN="2" CLASS="centered">New Reader</TD>
				<TD COLSPAN="2" CLASS="centered">Label:&nbsp;&nbsp;<input type="text" name="label" value="##NEXTREADER##"></TD>
				<TD COLSPAN="2" CLASS="centered">Protocol:&nbsp;&nbsp;
					<select name="protocol">
##ADDPROTOCOL##
					</select>
				</TD>
				<TD COLSPAN="4" CLASS="centered"><input type="submit" name="action" value="Add" title="Add new Reader" ##BTNDISABLED##></TD>
				<TD COLSPAN="7"></TD>
			</TR>
		</TABLE>
	</form>
##TPLFOOTER##
