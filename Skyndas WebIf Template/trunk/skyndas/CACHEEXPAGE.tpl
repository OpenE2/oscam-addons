<!--OSCam;572063351;1.20-unstable_svn;9102;CS_CACHEEX-->
##TPLHEADER##
##TPLMENU##
##TPLMESSAGE##
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
            return
            }
            document.getElementById("timer").innerHTML="Next refresh page in <b> " + countDownTime + " </b> secs"; // info text 
            counter=setTimeout("countDown()", 1000);
            }
          
            window.onload=countDown;                    
            </script>
    </DIV>
	<TABLE CLASS="statscacheex">
			<TR><TH COLSPAN="11">CacheEX Stats for ##OWN_CACHEEX_NODEID##</TH></TR>
			<TR><TH>Direction</TH><TH>Type</TH><TH>Name</TH><TH>IP</TH><TH>NODE</TH><TH>Cache EX Mode</TH><TH>Push</TH><TH>Got</TH><TH>Hit</TH><TH>Err</TH><TH>CW Diff</TH></TR>
##TABLECLIENTROWS##
##TABLEREADERROWS##
	</TABLE>
	<BR><BR>
	<TABLE>
		<TR><TH>Total push</TH><TH>Total got</TH><TH>Total hit</TH><TH>Cache size</TH></TR>
		<TR><TD class="centered">##TOTAL_CACHEXPUSH_IMG##</TD><TD class="centered">##TOTAL_CACHEXGOT_IMG##</TD><TD class="centered">&nbsp;</TD><TD class="centered">&nbsp;</TD></TR>
		<TR><TD class="centered">##TOTAL_CACHEXPUSH##</TD><TD class="centered">##TOTAL_CACHEXGOT##</TD><TD class="centered">##TOTAL_CACHEXHIT## (##REL_CACHEXHIT##%)</TD><TD class="centered">##TOTAL_CACHESIZE##</TD></TR>
	</TABLE>
	<BR><BR>
##TPLFOOTER##
