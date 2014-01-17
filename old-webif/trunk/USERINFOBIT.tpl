<!--OSCam;251290176;1.20-unstable_svn;9365;-->
<TABLE CLASS="statususerinfo ##DISPLAYUSERINFO##">
	<TR><TH COLSPAN="7" CLASS="nameinfo">Users info</TH></TR>
	<TR>
		<TH>Users</TH>
		<TD CLASS="centered"><B>Total :</B>&nbsp;##TOTAL_USERS##</TD>
		<TD CLASS="centered"><B>Active :</B>&nbsp;##TOTAL_ACTIVE##</TD>
		<TD CLASS="centered"><B>Online :</B>&nbsp;##TOTAL_ONLINE##</TD>
		<TD CLASS="centered"><B>Connected :</B>&nbsp;##TOTAL_CONNECTED##</TD>
		<TD CLASS="centered"><B>Disabled :</B>&nbsp;##TOTAL_DISABLED##</TD>
		<TD CLASS="centered"><B>Expired :</B>&nbsp;##TOTAL_EXPIRED##</TD>
	</TR>
	<TR>
</TABLE>
<TABLE CLASS="statususerinfo ##DISPLAYUSERINFO##">
	<TR><TH COLSPAN="6" CLASS="nameinfo">ECM info</TH></TR>
	<TR>
		<TH>Good</TH>
		<TD CLASS="centered" TITLE="Delivered ECM with status OK"><B>OK :</B>&nbsp;##TOTAL_CWOK##&nbsp;(##REL_CWOK##%)</TD>
		<TD CLASS="centered" TITLE="Delivered ECM from tunneled, part of OK"><B>TUN :</B>&nbsp;##TOTAL_CWTUN##&nbsp;(##REL_CWTUN##%)</TD>
		<TD CLASS="centered" TITLE="Delivered ECM from cache, part of OK"><B>CACHE&nbsp;1,2,3 :</B>&nbsp;##TOTAL_CWCACHE##&nbsp;(##REL_CWCACHE##%)</TD>
		<TD ROWSPAN="2" CLASS="centered"><B>Reset :</B>
			<A HREF="status.html?action=resetserverstats" TITLE="Reset statistics for server">
				<IMG class="icon" SRC="image?i=ICRES" ALT="Reset Server Stats">
			</A>
		</TD>
	</TR>
	<TR>
		<TH>Bad</TH>
		<TD CLASS="centered" TITLE="Delivered ECM with status not OK"><B>NOK :</B>&nbsp;##TOTAL_CWNOK##&nbsp;(##REL_CWNOK##%)</TD>
		<TD CLASS="centered" TITLE="Timeout ECM, part of NOK"><B>TOUT :</B>&nbsp;##TOTAL_CWTOUT##&nbsp;(##REL_CWTOUT##%)</TD>
		<TD CLASS="centered" TITLE="Ignored ECM by filters, part of NOK"><B>IGN :</B>&nbsp;##TOTAL_CWIGN##&nbsp;(##REL_CWIGN##%)</TD>
	</TR>
</TABLE>