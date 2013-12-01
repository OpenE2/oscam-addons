<!--OSCam;3321163592;1.20-unstable_svn;9063;-->
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
            window.location.href="readers.html"
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
