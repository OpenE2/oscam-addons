<!--OSCam;4170892675;1.20-unstable_svn;9063;-->
##TPLHEADER##
##TPLMENU##
<DIV CLASS="filterform">
	<form action="status.html" method="get">
		<select name="hideidle">
			<option value="0" ##HIDEIDLECLIENTSSELECTED0##>Show idle clients</option>
			<option value="1" ##HIDEIDLECLIENTSSELECTED1##>Hide idle clients</option>
			<option value="2">Show hidden clients</option>
		</select>
		<input type="submit" value="Update">
	</form>
</DIV>
	<TABLE WIDTH="100%" class="status">
		<TR>
			<TH class="statuscol0">hide</TH>
			<TH class="statuscol1">Thread ID</TH>
			<TH class="statuscol2">Type</TH>
			<TH class="statuscol3">ID</TH>
			<TH class="statuscol4">Label</TH>
			<TH class="statuscol5">AU</TH>
			<TH class="statuscol6">Crypted</TH>
			<TH class="statuscol7">Address</TH>
			<TH class="statuscol8">Port</TH>
			<TH class="statuscol9">Protocol</TH>
			<TH class="statuscol10">Login</TH>
			<TH class="statuscol11">Online</TH>
			<TH class="statuscol12">CAID:SRVID</TH>
			<TH class="statuscol13">Current Channel</TH>
			<TH class="statuscol14">LB Value/ Reader</TH>
			<TH class="statuscol15">Idle</TH>
			<TH class="statuscol16">Status</TH>
		</TR>
##SERVERSTATUS##
##READERHEADLINE##
##READERSTATUS##
##PROXYHEADLINE##
##PROXYSTATUS##
##CLIENTHEADLINE##
##CLIENTSTATUS##
	</TABLE><BR>
	<DIV class="log">
##LOGHISTORY##
	</DIV><BR>
##SDEBUG##
##TPLFOOTER##
