<!--OSCam;4178047402;1.20-unstable_svn;10020;WITH_LB-->
		<input name="part" type="hidden" value="loadbalancer">
		<TABLE CLASS="config">
			<TR><TH COLSPAN="2">Edit Loadbalancer Config</TH></TR>
			<TR><TD><A>Loadbalance Mode:</A></TD>
				<TD>
					<select name="lb_mode">
						<option value="0" ##LBMODE0##>0 - Loadbalancer disabled (send to all readers)</option>
						<option value="1" ##LBMODE1##>1 - Fastest reader first</option>
						<option value="2" ##LBMODE2##>2 - Oldest reader first</option>
						<option value="3" ##LBMODE3##>3 - Lowest usage level</option>
						<option value="10" ##LBMODE10##>10 - Log statistics only</option>
					</select>
				</TD>
			</TR>
			<TR><TD><A>Loadbalance save every:</A></TD><TD><input name="lb_save" class="withunit short" type="text" maxlength="5" value="##LBSAVE##"> ECM's</TD></TR>
			<TR><TD><A>Statistics save path:</A></TD><TD><input name="lb_savepath" type="text" maxlength="128" value="##LBSAVEPATH##"></TD></TR>
			<TR><TD><A>Number of best readers:</A></TD><TD><input name="lb_nbest_readers" class="short" type="text" maxlength="5" value="##LBNBESTREADERS##"></TD></TR>
			<TR><TD><A>Number of best readers per caid:</A></TD><TD><input name="lb_nbest_percaid" type="text" maxlength="320" value="##LBNBESTPERCAID##"></TD></TR>
			<TR><TD><A>Number of fallback readers:</A></TD><TD><input name="lb_nfb_readers" class="short" type="text" maxlength="5" value="##LBNFBREADERS##"></TD></TR>
			<TR><TD><A>Max Readers:</A></TD><TD><input name="lb_max_readers" class="short" type="text" maxlength="5" value="##LBMAXREADERS##"></TD></TR>
			<TR><TD><A>Min ECM count:</A></TD><TD><input name="lb_min_ecmcount" class="short" type="text" maxlength="5" value="##LBMINECMCOUNT##"></TD></TR>
			<TR><TD><A>Max ECM count:</A></TD><TD><input name="lb_max_ecmcount" class="short" type="text" maxlength="5" value="##LBMAXECEMCOUNT##"></TD></TR>
			<TR><TD><A>Retry limit:</A></TD><TD><input name="lb_retrylimit" class="withunit short" type="text" maxlength="5" value="##LBRETRYLIMIT##"> ms</TD></TR>
			<TR><TD><A>Special retry limit per caid:</A></TD><TD><input name="lb_retrylimits" type="text" maxlength="320" value="##LBRETRYLIMITS##"></TD></TR>
			<TR><TD><A>Time to reopen:</A></TD><TD><input name="lb_reopen_seconds" class="withunit short" type="text" maxlength="5" value="##LBREOPENSECONDS##"> s</TD></TR>
			<TR><TD><A>Hours to cleanup older than:</A></TD><TD><input name="lb_stat_cleanup" class="withunit short" type="text" maxlength="5" value="##LBCLEANUP##"> h</TD></TR>
			<TR><TD><A>Reopen Invalid:</A></TD><TD><input name="lb_reopen_invalid" value="0" type="hidden"><input name="lb_reopen_invalid" value="1" type="checkbox" ##LBREOPENINVALID##><label></label></TD></TR>
			<TR><TD><A>Force always reopen:</A></TD><TD><input name="lb_force_reopen_always" value="0" type="hidden"><input name="lb_force_reopen_always" value="1" type="checkbox" ##LBFORCEALWAYS##><label></label></TD></TR>
			<TR><TD><A>Ignore provider for:</A></TD><TD><input name="lb_noproviderforcaid" type="text" maxlength="160" value="##LBNOPROVIDERFORCAID##"></TD></TR>
			<TR><TD><A>Auto Betatunnel:</A></TD><TD><input name="lb_auto_betatunnel" value="0" type="hidden"><input name="lb_auto_betatunnel" value="1" type="checkbox" ##LBAUTOBETATUNNEL##><label></label></TD></TR>
			<TR><TD><A>Auto Betatunnel Mode:</A></TD><TD><select name="lb_auto_betatunnel_mode"><option value="0">0 - 18XX->17X2 (only)</option><option value="1" ##LBAUTOBETATUNNELMODE1##>1 - 18XX->17X2 &amp; 17X2->18XX (1833/1801)</option><option value="2" ##LBAUTOBETATUNNELMODE2##>2 - 18XX->17X2 &amp; 17X2->18XX (1833/1834)</option><option value="3" ##LBAUTOBETATUNNELMODE3##>3 - 18XX->17X2 &amp; 17X2->18XX (1833/1835)</option><option value="4" ##LBAUTOBETATUNNELMODE4##>4 - 17X2->18XX (1833/1801 only)</option><option value="5" ##LBAUTOBETATUNNELMODE5##>5 - 17X2->18XX (1833/1834 only)</option><option value="6" ##LBAUTOBETATUNNELMODE6##>6 - 17X2->18XX (1833/1835 only)</option></select></TD></TR>
			<TR><TD><A>Prefer Beta over Nagra:</A></TD><TD><input name="lb_auto_betatunnel_prefer_beta" class="withunit short" type="text" maxlength="5" value="##LBPREFERBETA##"> %</TD></TR>
			<TR><TD><A>Auto timeout:</A></TD><TD><input name="lb_auto_timeout" value="0" type="hidden"><input name="lb_auto_timeout" value="1" type="checkbox" ##LBAUTOTIMEOUT##><label></label></TD></TR>
			<TR><TD><A>Auto timeout percent:</A></TD><TD><input name="lb_auto_timeout_p" class="withunit short" type="text" maxlength="5" value="##LBAUTOTIMEOUTP##"> %</TD></TR>
			<TR><TD><A>Auto timeout time:</A></TD><TD><input name="lb_auto_timeout_t" class="withunit short" type="text" maxlength="5" value="##LBAUTOTIMEOUTT##"> ms</TD></TR>
