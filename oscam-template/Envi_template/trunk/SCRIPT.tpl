<!--OSCam;906305429;1.20-unstable_svn;9681;-->
##TPLHEADER##
##TPLMENU##
		<DIV ID="subnav" style="display:none">
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
		<P ID="filesubmit">##SCRIPTNAME## ##SCRIPTRESULT## ##CODE##</P>
##TPLFOOTER##