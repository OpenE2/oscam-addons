<!--OSCam;171217362;1.20-unstable_svn;9102;-->
##TPLHEADER##
##TPLMENU##
	<DIV class="warning">
    <P>
      <UL>
        <LI>Do you really want to shutdown&#47; restart oscam?</LI>
        <LI>All users will become disconnected.</LI>
        <LI>If you use &#39;Shutdown&#39; you will not be able to restart oscam from webinterface.</LI>
        <LI>The webinterface will try to connect to oscam once a few seconds after shutdown&#47; restart.</LI>
      </UL>
    </P>
	</DIV>
	<FORM action="shutdown.html" method="get">
		<INPUT type="submit" name="action" value="Shutdown" title="Shutdown OSCam" ##BTNDISABLED##>
		<INPUT type="submit" name="action" value="Restart" title="Restart OSCam" ##BTNDISABLED##>
	</FORM>
##TPLFOOTER##
