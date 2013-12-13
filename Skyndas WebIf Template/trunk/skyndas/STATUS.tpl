<!--OSCam;4170892675;1.20-unstable_svn;9102;-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><HTML>
<HEAD>
	<TITLE>OSCAM build r##CS_SVN_VERSION##</TITLE>
	<meta http-equiv="Content-Type" content="text/html; charset=##HTTP_CHARSET##">
	<meta name="robots" content="noindex,nofollow">
	<link rel="stylesheet" type="text/css" href="site.css">
	<link href="favicon.ico" rel="icon" type="image/x-icon">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script type="text/javascript" src="oscam.js"></script>
	<script type="text/javascript">
	<!--
	addUnloadHandler();
	//-->
	</script>
</HEAD>
<BODY>
<DIV id="wrapper">
<DIV class="margintop"></DIV><!-- Solution for footer, set margin from top -->
<DIV id="content">

##TPLMENU##
<DIV CLASS="settimer timercolor">
	<!-- Script for refresh page -->
	<SPAN id="timer">Refreshing has been stopped!</SPAN>
	<script language="JavaScript">
		var countDownInterval=##REFRESHTIME##;
		var countDownTime=countDownInterval+1;
		function countDown(){
		countDownTime--;
		if (countDownTime <=0){
		countDownTime=countDownInterval;
		clearTimeout(counter)
		window.location.href="status.html"
		return
		}
		document.getElementById("timer").innerHTML="Next refresh page in <b> " + countDownTime + " </b> secs"; // info text 
		counter=setTimeout("countDown()", 1000);
		}

		window.onload=countDown;
	</script>
</DIV>
<DIV CLASS="statusfilterform">
	<form action="status.html" method="get">
		<select name="hideidle">
			<option value="0" ##HIDEIDLECLIENTSSELECTED0##>Show idle clients</option>
			<option value="1" ##HIDEIDLECLIENTSSELECTED1##>Hide idle clients</option>
			<option value="2">Show hidden clients</option>
		</select>
		<input type="submit" value="Update">
	</form>
</DIV>
<TABLE class="sectionclient">
	<TR>
		<TD><SPAN>Server, Readers and Proxies list </SPAN></TD>
	</TR>
</TABLE>
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
</TABLE><BR>
<TABLE class="sectionclient">
	<TR>
		<TD><SPAN>Clients list (only connected clients)</SPAN></TD>
	</TR>
</TABLE>
<TABLE class="numclient">
##CLIENTHEADLINE##
</TABLE>
<script type="text/javascript" charset="utf-8">
	$(document).ready(function() {
		$('#tablestatus').dataTable( {
			"bStateSave": true,
			"sDom": '<"top"fi>',
			"bFilter": true,
			"bInfo": true,
			"bLengthChange": false,
			"bPaginate": false,
			"aoColumnDefs": [
				{ "bSortable": false, "aTargets": [ 0,1,2,3,6,8,10,11,12,15,16 ] }
			],
			"aaSorting": [[ 4, "desc" ]] 
		} ); 
	} );
</script>
<TABLE id="tablestatus" class="status">
	<THEAD>
		<TR>
			<TH class="statuscol0">hide</TH>
			<TH class="statuscol1">Thread ID</TH>
			<TH class="statuscol2">Type</TH>
			<TH class="statuscol3">ID</TH>
			<TH class="statuscol4" style="text-align:center;">Label</TH>
			<TH class="statuscol5">AU</TH>
			<TH class="statuscol6">Crypted</TH>
			<TH class="statuscol7">Address</TH>
			<TH class="statuscol8">Port</TH>
			<TH class="statuscol9">Protocol</TH>
			<TH class="statuscol10">Login</TH>
			<TH class="statuscol11">Online</TH>
			<TH class="statuscol12">CAID:SRVID</TH>
			<TH class="statuscol13" style="text-align:center;">Current Channel</TH>
			<TH class="statuscol14">LB Value/ Reader</TH>
			<TH class="statuscol15">Idle</TH>
			<TH class="statuscol16">Status</TH>
		</TR>
	</THEAD>
	<TBODY>
##CLIENTSTATUS##
	<TBODY>
</TABLE><BR>
<DIV class="log">
##LOGHISTORY##
</DIV><BR>
##SDEBUG##
##TPLFOOTER##
