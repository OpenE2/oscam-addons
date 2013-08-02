<!--OSCam;4170892675;1.20-unstable_svn;8785;-->
##TPLHEADER##
##TPLMENU##
  <DIV CLASS="settimer timercolor">
    <SPAN id="timer">Refreshing has been stopped!</SPAN>
    <script language="JavaScript">
        var countDownInterval=##REFRESHTIME##;
        var countDownTime=countDownInterval+1;
        function countDown(){
            countDownTime--;
            if (countDownTime <=0){
                countDownTime=countDownInterval;
                clearTimeout(counter)
                window.location.href="##REFRESHURL##"
                return
                }
            document.getElementById("timer").innerHTML="Next refresh page in <b> " + countDownTime + " </b> secs"; // info text 
            counter=setTimeout("countDown()", 1000);
            }
        function StartcountDown(){
            document.getElementById("timer").innerHTML="Next refresh page in <b> " + countDownTime + " </b> secs"; // info text					   
            countDown()
            }
        function StopcountDown() {
            clearTimeout(counter);
            document.getElementById("timer").innerHTML="Refreshing has been stopped!"; // info text
            };
        window.onload=StartcountDown;                    
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
  <TABLE CLASS="sectionclient">
    <TR>
  	 <TD><SPAN>Server, Readers and Proxies list </SPAN></TD>
    </TR>
  </TABLE>
  <TABLE CLASS="status">
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
  <TABLE CLASS="sectionclient">
    <TR>
        <TD><SPAN>Clients list (only connected clients)</SPAN></TD>
    </TR>
  </TABLE>
  <TABLE CLASS="numclient">
##CLIENTHEADLINE##
  </TABLE>
  <TABLE CLASS="filter">
    <TR>
        <TD>Search: <input type="text" id="searchTerm" class="search_box" onkeyup="doSearch()" onClick="StopcountDown()" onBlur="countDown()"/></TD>
    </TR>
  </TABLE>
  <TABLE ID="dataTable" CLASS="status">
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
##CLIENTSTATUS##
  </TABLE><BR>
  <DIV class="log">
##LOGHISTORY##
  </DIV><BR>
##SDEBUG##
##TPLFOOTER##
