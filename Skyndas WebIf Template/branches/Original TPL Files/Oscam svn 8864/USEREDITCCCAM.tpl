<!--OSCam;3590669054;1.20-unstable_svn;8864;MODULE_CCCAM-->
			<TR><TH>&nbsp;</TH><TH>User specific settings for CCcam</TH></TR>
				<TR><TD>##TPLHELPPREFIX##user#cccmaxhops##TPLHELPSUFFIX##CCC Maxhops:</A></TD><TD><input name="cccmaxhops" type="text" size="3" maxlength="2" value="##CCCMAXHOPS##"></TD></TR>
				<TR><TD>##TPLHELPPREFIX##user#cccreshare##TPLHELPSUFFIX##CCC Reshare:</A></TD><TD><input name="cccreshare" type="text" size="3" maxlength="2" value="##CCCRESHARE##">
					&nbsp;Global CCCam Reshare:<SPAN CLASS="global_conf" TITLE="This value is used if CCC Reshare = -1"><A HREF="config.html?part=cccam">##RESHARE##</A></SPAN></TD></TR>
				<TR><TD>##TPLHELPPREFIX##user#cccignorereshare##TPLHELPSUFFIX##CCC Ignore reshare:</A></TD><TD>
				<SELECT NAME="cccignorereshare">
					<OPTION VALUE="-1" ##CCCIGNRSHRSELECTED-1##>-1 - Use Global CCcam Ignore Reshare value</OPTION>
					<OPTION VALUE="0"  ##CCCIGNRSHRSELECTED0## >&nbsp;0 - Use reshare level of Server</OPTION>
					<OPTION VALUE="1"  ##CCCIGNRSHRSELECTED1## >&nbsp;1 - Use reshare level of Reader or User</OPTION>
				</SELECT>
				&nbsp;Global Ignore Reshare value:<SPAN CLASS="global_conf" TITLE="This value is used if CCC Ignore reshare = -1"><A HREF="config.html?part=cccam">##CFGIGNORERESHARE##</A></SPAN>
				</TD></TR>
				<TR><TD>##TPLHELPPREFIX##user#cccstealth##TPLHELPSUFFIX##CCC stealth:</A></TD><TD>
				<SELECT NAME="cccstealth">
					<OPTION VALUE="-1" ##CCCSTEALTHSELECTED-1##>GLOBAL: Use Global CCcam Stealth value</OPTION>
					<OPTION VALUE="0"  ##CCCSTEALTHSELECTED0## >DISABLE: Use extended OSCam<->CCcam Protocol</OPTION>
					<OPTION VALUE="1"  ##CCCSTEALTHSELECTED1## >ENABLE: Behaviour like the original CCcam Protocol</OPTION>
				</SELECT>
				&nbsp;Global CCcam Stealth value:<SPAN CLASS="global_conf"><A HREF="config.html?part=cccam">##STEALTH##</A></SPAN>
				</TD></TR>
