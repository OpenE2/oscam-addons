	</DIV> <!-- End content -->
	<DIV CLASS="footer" ID="footer">
		<DIV CLASS="top_link"><a href="#_top">TOP</a></DIV>
		<UL CLASS="textfooter">
			<LI CLASS="developed"><B>OSCAM Webinterface developed by Streamboard Team</B></LI>
			<LI>
				<UL>
					<LI><B>Current Time:</B><SPAN ID="curtime"> ##CURDATE## | ##CURTIME## </SPAN></LI>
					<LI><B>Start Time:</B> ##STARTDATE## | ##STARTTIME## </LI>
					<LI><B>Run Time:</B><SPAN ID="runtime"> ##RUNTIME##</SPAN></LI>
				</UL>	
			</LI>
			<LI>
				<UL>
					<LI><B>Process ID:</B> ##PROCESSID## </LI>
					<LI><B>Access from:</B> ##CURIP## </LI>
					<LI><B>Run as:</B> ##RUNAS##</LI>
					<LI><B>##UPTIMETXT##</B><SPAN ID="uptime"> ##UPTIME##</SPAN></LI>
				</UL>	
			</LI>
			<LI>
				<UL>
					<LI><B>OSCAM:</B> ##CS_VERSION## </LI>
					<LI><B>Build:</B> r##CS_SVN_VERSION## </LI>
					<LI><B>Compiler:</B> ##CS_TARGET##</LI>
				</UL>
			</LI>
			<LI CLASS="styleauthor">&copy;2014 Designed by: <B></B></LI>
			<LI><A NAME="statusfooter"></A></LI>
		</UL>
		<DIV CLASS="demo_changer">
			<DIV style="display: table-cell;">
				<DIV ID="demo_icon" CLASS="demo_icon"></DIV>
			</DIV>
			<DIV CLASS="form_holder">
				<DIV CLASS="styleswitcher">
					<DIV CLASS="section-label">STYLE SWITCHER
						<DIV CLASS="sectioninfo">
							<DIV CLASS="sectioninfo_detail">
								Style switcher used cookie system. To function properly, you must have cookies enabled in your browser. All Cookie is set to 365 days.
							</DIV>
						</DIV>
					</DIV>
					<UL CLASS="addClass">
						<LI><A HREF="#" VALUE="original">Original WebIf</A></LI>
						<LI><A HREF="#" VALUE="envi">Envi Template</A></LI>
					</UL>
				</DIV>
				<DIV ID="switchersettings">
					<DIV CLASS="section-label">Template color style
						<DIV HREF="#" CLASS="sectioninfo">
							<DIV CLASS="sectioninfo_detail">
								Color settings of WebIf.Colors settings in the following elements:
								<UL>
									<LI>Text in Main menu and Submenu</LI>
									<LI>Text in links</LI>
									<LI>Background colors for "hover" in tables</LI>
									<LI>Background colors for icons</LI>
								</UL>
							</DIV>
						</DIV>
					</DIV>
					<UL CLASS="colchange">
						<LI ID="col_1" CLASS='colchange_1' TITLE="Teal"></LI>
						<LI ID="col_2" CLASS='colchange_2' TITLE="Orange"></LI>
						<LI ID="col_3" CLASS='colchange_3' TITLE="Yellow"></LI>
						<LI ID="col_4" CLASS='colchange_4' TITLE="Green"></LI>
						<LI ID="col_5" CLASS='colchange_5' TITLE="Pink"></LI>
					</UL>
					<DIV CLASS="section-label">Background color
						<DIV HREF="#" CLASS="sectioninfo">
							<DIV CLASS="sectioninfo_detail">
								For more information about this you use "Envi Tips and Tricks" in "Info about Envi Template
"
							</DIV>
						</DIV>
					</DIV>
					<UL CLASS="backchange">
						<LI ID="back_1" CLASS='background_1' TITLE="White"></LI>
						<LI ID="back_2" CLASS='background_2' TITLE="5% Black"></LI>
						<LI ID="back_3" CLASS='background_3' TITLE="35% Black"></LI>
						<LI ID="back_4" CLASS='background_4' TITLE="80% Black"></LI>
						<LI ID="back_5" CLASS='background_5' TITLE="90% Black"></LI>
					</UL>
					<DIV CLASS="section-label">Patterns
						<DIV HREF="#" CLASS="sectioninfo">
							<DIV CLASS="sectioninfo_detail">
								For more information about this you use "Envi Tips and Tricks" in "Info about Envi Template
