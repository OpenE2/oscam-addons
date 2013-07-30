<!--OSCam;4170892675;1.20-unstable_svn;8735;-->
##TPLHEADER####TPLMENU##
  <DIV CLASS="filterform">
  	<FORM action="status.html" method="get">
  		<SELECT name="hideidle">
  			<OPTION value="0" ##HIDEIDLECLIENTSSELECTED0##>Show idle clients</OPTION>
  			<OPTION value="1" ##HIDEIDLECLIENTSSELECTED1##>Hide idle clients</OPTION>
  			<OPTION value="2">Show hidden clients</option>
  		</SELECT>
  		<INPUT type="submit" value="Update">
  	</FORM>
  </DIV>
	<TABLE class="status">
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
	</TABLE>
  <TABLE class="status" style="margin-top:10px;border-bottom:3px solid #0f1517;">
    <TR>
	  <TD class="statusrefreshclient"><SPAN>Clients list (only connected clients)</SPAN></TD>
      <TD class="statusrefresh">
		  <!-- Script for refresh page -->
				<script language="JavaScript">
					//configure refresh interval (in seconds)
					var countDownInterval=##REFRESHTIME##;
					//configure width of displayed text, in px (applicable only in NS4)
					var c_reloadwidth=200

					$('#timersub').click(function() {
						countDownTime = $('#timertxt').val();
					});
				</script>
				<script>
					var countDownTime=countDownInterval+1;
					function countDown(){
						countDownTime--;
						if (countDownTime <=0){
							countDownTime=countDownInterval;
							clearTimeout(counter)
							window.location.reload()
							return
						}
						if (document.all) //if IE 4+
						document.all.countDownText.innerText = countDownTime+" ";
						else if (document.getElementById) //else if NS6+
						document.getElementById("countDownText").innerHTML=countDownTime+" "
						else if (document.layers){ //CHANGE TEXT BELOW TO YOUR OWN
						document.c_reload.document.c_reload2.document.write('Next <a href="status.html">refresh</a> in <b id="countDownText">'+countDownTime+' </b> seconds')
						document.c_reload.document.c_reload2.document.close()
						}
						counter=setTimeout("countDown()", 1000);
					}

					function startit(){
						if (document.all||document.getElementById) //CHANGE TEXT BELOW TO YOUR OWN
						document.write('Next <a href="status.html">refresh</a> in <b id="countDownText">'+countDownTime+' </b> seconds')
						countDown()
					}

					if (document.all||document.getElementById)
					startit()
					else
					window.onload=startit
				</script>
      </TD>
    </TR>
  </TABLE>
	<TABLE class="status">
	##CLIENTHEADLINE##
	</TABLE>
	<!-- Script for Jquery DataTables -->
	<script type="text/javascript" charset="utf-8">
	  	$(document).ready( function() {
	  		$('#tablestatus').dataTable( {
	  			"sDom": '<"top"fi>',
	  			"bFilter": true,
	  			"bInfo": true,
	  			"bLengthChange": false,
	  			"bPaginate": false,
          "bAutoWidth": false,
	  			"aoColumnDefs": [
	  			{ "bSortable": false, "aTargets": [ 0,1,2,3,6,8,10,11,12,13,15,16 ] }
	  			] } );
	  	} );
	</script>
	<TABLE id="tablestatus" class="status">
		<THEAD>
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
		</THEAD>
	<TBODY>
##CLIENTSTATUS##
	</TBODY>
	</TABLE><BR/>
	<DIV class="log">
##LOGHISTORY##
	</DIV><BR/>
##SDEBUG####TPLFOOTER##