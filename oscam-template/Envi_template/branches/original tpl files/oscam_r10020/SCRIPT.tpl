<!--OSCam;4107298406;1.20-unstable_svn;10020;-->
##TPLHEADER##
##TPLMENU##
	<DIV ID="subnav">
		<UL ID="nav"><LI></LI></UL>
	</DIV>
##TPLMESSAGE##
		<script type="text/javascript">function runscript(){var e=document.getElementById("scriptselect");var URL=e.options[e.selectedIndex].value;window.location.href=URL;}</script>
		<P ID="filename">OSCam execute script:</P>
	<DIV ID="otherdropdown">
		<select ID="scriptselect" name="action" size="1" onChange="runscript()">
##SCRIPTOPTIONS##
		</select>
	</DIV>
		<P ID="filesubmit">##SCRIPTNAME## ##CODE##</P>
	<DIV CLASS="extract">
		<P>Extract from the script (only if "echo" is available in script file)</P>
		<PRE>##SCRIPTRESULTOUT##</PRE>
	</DIV>
##TPLFOOTER##