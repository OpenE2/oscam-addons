<!--OSCam;3871572705;1.20-unstable_svn;983;-->
##TPLHEADERSHORT##
	<script type="text/javascript">
	
	var page = 'reader';
	var jsonurl = 'oscamapi.json';
	var parameters = '?part=readerlist';
	var stoppoll = 0;
	var pollintervall = 0;
	var httprefresh = '##REFRESHTIME##';

	</script>
##TPLBODY##
##TPLMENU##
##TPLMESSAGE##
	<DIV ID="subnav">
		<UL ID="nav">
			<LI CLASS="configmenu"><A HREF="#" onclick="addreader();">Add Reader</A></LI>
			<LI CLASS="configmenu"><A HREF="scanusb.html">Scan USB</A></LI>
			<LI CLASS="configmenu"><A HREF="readers.html?action=resetallrdrstats">Reset Readerstats</A></LI>
			<LI CLASS="configmenu"><A TARGET="_blank" HREF="graph.svg?type=servers">Show Graphs</A></LI>
			<LI ID="poll" CLASS="pollselect" style="display: none;">Pollintervall:<input type="text" name="pintervall" class="pintervall" value="" readonly>sec.<button id="dec">&ndash;</button><button id="inc">+</button></LI>
			<LI ID="nopoll" CLASS="pollselect" style="display: none;">httprefresh no set - polling disabled</LI>
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
			<TR><TH>Search: <input type="text" id="searchTerm" class="search_box" onkeyup="doSearch()" onClick="cdpause()" onBlur="initDoc()"></TH></TR>
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
			<TH ID="sortable">On/Off</TH>
			<TH ID="sortable">Reader</TH>
			<TH ID="sortable">Protocol</TH>
			<TH ID="sortable">Groups</TH>
			<TH ID="sortable">OK</TH>
			<TH ID="sortable">NOK</TH>
			<TH ID="sortable">Filtered<BR><SPAN TITLE="filtered by ECM Header Whitelist"> Head </SPAN>/<SPAN TITLE="filtered by ECM Whitelist"> Len </SPAN></TH>
			<TH ID="sortable">error<BR><SPAN TITLE="unknown EMM"> UK </SPAN>/<SPAN TITLE="global EMM"> G </SPAN>/<SPAN TITLE="shared EMM"> S </SPAN>/<SPAN TITLE="unique EMM"> UQ </SPAN></TH>
			<TH ID="sortable">written<BR><SPAN TITLE="unknown EMM"> UK </SPAN>/<SPAN TITLE="global EMM"> G </SPAN>/<SPAN TITLE="shared EMM"> S </SPAN>/<SPAN TITLE="unique EMM"> UQ </SPAN></TH>
			<TH ID="sortable">skipped<BR><SPAN TITLE="unknown EMM"> UK </SPAN>/<SPAN TITLE="global EMM"> G </SPAN>/<SPAN TITLE="shared EMM"> S </SPAN>/<SPAN TITLE="unique EMM"> UQ </SPAN></TH>
			<TH ID="sortable">blocked<BR><SPAN TITLE="unknown EMM"> UK </SPAN>/<SPAN TITLE="global EMM"> G </SPAN>/<SPAN TITLE="shared EMM"> S </SPAN>/<SPAN TITLE="unique EMM"> UQ </SPAN></TH>
##TPLREADERLBWD##
			<TH COLSPAN="6">Action</TH>
		</TR>
	</THEAD>
	<TBODY>
##READERLIST##
	</TBODY>
	</TABLE>
	<DIV id="picolor"></DIV>
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
