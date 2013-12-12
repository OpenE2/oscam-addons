<!--OSCam;3321163592;1.20-unstable_svn;9093;-->
##TPLHEADER##
##TPLMENU##
##TPLMESSAGE##
    <DIV class="subnav subnav-fixed">
      <UL id="sub">
        <LI CLASS="configmenu"><A HREF="scanusb.html">Scan USB</A></LI>
        <LI CLASS="configmenu"><A TARGET="_blank" HREF="graph.svg?type=servers">Show Graphs</A></LI>
      </UL>
   	</DIV>
    <DIV CLASS="settimer">
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
	<form action="readerconfig.html" method="get">
		<TABLE CLASS="readers">
			<TR>
				<TH>Enabled</TH>
				<TH>Reader</TH>
				<TH>Protocol</TH>
				<TH>EMM error<br><span title="unknown EMM"> UK </span>/<span title="global EMM"> G </span>/<span title="shared EMM"> S </span>/<span title="unique EMM"> UQ </span></TH>
				<TH>EMM written<br><span title="unknown EMM"> UK </span>/<span title="global EMM"> G </span>/<span title="shared EMM"> S </span>/<span title="unique EMM"> UQ </span></TH>
				<TH>EMM skipped<br><span title="unknown EMM"> UK </span>/<span title="global EMM"> G </span>/<span title="shared EMM"> S </span>/<span title="unique EMM"> UQ </span></TH>
				<TH>EMM blocked<br><span title="unknown EMM"> UK </span>/<span title="global EMM"> G </span>/<span title="shared EMM"> S </span>/<span title="unique EMM"> UQ </span></TH>
				<TH>ECMs OK</TH>
				<TH>ECMs NOK</TH>
				<TH>ECMs Filtered<br><span title="filtered by ECM Header Whitelist"> Head </span>/<span title="filtered by ECM Whitelist"> Len </span></TH>
				<TH>LB Weight</TH>
				<TH COLSPAN="6">Action</TH>
			</TR>
##READERLIST##
			<TR>
				<TD>&nbsp;</TD>				
                <TD COLSPAN="2" class="centered">New Reader</TD>
				<TD COLSPAN="2" class="centered">Label:&nbsp;&nbsp;<input type="text" name="label" value="##NEXTREADER##" onClick="StopcountDown()" onBlur="StartcountDown()"></TD>
				<TD COLSPAN="2" class="centered">Protocol:&nbsp;&nbsp;
					<select name="protocol"  onClick="StopcountDown()" onBlur="StartcountDown()">
##ADDPROTOCOL##
					</select>
				</TD>
				<TD COLSPAN="4" class="centered"><input type="submit" name="action" value="Add" ##BTNDISABLED##></TD>
				<TD COLSPAN="6"></TD>
			</TR>
		</TABLE>
	</form>
##TPLFOOTER##
