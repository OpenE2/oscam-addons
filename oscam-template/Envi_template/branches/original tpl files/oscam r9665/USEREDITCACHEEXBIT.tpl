<!--OSCam;3544318179;1.20-unstable_svn;9665;CS_CACHEEX-->
				<TR><TH COLSPAN="2">CacheEX</TH></TR>
				<TR><TD>##TPLHELPPREFIX##user#cacheex##TPLHELPSUFFIX##Cache-EX-Mode:</A></TD>
					<TD><select name="cacheex">
							<option value="0" ##CACHEEXSELECTED0##>0 - No CacheEX</option>
							<option value="1" ##CACHEEXSELECTED1##>1 - CACHE PULL</option>
							<option value="2" ##CACHEEXSELECTED2##>2 - CACHE PUSH</option>
							<option value="3" ##CACHEEXSELECTED3##>3 - REVERSE CACHE PUSH</option>
						</select>
					</TD>
				</TR>
				<TR><TD>##TPLHELPPREFIX##user#cacheex_maxhop##TPLHELPSUFFIX##Cache-EX Maxhop:</A></TD><TD><input name="cacheex_maxhop" type="text" size="4" maxlength="4" value="##CACHEEX_MAXHOP##"></TD></TR>
				<TR><TD>##TPLHELPPREFIX##user#no_wait_time##TPLHELPSUFFIX##No Wait Time:</A><TD><input name="no_wait_time" value="0" type="hidden"><input name="no_wait_time" value="1" type="checkbox" ##NWTCHECKED##>no wait time</TD></TR>
				<TR><TD>##TPLHELPPREFIX##user#cacheex_ecm_filter##TPLHELPSUFFIX##Cache-EX 3 ECM filter:</A></TD><TD><input name="cacheex_ecm_filter" type="text" size="63" maxlength="320" value="##CACHEEX_ECM_FILTER##"></TD></TR>
				<TR><TD>##TPLHELPPREFIX##user#cacheex_filter_adv##TPLHELPSUFFIX##Cache-EX 3 filter adv.:</A></TD>
					<TD>
						<TABLE CLASS="invisible">
							<TR>
								<TD><input name="cacheex_drop_csp" value="0" type="hidden"><input name="cacheex_drop_csp" value="1" type="checkbox" ##DCCHECKED##>drop csp cache</TD>
								<TD><input name="cacheex_allow_request" value="0" type="hidden"><input name="cacheex_allow_request" value="1" type="checkbox" ##ARCHECKED##>allow request</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>