"
							</DIV>
						</DIV>
					</DIV>
					<UL CLASS="patchange">
						<LI ID="pat_1" CLASS='patchange_1' TITLE="Diagonal line - transparent"></LI>
						<LI ID="pat_2" CLASS='patchange_2' TITLE="Diamond - transparent"></LI>
						<LI ID="pat_3" CLASS='patchange_3' TITLE="Dots - transparent"></LI>
						<LI ID="pat_4" CLASS='patchange_4' TITLE="Squares 1 - transparent"></LI>
						<LI ID="pat_5" CLASS='patchange_5' TITLE="Squares 2 - transparent"></LI>
						<LI ID="pat_6" CLASS='patchange_6' TITLE=""></LI>
						<LI ID="pat_7" CLASS='patchange_7' TITLE=""></LI>
						<LI ID="pat_8" CLASS='patchange_8' TITLE=""></LI>
						<LI ID="pat_9" CLASS='patchange_9' TITLE=""></LI>
						<LI ID="pat_10" CLASS='patchange_10' TITLE=""></LI>
					</UL>
					<DIV CLASS="section-label">Other settings
						<DIV HREF="#" CLASS="sectioninfo">
							<DIV CLASS="sectioninfo_detail">
								You can set the font for text, rotate logo or reset all settings.
							</DIV>
						</DIV>
					</DIV>
					<TABLE CLASS="otherchange">
						<TR>
							<TD>Menu font:</TD>
							<TD>
								<select id="menufontfamily">
									<option value="Arial">Default</option>
									<option value="Courier New">Courier New</option>
									<option value="Droid Sans">Droid Sans</option>
									<option value="Garamond">Garamond</option>
									<option value="Georgia">Georgia</option>
									<option value="Lucida Sans Unicode">Lucida</option>
									<option value="Palatino Linotype">Palatino</option>
									<option value="Tahoma">Tahoma</option>
									<option value="Trebuchet MS">Trebuchet</option>
									<option value="Verdana">Verdana</option>
									
								</select>
							</TD>
						</TR>
						<TR>
							<TD>Menu font size:</TD>
							<TD>
								<select id="menufontsize">
									<option value="12px">Default</option>
									<option value="13px">13px</option>
									<option value="14px">14px</option>
								</select>
							</TD>
						</TR>
						<TR>
							<TD>Body font:</TD>
							<TD>
								<select id="bodyfontfamily">
									<option value="Arial">Default</option>
									<option value="Droid Sans">Droid Sans</option>
									<option value="Garamond">Garamond</option>
									<option value="Georgia">Georgia</option>
									<option value="Lucida Sans Unicode">Lucida</option>
									<option value="Palatino Linotype">Palatino</option>
									<option value="Tahoma">Tahoma</option>
									<option value="Trebuchet MS">Trebuchet</option>
								</select>
							</TD>
						</TR>
						<TR>
							<TD COLSPAN="2">
								<input id="rotatelogo" type="checkbox" class="rotatelogo" name="rotatelogo">
								<label for="rotatelogo">Rotate Oscam logo</label>
							</TD>
						</TR>
						<TR>
							<TD COLSPAN="2">
								<input id="reset" value="Reset all value" type="reset">
							</TD>
						</TR>
					</TABLE>
				</DIV>
				<DIV CLASS="line"></DIV>
				<DIV CLASS="envi_info">
					<A HREF="#openModal">Show info about Envi Template</A>
					<DIV ID="openModal" CLASS="modalDialog">
						<DIV>
							<A HREF="#close" TITLE="Close" CLASS="close">X</A>
							<H2>Info about Envi Template</H2>
							<HR>
							<P><B>Envi revision:</B> 1259</P>
							<P><B>For oscam revision:</B> 10081 until to changes in html and css in revision Oscam</P>
							<TABLE>
								<TR>
									<TD>Wiki:</TD>
									<TD><A HREF="http://www.streamboard.tv/oscam-addons/wiki/Envi_WebIf_Template" TARGET="_blank">Wiki Envi Template</A></TD>
								</TR>
								<TR>
									<TD>Envi Tips and Tricks:</TD>
									<TD><A HREF="http://www.streamboard.tv/oscam-addons/wiki/Envi_WebIf_Template#EnviTipsandTricks" TARGET="_blank">Envi Template - Tips and Tricks</A></TD>
								</TR>
								<TR>
									<TD>Forum:</TD>
									<TD><A HREF="http://www.streamboard.tv/wbb2/thread.php?threadid=40859&threadview=0&hilight=&hilightuser=0&page=1" TARGET="_blank">Forum about Envi</A></TD>
								</TR>
								<TR>
									<TD>Revision log:</TD>
									<TD><A HREF="http://www.streamboard.tv/oscam-addons/log/oscam-template/Envi_template" TARGET="_blank">Revision log of Envi</A></TD>
								</TR>
								<TR>
									<TD>Script for download:</TD>
									<TD><A HREF="http://www.streamboard.tv/oscam-addons/browser/oscam-template/Envi_template/branches/script" TARGET="_blank">Script to download Envi</A></TD>
								</TR>
								<TR>
									<TD>Source:</TD>
									<TD><A HREF="http://www.streamboard.tv/oscam-addons/browser/oscam-template/Envi_template" TARGET="_blank">Source files of Envi</A></TD>
								</TR>
							</TABLE>
							<P CLASS="thanks">Special thanks for the development:<BR>ultra47,schorsch100,gismo2004 - and all the testers.</P>
						</DIV>
					</DIV>
				</DIV>
			</DIV>
		</DIV>
	</DIV>
</DIV> <!-- End wrapper -->
</BODY>
</HTML>
