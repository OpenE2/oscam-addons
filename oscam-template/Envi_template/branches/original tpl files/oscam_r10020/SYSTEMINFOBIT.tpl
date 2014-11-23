<!--OSCam;3761480902;1.20-unstable_svn;10020;-->
<TBODY CLASS="statusmeminfo ##DISPLAYSYSINFO##">
	<TR><TH COLSPAN="13" CLASS="nameinfo">Memory Info</TH></TR>
	<TR>
		<TH>System</TH>
		<TD COLSPAN="3" CLASS="centered"><B>Total:</B>&nbsp;<span id="mem_cur_total">##MEM_CUR_TOTAL##</span></TD>
		<TD COLSPAN="3" CLASS="centered"><B>Used:</B>&nbsp;<span id="mem_cur_used">##MEM_CUR_USED##</span></TD>
		<TD COLSPAN="2" CLASS="centered" id="mem_cur_freem" title="max Free: ##MEM_CUR_FREEM##&#013;(incl. Buffer & Cached)"><B>Free:</B>&nbsp;<span id="mem_cur_free">##MEM_CUR_FREE##</span></TD>
		<TD COLSPAN="2" CLASS="centered"><B>Buffer:</B>&nbsp;<span id="mem_cur_buff">##MEM_CUR_BUFF##</span></TD>
		<TD COLSPAN="2" CLASS="centered"><B>Cached:</B>&nbsp;<span id="mem_cur_cached">##MEM_CUR_CACHED##</span></TD>
	</TR>
	<TR>
		<TH>Swap</TH>
		<TD COLSPAN="3" CLASS="centered"><B>Total:</B>&nbsp;<span id="mem_cur_totalsw">##MEM_CUR_TOTSW##</span></TD>
		<TD COLSPAN="3" CLASS="centered"><B>Used:</B>&nbsp;<span id="mem_cur_usedsw">##MEM_CUR_USESW##</span></TD>
		<TD COLSPAN="3" CLASS="centered"><B>Free:</B>&nbsp;<span id="mem_cur_freesw">##MEM_CUR_FRESW##</span></TD>
		<TD COLSPAN="3" CLASS="centered"><B>Shared:</B>&nbsp;<span id="mem_cur_shared">##MEM_CUR_SHARE##</span></TD>
	</TR>
	<TR>
		<TH>OSCam</TH>
		<TD COLSPAN="6" CLASS="centered"><B>Virtual memory size:</B>&nbsp;<span id="oscam_vsize">##OSCAM_VMSIZE##</span></TD>
		<TD COLSPAN="6" CLASS="centered"><B>Resident Set Size:</B>&nbsp;<span id="oscam_rsssize">##OSCAM_RSSSIZE##</span></TD>
	</TR>
</TBODY>
<TBODY CLASS="statuscpuinfo ##DISPLAYLOADINFO##">
	<TR><TH COLSPAN="13" CLASS="nameinfo">Load Average</TH></TR>
	<TR>
		<TH>System</TH>
		<TD COLSPAN="3" CLASS="centered"><B>last 1 minute:</B>&nbsp;<span id="cpu_load_0">##CPU_LOAD_0##</span></TD>
		<TD COLSPAN="3" CLASS="centered"><B>last 5 minutes:</B>&nbsp;<span id="cpu_load_1">##CPU_LOAD_1##</span></TD>
		<TD COLSPAN="3" CLASS="centered"><B>last 15 minutes:</B>&nbsp;<span id="cpu_load_2">##CPU_LOAD_2##</span></TD>
		<TD COLSPAN="3" CLASS="centered" title="Processes incl. all Threads"><B>Processes:</B>&nbsp;<span id="server_procs">##SERVER_PROCS##</span></TD>
	</TR>
	<TR><TH COLSPAN="13" CLASS="nameinfo">CPU Usage since last refresh <span class="nameinfo_second">(<span id="oscam_refresh">##OSCAM_REFRESH##</span>)</span></TH></TR>
	<TR>
		<TH>OSCam</TH>
		<TD COLSPAN="4" CLASS="centered"><B>User:</B>&nbsp;<span id="oscam_cpu_user">##OSCAM_CPU_USER##</span></TD>
		<TD COLSPAN="4" CLASS="centered"><B>System:</B>&nbsp;<span id="oscam_cpu_sys">##OSCAM_CPU_SYS##</span></TD>
		<TD COLSPAN="4" CLASS="centered"><B>Summary:</B>&nbsp;<span id="oscam_cpu_sum">##OSCAM_CPU_SUM##</span></TD>
	</TR>
</TBODY>