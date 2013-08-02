<!--OSCam;2489487885;1.20-unstable_svn;8785;-->
##TPLHEADER##
##TPLMENU##
##TPLMESSAGE##
  <DIV CLASS="subnav subnav-fixed">
    <UL ID="sub">
        <LI CLASS="configmenu"><A HREF="userconfig.html?part=adduser">Add User</A></LI>
        <LI CLASS="configmenu"><A HREF="userconfig.html?action=reinit">Reinit User DB</A></LI>
        <LI CLASS="configmenu"><A HREF="userconfig.html?action=resetalluserstats">Reset Userstats</A></LI>
        <LI CLASS="configmenu"><A TARGET="_blank" HREF="graph.svg?type=users&hidelabels=1">Show Graphs</A></LI>
    </UL>
  </DIV>
  <DIV CLASS="settimer">
    <SPAN ID="timer">Refreshing has been stopped!</SPAN>
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
  <DIV CLASS="filterform"><FORM action="user_edit.html" method="get">##NEWUSERFORM##</FORM></DIV>
  <TABLE CLASS="filter">
    <TR>
      <TD>Search: <input type="text" id="searchTerm" class="search_box" onkeyup="doSearch()" onClick="StopcountDown()" onBlur="countDown()"/></TD>
    </TR>
  </TABLE>
	<TABLE id="dataTable" class="users">
		<TR>
			<TH class="usercol0"></TH>
			<TH class="usercol1">Label</TH>
			<TH class="usercol2">Status</TH>
			<TH class="usercol3">Address</TH>
			<TH class="usercol4">Protocol</TH>
			<TH class="usercol5">Last Channel</TH>
			<TH class="usercol6">On Channel</TH>
			<TH class="usercol7">Idle</TH>
			<TH TITLE="Delivered ECM with status OK" class="usercol8">OK</TH>
			<TH TITLE="Delivered ECM with status not OK"  class="usercol9">NOK</TH>
			<TH TITLE="Ignored ECM by filters, part of NOK" class="usercol10">IGN</TH>
			<TH TITLE="Timeout ECM, part of NOK" class="usercol11">TOUT</TH>
##TPLCWCYCLETHV##
			<TH TITLE="Delivered ECM from cache, part of OK" class="usercol13">CACHE</TH>
			<TH TITLE="Delivered ECM from tunneled, part of OK" class="usercol14">TUN</TH>
			<TH TITLE="Last ECM Time" class="usercol15">LTIME</TH>
			<TH TITLE="Valid EMM delivered" class="usercol16">EOK</TH>
			<TH TITLE="Invalid EMM delivered" class="usercol17">ENOK</TH>
			<TH TITLE="CW rate since Server start (CW rate current Session)" class="usercol18">CW Rate</TH>
			<TH TITLE="Different services during last 60s" class="usercol19">CASC USERS</TH>
			<TH TITLE="Expiration date of account" class="usercol20">Exp. Date</TH>
			<TH colspan="3" class="usercol21"></TH>
		</TR>
##USERCONFIGS##
	</TABLE><BR>
	<SPAN CLASS = "user_totals_headline">Totals for the server:</SPAN>
	<TABLE CLASS="user_totals">
		<TR>
			<TH TITLE="Total users">Total</TH>
			<TH TITLE="Total disabled users">Disabled</TH>
			<TH TITLE="Total expired users">Expired</TH>
			<TH TITLE="Total active users">Active</TH>
			<TH TITLE="Connected users">Connected</TH>
			<TH TITLE="Online users requesting ecms">Online</TH>
			<TH TITLE="Delivered ECM with status OK">OK</TH>
			<TH TITLE="Delivered ECM with status not OK">NOK</TH>
			<TH TITLE="Ignored ECM by filters, part of NOK">IGN</TH>
			<TH TITLE="Timeout ECM, part of NOK">TOUT</TH>
			<TH TITLE="Delivered ECM from cache, part of OK">CACHE</TH>
			<TH TITLE="Delivered ECM from tunneled, part of OK">TUN</TH>
			<TH>Action</TH>
		</TR>
		<TR>
			<TD class="centered">##TOTAL_USERS##</TD>
			<TD class="centered">##TOTAL_DISABLED##</TD>
			<TD class="centered">##TOTAL_EXPIRED##</TD>
			<TD class="centered">##TOTAL_ACTIVE##</TD>
			<TD class="centered">##TOTAL_CONNECTED##</TD>
			<TD class="centered">##TOTAL_ONLINE##</TD>
			<TD class="centered">##TOTAL_CWOK## (##REL_CWOK##%)</TD>
			<TD class="centered">##TOTAL_CWNOK## (##REL_CWNOK##%)</TD>
			<TD class="centered">##TOTAL_CWIGN## (##REL_CWIGN##%)</TD>
			<TD class="centered">##TOTAL_CWTOUT## (##REL_CWTOUT##%)</TD>
			<TD class="centered">##TOTAL_CWCACHE## (##REL_CWCACHE##%)</TD>
			<TD class="centered">##TOTAL_CWTUN## (##REL_CWTUN##%)</TD>
			<TD class="centered"><A HREF="userconfig.html?action=resetserverstats" TITLE="reset statistics for server"><IMG CLASS="icon" SRC="image?i=ICRES" ALT="Reset Server Stats"></A></TD>
		</TR>
	</TABLE><BR>
##TPLFOOTER##
