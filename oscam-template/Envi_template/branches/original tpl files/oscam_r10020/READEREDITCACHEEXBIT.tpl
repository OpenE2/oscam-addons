<!--OSCam;2049209829;1.20-unstable_svn;10020;CS_CACHEEX-->
			<TR><TH COLSPAN="2">CacheEX</TH></TR>
				<TR><TD><A>Cache-EX-Mode:</A></TD>
					<TD><select name="cacheex">
							<option value="0" ##CACHEEXSELECTED0##>0 - No CacheEX</option>
							<option value="1" ##CACHEEXSELECTED1##>1 - CACHE PULL</option>
							<option value="2" ##CACHEEXSELECTED2##>2 - CACHE PUSH</option>
							<option value="3" ##CACHEEXSELECTED3##>3 - REVERSE CACHE PUSH</option>
						</select>
					</TD>
				</TR>
				<TR><TD><A>Cache-EX Maxhop:</A></TD><TD><input name="cacheex_maxhop" type="text" class="short" maxlength="4" value="##CACHEEX_MAXHOP##"></TD></TR>
				<TR><TD><A>Cache-EX 2 ECM filter:</A></TD><TD><input name="cacheex_ecm_filter" type="text" maxlength="320" value="##CACHEEX_ECM_FILTER##"></TD></TR>
				<TR><TD><A>Cache-EX 2 filter adv.:</A></TD>
					<TD CLASS="invisible">
						<TABLE>
							<TR>
								<TD><input name="cacheex_drop_csp" value="0" type="hidden"><input name="cacheex_drop_csp" value="1" type="checkbox" ##DCCHECKED##><label>drop csp cache</label></TD>
								<TD><input name="cacheex_allow_request" value="0" type="hidden"><input name="cacheex_allow_request" value="1" type="checkbox" ##ARCHECKED##><label>allow request</label></TD>
								<TD><input name="cacheex_allow_filter" value="0" type="hidden"><input name="cacheex_allow_filter" value="1" type="checkbox" ##AFCHECKED##><label>allow filter</label></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
