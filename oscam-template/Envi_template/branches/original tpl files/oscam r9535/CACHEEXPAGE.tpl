<!--OSCam;3048369048;1.20-unstable_svn;9535;CS_CACHEEX-->
##TPLHEADER##
##TPLMENU##
##TPLMESSAGE##
	<DIV ID="subnav">
		<UL ID="nav"></UL>
	</DIV>
	<DIV ID="searchTable">
		<TABLE CLASS="cacheex">
			<TR><TH>Filter: <input type="text" id="searchTerm" class="search_box" onkeyup="doSearch()" onClick="cdpause()" onBlur="initDoc()" /></TH></TR>
		</TABLE>
	</DIV>
	<TABLE ID="dataTable" CLASS="stats">
		<THEAD>
			<TR><TH COLSPAN="12">CacheEX Stats for ##OWN_CACHEEX_NODEID##</TH></TR>
			<TR>
				<TH>Direction</TH>
				<TH>Type</TH>
				<TH>Name</TH>
				<TH>IP</TH>
				<TH>NODE</TH>
				<TH>Cache EX Mode</TH>
				<TH>Push</TH>
				<TH>Got</TH>
				<TH>CWC Info</TH>
				<TH>Hit</TH>
				<TH>Err</TH>
				<TH>CW Diff</TH>
			</TR>
		</THEAD>
		<TBODY>
##TABLECLIENTROWS##
##TABLEREADERROWS##
		</TBODY>
	</TABLE>
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