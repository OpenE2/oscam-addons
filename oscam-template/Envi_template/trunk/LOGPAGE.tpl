<!--OSCam;110312372;1.20-unstable_svn;9687;WEBIF_LIVELOG-->
##TPLHEADERSHORT##
	<script type="text/javascript">
	// beginn parameters
	var maxloglines = 1000;
	var pollintervall = 1000;
	var aniduration = 10;
	// end parameters - do not change things below

	var page = 'livelog';
	var jsonurl = 'logpoll.html';
	var parameters = "?lastid=0";
	var lastdebuglevel = 0;
	var stoppoll = 0;

	</script>
##TPLBODY##
##TPLMENU##
<DIV ID="subnav" style="display:none">
	<UL ID="nav"><LI></LI></UL>
</DIV>
##TPLMESSAGE##
	<DIV ID="livelog">
		<UL ID="livelogdata" title="Scroll stopped, because mouse stands over log-window !!!"></UL>
	</DIV>
	<DIV ID="regex">
		<P class="regexdata_nav" id="save"><a href="#" download="log.txt" id="savelog"><input type="submit" value="Save Log" title="Save Log"></a>&nbsp;&nbsp;<input ID="showhidesettings" type="submit" value="Show Settings" title="Show/Hide Settings">&nbsp;&nbsp;<input ID="stoplog" type="submit" value="Stop Log" title="Stop/Start Log"></P>
		<DIV ID="regexdata" style="display:none;">
##LOG_DEBUGMENU##
			<UL ID="regexdatainput">
				<LI class="regex">Search1: <input type="text" name="regex1" class="regexinput" ID="regex1" value=""><label> Found only: </label><input type="checkbox" id="whitelisted1"><label> Hide: </label><input type="checkbox" id="hidden1"> Back Color: <input size="7" maxlength="7" type="text" name="color1" class="colorinput" ID="color1" value=""> Color: <input size="7" maxlength="7" type="text" name="fcolor1" class="colorinput" ID="fcolor1" value=""></LI>
				<LI class="regex">Search2: <input type="text" name="regex2" class="regexinput" ID="regex2" value=""><label> Found only: </label><input type="checkbox" id="whitelisted2"><label> Hide: </label><input type="checkbox" id="hidden2"> Back Color: <input size="7" maxlength="7" type="text" name="color2" class="colorinput" ID="color2" value=""> Color: <input size="7" maxlength="7" type="text" name="fcolor2" class="colorinput" ID="fcolor2" value=""></LI>
				<LI class="regex">Search3: <input type="text" name="regex3" class="regexinput" ID="regex3" value=""><label> Found only: </label><input type="checkbox" id="whitelisted3"><label> Hide: </label><input type="checkbox" id="hidden3"> Back Color: <input size="7" maxlength="7" type="text" name="color3" class="colorinput" ID="color3" value=""> Color: <input size="7" maxlength="7" type="text" name="fcolor3" class="colorinput" ID="fcolor3" value=""></LI>
				<LI class="regex">Search4: <input type="text" name="regex4" class="regexinput" ID="regex4" value=""><label> Found only: </label><input type="checkbox" id="whitelisted4"><label> Hide: </label><input type="checkbox" id="hidden4"> Back Color: <input size="7" maxlength="7" type="text" name="color4" class="colorinput" ID="color4" value=""> Color: <input size="7" maxlength="7" type="text" name="fcolor4" class="colorinput" ID="fcolor4" value=""></LI>
				<LI class="regex">Search5: <input type="text" name="regex5" class="regexinput" ID="regex5" value=""><label> Found only: </label><input type="checkbox" id="whitelisted5"><label> Hide: </label><input type="checkbox" id="hidden5"> Back Color: <input size="7" maxlength="7" type="text" name="color5" class="colorinput" ID="color5" value=""> Color: <input size="7" maxlength="7" type="text" name="fcolor5" class="colorinput" ID="fcolor5" value=""></LI>
				<LI class="regexdata_save"><input ID="regexreset" type="submit" value="Reset all" title="Reset all">&nbsp;&nbsp;<input ID="regexok" type="submit" value="Save" title="Save"></LI>
			</UL>
		</DIV>
	</DIV>
##TPLFOOTER##
