<!--OSCam;282246979;1.20-unstable_svn;9173;WITH_LB-->
##TPLHEADER##
##TPLMENU##
##TPLCONFIGMENU##
##TPLMESSAGE##
	<form action="config.html" method="get">
		<input name="part" type="hidden" value="loadbalancer">
		<input name="action" type="hidden" value="execute">
		<TABLE CLASS="config">
			<TR><TH COLSPAN="2">Edit Loadbalancer Config</TH></TR>
			<TR><TD>##TPLHELPPREFIX##conf#lb_mode##TPLHELPSUFFIX##Loadbalance Mode:</A></TD>
				<TD>
					<select name="lb_mode">
						<option value="0" ##LBMODE0##>0 - Loadbalancer disabled (send to all readers)</option>
						<option value="1" ##LBMODE1##>1 - Fastest reader first</option>
						<option value="2" ##LBMODE2##>2 - Oldest reader first</option>
						<option value="3" ##LBMODE3##>3 - Lowest usagelevel</option>
					</select>
				</TD>
			</TR>
			<TR><TD>##TPLHELPPREFIX##conf#lb_save##TPLHELPSUFFIX##Loadbalance save every:</A></TD><TD><input name="lb_save" type="text" size="5" maxlength="5" value="##LBSAVE##"> ECM's</TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#lb_savepath##TPLHELPSUFFIX##Statistics save path:</A></TD><TD><input name="lb_savepath" type="text" size="63" maxlength="128" value="##LBSAVEPATH##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#lb_nbest_readers##TPLHELPSUFFIX##Number of best readers:</A></TD><TD><input name="lb_nbest_readers" type="text" size="5" maxlength="5" value="##LBNBESTREADERS##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#lb_nbest_percaid##TPLHELPSUFFIX##Number of best readers per caid:</A></TD><TD><input name="lb_nbest_percaid" type="text" size="63" maxlength="320" value="##LBNBESTPERCAID##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#lb_nfb_readers##TPLHELPSUFFIX##Number of fallback readers:</A></TD><TD><input name="lb_nfb_readers" type="text" size="5" maxlength="5" value="##LBNFBREADERS##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#lb_max_readers##TPLHELPSUFFIX##Max Readers:</A></TD><TD><input name="lb_max_readers" type="text" size="5" maxlength="5" value="##LBMAXREADERS##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#lb_min_ecmcount##TPLHELPSUFFIX##Min ECM count:</A></TD><TD><input name="lb_min_ecmcount" type="text" size="5" maxlength="5" value="##LBMINECMCOUNT##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#lb_max_ecmcount##TPLHELPSUFFIX##Max ECM count:</A></TD><TD><input name="lb_max_ecmcount" type="text" size="5" maxlength="5" value="##LBMAXECEMCOUNT##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#lb_retrylimit##TPLHELPSUFFIX##Retry limit:</A></TD><TD><input name="lb_retrylimit" type="text" size="5" maxlength="5" value="##LBRETRYLIMIT##"> ms</TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#lb_retrylimits##TPLHELPSUFFIX##Special retry limit per caid:</A></TD><TD><input name="lb_retrylimits" type="text" size="63" maxlength="320" value="##LBRETRYLIMITS##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#lb_reopen_seconds##TPLHELPSUFFIX##Time to reopen:</A></TD><TD><input name="lb_reopen_seconds" type="text" size="5" maxlength="5" value="##LBREOPENSECONDS##"> s</TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#lb_stat_cleanup##TPLHELPSUFFIX##Hours to cleanup older than:</A></TD><TD><input name="lb_stat_cleanup" type="text" size="5" maxlength="5" value="##LBCLEANUP##"> h</TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#lb_noproviderforcaid##TPLHELPSUFFIX##Ignore provider for:</A></TD><TD><input name="lb_noproviderforcaid" type="text" size="63" maxlength="160" value="##LBNOPROVIDERFORCAID##"></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#lb_auto_betatunnel##TPLHELPSUFFIX##Auto Betatunnel:</A></TD><TD><select name="lb_auto_betatunnel"><option value="0">NO</option><option value="1" ##LBAUTOBETATUNNEL##>YES</option></select></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#lb_auto_betatunnel_mode##TPLHELPSUFFIX##Auto Betatunnel Mode:</A></TD><TD><select name="lb_auto_betatunnel_mode"><option value="0">0 - 18XX->17X2 (only)</option><option value="1" ##LBAUTOBETATUNNELMODE1##>1 - 18XX->17X2 & 17X2->18XX (1833/1801)</option><option value="2" ##LBAUTOBETATUNNELMODE2##>2 - 18XX->17X2 & 17X2->18XX (1833/1834)</option><option value="3" ##LBAUTOBETATUNNELMODE3##>3 - 18XX->17X2 & 17X2->18XX (1833/1835)</option><option value="4" ##LBAUTOBETATUNNELMODE4##>4 - 17X2->18XX (1833/1801 only)</option><option value="5" ##LBAUTOBETATUNNELMODE5##>5 - 17X2->18XX (1833/1834 only)</option><option value="6" ##LBAUTOBETATUNNELMODE6##>6 - 17X2->18XX (1833/1835 only)</option></select></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#lb_auto_betatunnel_prefer_beta##TPLHELPSUFFIX##Prefer Beta over Nagra:</A></TD><TD><input name="lb_auto_betatunnel_prefer_beta" type="text" size="5" maxlength="5" value="##LBPREFERBETA##"> %</TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#lb_auto_timeout##TPLHELPSUFFIX##Auto timeout:</A></TD><TD><select name="lb_auto_timeout"><option value="0">NO</option><option value="1" ##LBAUTOTIMEOUT##>YES</option></select></TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#lb_auto_timeout_p##TPLHELPSUFFIX##Auto timeout percent:</A></TD><TD><input name="lb_auto_timeout_p" type="text" size="5" maxlength="5" value="##LBAUTOTIMEOUTP##"> %</TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#lb_auto_timeout_t##TPLHELPSUFFIX##Auto timeout time:</A></TD><TD><input name="lb_auto_timeout_t" type="text" size="5" maxlength="5" value="##LBAUTOTIMEOUTT##"> ms</TD></TR>
			<TR><TD COLSPAN="2" ALIGN="right"><input type="submit" value="Save" title="Save settings" ##BTNDISABLED##></TD></TR>
		</TABLE>
	</form>
	<form action="config.html" method="get">
	<input name="part" type="hidden" value="loadbalancer">
	<TABLE CLASS="config upspace">
		<TR><TH COLSPAN="5">Control</TH></TR>
		<TR>
			<TD CLASS="centered"><input type="submit" name="button" value="Load Stats" ##BTNDISABLED##></TD>
			<TD CLASS="centered"><input type="submit" name="button" value="Save Stats" ##BTNDISABLED##></TD>
			<TD CLASS="centered"><input type="submit" name="button" value="Clear Stats" ##BTNDISABLED##></TD>
			<TD CLASS="centered"><input type="submit" name="button" value="Clear Timeouts" ##BTNDISABLED##></TD>
			<TD CLASS="centered"><input type="submit" name="button" value="Clear Not Founds" ##BTNDISABLED##></TD>
		</TR>
	</TABLE>
	</form>
##TPLFOOTER##
