<!--OSCam;527800751;1.20-unstable_svn;9535;-->
##TPLHEADER##
##TPLMENU##
##TPLMESSAGE##
		<DIV ID="subnav">
			<UL ID="nav"></UL>
		</DIV>
		<script language="JavaScript">function runscript(){var e=document.getElementById("scriptselect");var URL=e.options[e.selectedIndex].value;window.location.href=URL;}</script>
		<P ID="filename">OSCam execute script:</P>
		<DIV ID="otherdropdown">
			<select ID="scriptselect" name="action" size="1" onChange="runscript()">
##SCRIPTOPTIONS##
			</select>
		</DIV>
		<P ID="filename">##SCRIPTNAME## ##SCRIPTRESULT## ##CODE##</P>
##TPLFOOTER##
