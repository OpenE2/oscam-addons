<!--OSCam;3529616210;1.20-unstable_svn;9365;-->
##TPLHEADER##
##TPLMENU##
##TPLFILEMENU##
<SCRIPT LANGUAGE="JavaScript">function gotosite(){var URL = document.gotoform.url_list.options[document.gotoform.url_list.selectedIndex].value; window.location.href = URL;}</script>
<P ID="filename"><script type="text/javascript">var str = location.href;var filename = str.split('=', 2);document.write(filename[1]);</script></P>
##TPLMESSAGE##
##SDEBUG##
	<DIV CLASS="logmenu">##LOGMENU##</DIV>
	<DIV CLASS="filterform">##FILTERFORM##</DIV>
	<form action="files.html" method="post">
		<input type="hidden" name="file" value="##PART##">
		<textarea name="filecontent" class="editor" rows="50" cols="200">##FILECONTENT##</textarea>
		<BR><BR>##WRITEPROTECTION##<BR><BR>
		<input type="submit" name="action" value="Save" title="Save file" ##BTNDISABLED##>
	</form>
##TPLFOOTER##