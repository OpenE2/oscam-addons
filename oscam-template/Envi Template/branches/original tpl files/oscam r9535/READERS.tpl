<!--OSCam;2161882426;1.20-unstable_svn;9535;-->
##TPLHEADER##
##TPLMENU##
##TPLMESSAGE##
	<DIV ID="subnav">
		<UL ID="nav">
			<LI CLASS="configmenu"><A HREF="#" onclick="addreader();">Add Reader</A></LI>
			<LI CLASS="configmenu"><A HREF="scanusb.html">Scan USB</A></LI>
			<LI CLASS="configmenu"><A TARGET="_blank" HREF="graph.svg?type=servers">Show Graphs</A></LI>
			<LI CLASS="configmenu"><A HREF="#" onclick="cdpause()">Stop Refresh</A></LI>
		</UL>
	</DIV>
	<DIV ID="newreader">
		<form action="readerconfig.html" method="get">
			<TABLE CLASS="readers">
				<TR><TH>NEW Reader Label: <input type="text" name="label" value="##NEXTREADER##">  Protocol: <select name="protocol">##ADDPROTOCOL##</select><input type="submit" name="action" value="Add"></TH></TR>
			</TABLE>
		</form>
	</DIV>
	<DIV ID="searchTable">
		<TABLE CLASS="readers">
			<TR><TH>Search: <input type="text" id="searchTerm" class="search_box" onkeyup="doSearch()" onClick="cdpause()" onBlur="initDoc()" /></TH></TR>
		</TABLE>
	</DIV>
	<TABLE ID="dataTable" CLASS="readers">
	<THEAD>
		<TR>
			<TH COLSPAN="4"></TH>
			<TH COLSPAN="3">ECM</TH>
			<TH COLSPAN="4">EMM</TH>
##TPLREADERLBWU##
			<TH COLSPAN="6"></TH>
		</TR>
		<TR>
			<TH>On/Off</TH>
			<TH>Reader</TH>
			<TH>Protocol</TH>
			<TH>Groups</TH>
			<TH>OK</TH>
			<TH>NOK</TH>
			<TH>Filtered<BR><SPAN TITLE="filtered by ECM Header Whitelist"> Head </SPAN>/<SPAN TITLE="filtered by ECM Whitelist"> Len </SPAN></TH>
			<TH>error<BR><SPAN TITLE="unknown EMM"> UK </SPAN>/<SPAN TITLE="global EMM"> G </SPAN>/<SPAN TITLE="shared EMM"> S </SPAN>/<SPAN TITLE="unique EMM"> UQ </SPAN></TH>
			<TH>written<BR><SPAN TITLE="unknown EMM"> UK </SPAN>/<SPAN TITLE="global EMM"> G </SPAN>/<SPAN TITLE="shared EMM"> S </SPAN>/<SPAN TITLE="unique EMM"> UQ </SPAN></TH>
			<TH>skipped<BR><SPAN TITLE="unknown EMM"> UK </SPAN>/<SPAN TITLE="global EMM"> G </SPAN>/<SPAN TITLE="shared EMM"> S </SPAN>/<SPAN TITLE="unique EMM"> UQ </SPAN></TH>
			<TH>blocked<BR><SPAN TITLE="unknown EMM"> UK </SPAN>/<SPAN TITLE="global EMM"> G </SPAN>/<SPAN TITLE="shared EMM"> S </SPAN>/<SPAN TITLE="unique EMM"> UQ </SPAN></TH>
##TPLREADERLBWD##
			<TH COLSPAN="6">Action</TH>
		</TR>
	</THEAD>
	<TBODY>
##READERLIST##
	</TBODY>
	</TABLE>
##TPLFOOTER##