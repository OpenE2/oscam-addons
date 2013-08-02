<!--OSCam;1895922925;1.20-unstable_svn;8785;-->
##TPLHEADER##
##TPLMENU##
##TPLFILEMENU##
##TPLMESSAGE##
  <DIV CLASS="debugmenu">##SDEBUG##</DIV>	
  <DIV CLASS="logmenu">##LOGMENU##</DIV>	
  <DIV CLASS="filterform">##FILTERFORM##</DIV>	
  <FORM ACTION="files.html" method="post">
    <INPUT TYPE="hidden" NAME="file" VALUE="##PART##">
        <TEXTAREA NAME="filecontent" CLASS="editor" rows="50" cols="200">##FILECONTENT##</TEXTAREA>
        <BR><BR>##WRITEPROTECTION##<BR><BR>
    <INPUT TYPE="submit" NAME="action" VALUE="Save" TITLE="Save file" ##BTNDISABLED##>
  </FORM>
##TPLFOOTER##
