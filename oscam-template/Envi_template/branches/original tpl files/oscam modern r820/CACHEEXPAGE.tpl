<!--OSCam;3635456995;1.20-unstable_svn;983;CS_CACHEEX-->
##TPLHEADER##
##TPLMENU##
##TPLMESSAGE##
	<DIV ID="subnav">
		<UL ID="nav">
			<LI CLASS="configmenu"><A HREF="cacheex.html?action=resetallcacheexstats">Reset CacheEX-Stats</A></LI>
		</UL>
	</DIV>
	<DIV ID="searchTable">
		<TABLE CLASS="cacheex">
			<TR><TH>Filter: <input type="text" id="searchTerm" class="search_box" onkeyup="doSearch()" onClick="cdpause()" onBlur="initDoc()"></TH></TR>
		</TABLE>
	</DIV>
	<TABLE ID="dataTable" CLASS="stats">
		<THEAD>
			<TR><TH COLSPAN="12">CacheEX Stats for ##OWN_CACHEEX_NODEID##</TH></TR>
			<TR>
				<TH ID="sortable">Direction</TH>
				<TH ID="sortable">Type</TH>
				<TH ID="sortable">Name</TH>
				<TH ID="sortable">IP</TH>
				<TH ID="sortable">NODE</TH>
				<TH ID="sortable">Cache EX Mode</TH>
				<TH ID="sortable">Push</TH>
				<TH ID="sortable">Got</TH>
				<TH ID="sortable">CWC Info</TH>
				<TH ID="sortable">Hit</TH>
				<TH ID="sortable">Err</TH>
				<TH ID="sortable">CW Diff</TH>
			</TR>
		</THEAD>
		<TBODY>
##TABLECLIENTROWS##
##TABLEREADERROWS##
		</TBODY>
	</TABLE>
	<script type="text/javascript">
		var sorter = new TINY.table.sorter('sorter','dataTable',{
		headclass: 'head', // Header Class //
		ascclass: 'asc', // Ascending Class //
		descclass: 'desc', // Descending Class //
		sortdir: 1, // Sort Direction (1 or -1) //
		init: true// Init Now? (true or false) //
		});
	</script>
	<TABLE ID="cachexstats" CLASS="margintop">
		<TR>
			<TH COLSPAN="5">Cache Statistics</TH>
		</TR>
		<TR>
			<TH>Total</TH>
			<TD ID="out" CLASS="centered"><B>push  </B>##TOTAL_CACHEXPUSH_IMG## ##TOTAL_CACHEXPUSH##</TD>
			<TD ID="in" CLASS="centered"><B>got   </B>##TOTAL_CACHEXGOT_IMG## ##TOTAL_CACHEXGOT##</TD>
			<TD CLASS="centered"><B>hit: </B>##TOTAL_CACHEXHIT## (##REL_CACHEXHIT##%)</TD>
			<TD CLASS="centered"><B>size: </B>##TOTAL_CACHESIZE##</TD>
		</TR>
	</TABLE>
##TPLFOOTER##
