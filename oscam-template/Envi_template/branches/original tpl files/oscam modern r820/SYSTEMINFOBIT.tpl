<!--OSCam;1402826851;1.20-unstable_svn;983;-->
<TABLE CLASS="statusmeminfo ##DISPLAYSYSINFO##">
	<TR><TH COLSPAN="6" CLASS="nameinfo">Memory Info</TH></TR>
	<TR>
		<TH>System Ram</TH>
		<TD CLASS="centered"><B>Total:</B>&nbsp;<span id="mem_cur_total">##MEM_CUR_TOTAL##</span></TD>
		<TD CLASS="centered"><B>Free:</B>&nbsp;<span id="mem_cur_free">##MEM_CUR_FREE##</span></TD>
		<TD CLASS="centered"><B>Used:</B>&nbsp;<span id="mem_cur_used">##MEM_CUR_USED##</span></TD>
		<TD CLASS="centered"><B>Buffer:</B>&nbsp;<span id="mem_cur_buff">##MEM_CUR_BUFF##</span></TD>
	</TR>
	<TR>
		<TH>OSCam</TH>
		<TD COLSPAN="2" CLASS="centered"><B>Virtual memory size:</B>&nbsp;<span id="oscam_vsize">##OSCAM_VMSIZE##</span></TD>
		<TD COLSPAN="2" CLASS="centered"><B>Resident Set Size:</B>&nbsp;<span id="oscam_rsssize">##OSCAM_RSSSIZE##</span></TD>
	</TR>
</TABLE>
<TABLE CLASS="statusmeminfo ##DISPLAYLOADINFO##">
	<TR><TH COLSPAN="4" CLASS="nameinfo">Load Average</TH></TR>
	<TR>
		<TH>SYSTEM</TH>
		<TD CLASS="centered"><B>last 1 minute:</B>&nbsp;<span id="cpu_load_0">##CPU_LOAD_0##</span></TD>
		<TD CLASS="centered"><B>last 5 minutes:</B>&nbsp;<span id="cpu_load_1">##CPU_LOAD_1##</span></TD>
		<TD CLASS="centered"><B>last 15 minutes:</B>&nbsp;<span id="cpu_load_2">##CPU_LOAD_2##</span></TD>
	</TR>
	<TR><TH COLSPAN="4" CLASS="nameinfo">CPU Usage since last refresh (<span id="oscam_refresh">##OSCAM_REFRESH##</span>)</TH></TR>
	<TR>
		<TH>OSCam</TH>
		<TD CLASS="centered"><B>User:</B>&nbsp;<span id="oscam_cpu_user">##OSCAM_CPU_USER##</span></TD>
		<TD CLASS="centered"><B>System:</B>&nbsp;<span id="oscam_cpu_sys">##OSCAM_CPU_SYS##</span></TD>
		<TD CLASS="centered"><B>Summary:</B>&nbsp;<span id="oscam_cpu_sum">##OSCAM_CPU_SUM##</span></TD>
	</TR>
</TABLE>