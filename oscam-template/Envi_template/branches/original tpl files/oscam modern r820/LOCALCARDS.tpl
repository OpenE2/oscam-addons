<!--OSCam;3101840666;1.20-unstable_svn;983;WITH_CARDREADER-->
			<TR><TD>##TPLHELPPREFIX##conf#waitforcards##TPLHELPSUFFIX##Wait for cards:</A></TD>
				<TD>
					<input name="waitforcards" type="hidden" value="0"><input name="waitforcards" type="checkbox" value="1" ##WAITFORCARDSCHECKED##>&nbsp;disable client logins while card-init
				</TD>
			</TR>
			<TR><TD>##TPLHELPPREFIX##conf#waitforcards_extra_delay##TPLHELPSUFFIX##Wait for cards delay:</A></TD><TD><input name="waitforcards_extra_delay" type="text" size="5" maxlength="5" value="##EXTRADELAY##"> ms</TD></TR>
			<TR><TD>##TPLHELPPREFIX##conf#preferlocalcards##TPLHELPSUFFIX##Prefer local cards:</A></TD><TD><select name="preferlocalcards"><option value="0">0 - local cards like proxied</option><option value="1" ##PREFERCACHEEX##>1 - prefer cache-ex then local cards</option><option value="2" ##PREFERLOCALCARDS##>2 - prefer local cards above cache-ex</option></select></TD></TR>
