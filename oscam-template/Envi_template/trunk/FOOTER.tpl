	</DIV> <!-- End content -->
	<DIV CLASS="footer" ID="footer">
		<!-- Basic top link
			<DIV CLASS="top_link"><a href="#_top">TOP</a></DIV> 
		-->
		<DIV CLASS="scroll-top">
			<P ID="back-top"><A HREF="#top" ><SPAN></SPAN></A></P>
		</DIV>
		<UL CLASS="textfooter">
			<LI CLASS="developed"><B>OSCam Webinterface developed by Streamboard Team</B></LI>
			<LI>
				<UL>
					<LI><B>Current Time:</B><SPAN ID="curtime"> ##CURDATE## | ##CURTIME## </SPAN></LI>
					<LI><B>Start Time:</B> ##STARTDATE## | ##STARTTIME## </LI>
					<LI><B>OSCam Run Time:</B><SPAN ID="runtime"> ##RUNTIME##</SPAN></LI>
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
					<LI><B>OSCam:</B> ##CS_VERSION## </LI>
					<LI><B>Build:</B> r##CS_SVN_VERSION## </LI>
					<LI><B>Compiler:</B> ##CS_TARGET##</LI>
				</UL>
			</LI>
			<LI CLASS="styleauthor">&copy;2014 Designed by: <B></B></LI>
			<LI><A NAME="statusfooter"></A></LI>
		</UL>
		<DIV id="console" style="width: 200px; color: #FFF; font: 12px monospace; overflow: auto; position: absolute; float: right; bottom: 0px; right: 70px; background: rgba(0,0,0,0.3); padding: 1em; margin: 1em 0px; height: 50px; text-align: left; text-transform: uppercase;"></DIV>
		<DIV CLASS="demo_changer">
			<DIV ID="demo_icon" CLASS="demo_icon"></DIV>
			<DIV CLASS="form_holder">
				<DIV CLASS="form_holder_one">
					<DIV CLASS="styleswitcher">
						<DIV CLASS="styleswitcher-label"> ENVI - STYLE SWITCHER</DIV>
					</DIV>
				</DIV>
				<DIV CLASS="form_holder_left">
					<DIV CLASS="styleswitcher-label" STYLE="border-bottom: none"> WebIf STYLE </DIV>
					<UL CLASS="addClass">
						<LI><A HREF="#" VALUE="original">Original WebIf</A></LI>
						<LI><A HREF="#" VALUE="envi">Envi Template</A></LI>
					</UL>
					<DIV ID="switchersettings1">
						<DIV CLASS="section-label">Template color style
							<DIV CLASS="sectioninfo">
								<DIV CLASS="sectioninfo_icon"></DIV>
								<DIV CLASS="sectioninfo_detail">
									Color settings Envi in the following elements:
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
							<LI ID="col_0" DATA-STYLE='colorstyle_0' TITLE="Default"></LI>
							<LI ID="col_1" DATA-STYLE='colorstyle_1' TITLE="Teal"></LI>
							<LI ID="col_2" DATA-STYLE='colorstyle_2' TITLE="Orange"></LI>
							<LI ID="col_3" DATA-STYLE='colorstyle_3' TITLE="Yellow"></LI>
							<LI ID="col_4" DATA-STYLE='colorstyle_4' TITLE="Green"></LI>
						</UL>
						<DIV CLASS="section-label">Background color
							<DIV CLASS="sectioninfo">
								<DIV CLASS="sectioninfo_icon"></DIV>
								<DIV CLASS="sectioninfo_detail">
									Background color settings
								</DIV>
							</DIV>
						</DIV>
						<UL CLASS="backchange">
							<LI ID="back_0" DATA-STYLE='background_0' TITLE="Default"></LI>
							<LI ID="back_1" DATA-STYLE='background_1' TITLE="White"></LI>
							<LI ID="back_2" DATA-STYLE='background_2' TITLE="5% Black"></LI>
							<LI ID="back_3" DATA-STYLE='background_3' TITLE="10% Black"></LI>
							<LI ID="back_4" DATA-STYLE='background_4' TITLE="20% Black"></LI>
							<LI ID="back_5" DATA-STYLE='background_5' TITLE="30% Black"></LI>
							<LI ID="back_6" DATA-STYLE='background_6' TITLE="40% Black"></LI>
							<LI ID="back_7" DATA-STYLE='background_7' TITLE="Light Brown"></LI>
							<LI ID="back_8" DATA-STYLE='background_8' TITLE="Dark Brown"></LI>
							<LI ID="back_9" DATA-STYLE='background_9' TITLE="Light slate gray"></LI>
						</UL>
						<DIV CLASS="form-group">
							<label>Custom color: </label>
							<input type="text" id="colorpicker1" class="color-picker" value="#409494">
						</DIV>
						<script>
							$(document).ready( function() {
								$('.color-picker').each( function() {
						            $(this).minicolors({
										letterCase: 'uppercase',
										position: 'top left',
										change: function(hex) {
											// Show text in console
											log = 'HEX VALUE: ' + hex + '<br>';
											$("#console").prepend(log);
										}
									});
								});
							});
						</script>
					</DIV>
				</DIV>
				<DIV ID="switchersettings2">
					<DIV CLASS="form_holder_center">
						<DIV CLASS="section-label">Patterns
							<DIV CLASS="sectioninfo">
								<DIV CLASS="sectioninfo_icon"></DIV>
								<DIV CLASS="sectioninfo_detail">
									Setting patterns for background
								</DIV>
							</DIV>
						</DIV>
						<UL CLASS="patchange">
							<LI ID="pat_0" DATA-STYLE='patchange_0' TITLE="Default"></LI>
							<LI ID="pat_1" DATA-STYLE='patchange_1' TITLE="Diagonal line - transparent"></LI>
							<LI ID="pat_2" DATA-STYLE='patchange_2' TITLE="Diamond - transparent"></LI>
							<LI ID="pat_3" DATA-STYLE='patchange_3' TITLE="Dots - transparent"></LI>
							<LI ID="pat_4" DATA-STYLE='patchange_4' TITLE="Squares 1 - transparent"></LI>
							<LI ID="pat_5" DATA-STYLE='patchange_5' TITLE="Squares 2 - transparent"></LI>
							<LI ID="pat_6" DATA-STYLE='patchange_6' TITLE="XXX - transparent"></LI>
							<LI ID="pat_7" DATA-STYLE='patchange_7' TITLE="XXX - transparent"></LI>
							<LI ID="pat_8" DATA-STYLE='patchange_8' TITLE="XXX - transparent"></LI>
							<LI ID="pat_9" DATA-STYLE='patchange_9' TITLE="Dark full image"></LI>
						</UL>
						<DIV CLASS="section-label">Font settings
							<DIV CLASS="sectioninfo">
								<DIV CLASS="sectioninfo_icon"></DIV>
								<DIV CLASS="sectioninfo_detail">
									Setting the font for text in Menu or in whole page.
								</DIV>
							</DIV>
						</DIV>
						<TABLE CLASS="fontchange">
							<TR>
								<TD>Menu font:</TD>
								<TD>
									<select id="menufontfamily">
										<option value="Arial" style="font-weight: bold;" selected>Arial</option>
										<option value="Droid Sans">Droid Sans</option>
										<option value="Garamond">Garamond</option>
										<option value="Georgia">Georgia</option>
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
										<option value="11px">11px</option>
										<option value="12px" style="font-weight: bold;" selected>12px</option>
										<option value="13px">13px</option>
										<option value="14px">14px</option>
									</select>
								</TD>
							</TR>
							<TR>
								<TD>Body font:</TD>
								<TD>
									<select id="bodyfontfamily">
										<option value="Arial" style="font-weight: bold;" selected>Arial</option>
										<option value="Droid Sans">Droid Sans</option>
										<option value="Lucida Sans Unicode">Lucida</option>
										<option value="Tahoma">Tahoma</option>
										<option value="Trebuchet MS">Trebuchet</option>
										<option value="Verdana">Verdana</option>
									</select>
								</TD>
							</TR>
							<TR>
								<TD>Body font color:</TD>
								<TD STYLE="display: table; margin: 0px auto;">
									<UL CLASS="fontcolorchange">
										<LI ID="fontcolorchange_0" DATA-STYLE='fontcolorchange_0' TITLE="Default - Black"></LI>
										<LI ID="fontcolorchange_1" DATA-STYLE='fontcolorchange_1' TITLE="White"></LI>
									</UL>
								</TD>
							</TR>
							<TR>
								<TD>Body link color:</TD>
								<TD STYLE="display: table; margin: 0px auto;">
									<UL CLASS="linkcolorchange">
										<LI ID="linkcolorchange_0" DATA-STYLE='linkcolorchange_0' TITLE="Default"></LI>
										<LI ID="linkcolorchange_1" DATA-STYLE='linkcolorchange_1' TITLE="">
											<DIV ID="minipicker_wrapper" CLASS="minipicker_wrapper">
												<UL CLASS="minipicker_linkcolorchange">
													<LI ID="link_2" DATA-STYLE='linkcolorchange_2' TITLE="Color 1"></LI>
													<LI ID="link_3" DATA-STYLE='linkcolorchange_3' TITLE="Color 2"></LI>
													<LI ID="link_4" DATA-STYLE='linkcolorchange_4' TITLE="Color 3"></LI>
													<LI ID="link_5" DATA-STYLE='linkcolorchange_5' TITLE="Color 4"></LI>
													<LI ID="link_6" DATA-STYLE='linkcolorchange_6' TITLE="Color 5"></LI>
													<LI ID="link_7" DATA-STYLE='linkcolorchange_7' TITLE="Color 6"></LI>
													<LI ID="link_8" DATA-STYLE='linkcolorchange_8' TITLE="Color 7"></LI>
													<LI ID="link_9" DATA-STYLE='linkcolorchange_9' TITLE="Color 8"></LI>
												</UL>
											</DIV>
										</LI>
									</UL>
								</TD>
							</TR>
						</TABLE>
					</DIV>
					<DIV CLASS="form_holder_right">
						<DIV CLASS="section-label">Other settings
							<DIV CLASS="sectioninfo">
								<DIV CLASS="sectioninfo_icon"></DIV>
								<DIV CLASS="sectioninfo_detail">
									Settings for:
									<UL>
										<LI>OSCam logo rotation</LI>
										<LI>Border of information tables</LI>
										<LI>Border radius of buttons</LI>
										<LI>Border radius of notifier</LI>
										<LI>Plastic style</LI>
									</UL>
								</DIV>
							</DIV>
						</DIV>
						<TABLE CLASS="otherchange">
							<TR>
								<TD style="border-bottom: 1px solid #E0E0E0;">
									<input id="rotatelogo" type="checkbox" class="rotatelogo" name="rotatelogo">
									<label for="rotatelogo">Rotate OSCam logo</label>
								</TD>
							</TR>
							<TR>
								<TD>
									<input id="infotable_border" type="checkbox" class="infotable_border" name="infotable_border">
									<label for="infotable_border">Border of tables</label>
								</TD>
							</TR>
							<TR>
								<TD>
									<input id="border_radius" type="checkbox" class="border_radius" name="border_radius">
									<label for="border_radius">Button border radius</label>
								</TD>
							</TR>
							<TR>
								<TD style="border-bottom: 1px solid #E0E0E0;">
									<input id="notifier_radius" type="checkbox" class="notifier_radius" name="notifier_radius">
									<label for="notifier_radius">Notifier border radius</label>
								</TD>
							</TR>
							<TR>
								<TD>
									<input id="plastic" type="checkbox" class="plastic" name="plastic">
									<label for="plastic">Plastic style</label>
								</TD>
							</TR>
						</TABLE>
						<DIV STYLE="position: absolute; bottom: 47px; width: 180px; right: 13px; z-index: 1040;">
							<input id="show_color" value="Show color settings" type="submit" title="Show whole color settings">
							<input id="show_ext" value="Show extended settings" type="submit" title="Show extended color settings">
							<input id="reset" value="Reset value" type="reset" title="Reset value">
						</DIV>
					</DIV>
				</DIV>
				<DIV ID="ext_settings">
					<DIV CLASS="form_holder_one">
						<DIV CLASS="styleswitcher">
							<DIV CLASS="styleswitcher-label"> ENVI - STYLE SWITCHER - EXTENDED SETTINGS</DIV>
						</DIV>
					</DIV>
					<DIV CLASS="form_holder_left">
						<DIV CLASS="section-label">Main Menu color settings
							<DIV CLASS="sectioninfo">
								<DIV CLASS="sectioninfo_icon"></DIV>
								<DIV CLASS="sectioninfo_detail"></DIV>
							</DIV>
						</DIV>
						<DIV STYLE="text-align: right; padding-right: 10px;">
							<DIV CLASS="form-group">
								<label>Background color: </label>
								<input type="text" id="colorpicker2" class="color-picker" data-position="top left" value="#000000">
							</DIV>
							<DIV CLASS="form-group">
								<label>Font color: </label>
								<input type="text" id="colorpicker3" class="color-picker" data-position="top left" value="#000000">
							</DIV>
							<DIV CLASS="form-group">
								<label>Link color: </label>
								<input type="text" id="colorpicker4" class="color-picker" data-position="top left" value="#000000">
							</DIV>
							<DIV CLASS="form-group">
								<label>Link:hover color: </label>
								<input type="text" id="colorpicker5" class="color-picker" data-position="top left" value="#000000">
							</DIV>
						</DIV>
						<DIV CLASS="section-label">Submenu color settings
							<DIV CLASS="sectioninfo">
								<DIV CLASS="sectioninfo_icon"></DIV>
								<DIV CLASS="sectioninfo_detail"></DIV>
							</DIV>
						</DIV>
						<DIV STYLE="text-align: right; padding-right: 10px;">
							<DIV CLASS="form-group">
								<label>Background color: </label>
								<input type="text" id="colorpicker6" class="color-picker" data-position="top left" value="#000000">
							</DIV>
							<DIV CLASS="form-group">
								<label>Font color: </label>
								<input type="text" id="colorpicker7" class="color-picker" data-position="top left" value="#000000">
							</DIV>
							<DIV CLASS="form-group">
								<label>Link color: </label>
								<input type="text" id="colorpicker8" class="color-picker" data-position="top left" value="#000000">
							</DIV>
							<DIV CLASS="form-group">
								<label>Link:hover color: </label>
								<input type="text" id="colorpicker9" class="color-picker" data-position="top left" value="#000000">
							</DIV>
						</DIV>
					</DIV>
					<DIV CLASS="form_holder_center">
						<DIV CLASS="section-label">Table color settings
							<DIV CLASS="sectioninfo">
								<DIV CLASS="sectioninfo_icon"></DIV>
								<DIV CLASS="sectioninfo_detail"></DIV>
							</DIV>
						</DIV>
						<DIV STYLE="text-align: right; padding-right: 10px;">
							<DIV CLASS="form-group">
								<label>Thead back color: </label>
								<input type="text" id="colorpicker10" class="color-picker" data-position="top left" value="#000000">
							</DIV>
							<DIV CLASS="form-group">
								<label>Thead text color: </label>
								<input type="text" id="colorpicker11" class="color-picker" data-position="top left" value="#000000">
							</DIV>
							<DIV CLASS="form-group">
								<label>Text color: </label>
								<input type="text" id="colorpicker12" class="color-picker" data-position="top left" value="#000000">
							</DIV>
						</DIV>
						<DIV CLASS="section-label">LIVELOG color settings
							<DIV CLASS="sectioninfo">
								<DIV CLASS="sectioninfo_icon"></DIV>
								<DIV CLASS="sectioninfo_detail"></DIV>
							</DIV>
						</DIV>
						<DIV STYLE="text-align: right; padding-right: 10px;">
							<DIV CLASS="form-group">
								<label>Text color: </label>
								<input type="text" id="colorpicker13" class="color-picker" data-position="top left" value="#000000">
							</DIV>
						</DIV>
						<DIV CLASS="section-label">FILES color settings
							<DIV CLASS="sectioninfo">
								<DIV CLASS="sectioninfo_icon"></DIV>
								<DIV CLASS="sectioninfo_detail"></DIV>
							</DIV>
						</DIV>
						<DIV STYLE="text-align: right; padding-right: 10px;">
							<DIV CLASS="form-group">
								<label>Text color: </label>
								<input type="text" id="colorpicker14" class="color-picker" data-position="top left" value="#000000">
							</DIV>
						</DIV>
					</DIV>
					<DIV CLASS="form_holder_right">
						<DIV CLASS="section-label">Footer color settings
							<DIV CLASS="sectioninfo">
								<DIV CLASS="sectioninfo_icon"></DIV>
								<DIV CLASS="sectioninfo_detail"></DIV>
							</DIV>
						</DIV>
						<DIV STYLE="text-align: right; padding-right: 10px;">
							<DIV CLASS="form-group">
								<label>Background color: </label>
								<input type="text" id="colorpicker15" class="color-picker" data-position="top left" value="#000000">
							</DIV>
							<DIV CLASS="form-group">
								<label>Top border color: </label>
								<input type="text" id="colorpicker16" class="color-picker" data-position="top left" value="#000000">
							</DIV>
							<DIV CLASS="form-group">
								<label>Text color: </label>
								<input type="text" id="colorpicker17" class="color-picker" data-position="top left" value="#000000">
							</DIV>
							<DIV CLASS="form-group">
								<label>Text bold color: </label>
								<input type="text" id="colorpicker18" class="color-picker" data-position="top left" value="#000000">
							</DIV>
						</DIV>
					</DIV>
				</DIV>
				<DIV CLASS="form_holder_one" STYLE="position: absolute;bottom: 10px;">
					<DIV CLASS="line"></DIV>
					<DIV CLASS="envi_info">
						<A HREF="#openModal">Show info about Envi Template</A>
						<DIV ID="openModal" CLASS="modalDialog">
							<DIV>
								<A HREF="#close" TITLE="Close" CLASS="close">X</A>
								<H2>Info about Envi Template</H2>
								<HR>
								<P><B>Envi revision:</B> 1453</P>
								<P><B>For oscam revision:</B> 10841 until to changes in html and css in revision Oscam</P>
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
	</DIV>
</DIV> <!-- End wrapper -->
<DIV ID="openModalColorBox" CLASS="openModalColorBox">
	<DIV>
		<A HREF="#close" ID="closeModalColorBox" CLASS="close" TITLE="Close">X</A>
		<textarea ID="save_color_text"></textarea>
		<A HREF="#" DOWNLOAD="EnviColorSettings.txt" ID="savecolor"><input type="submit" value="Save Color Settings"></A>
	</DIV>
</DIV>
<DIV ID="openModalResetBox" CLASS="openModalResetBox">
	<DIV>
		<A HREF="#close" ID="closeModalResetBox" CLASS="close" TITLE="Close">X</A>
		<TABLE STYLE="width: 30%; float: left;">
			<TR>
				<TH COLSPAN="2">BASIC SETTINGS</TH>
			</TR>
			<TR>
				<TD>Template color style</TD>
				<TD><input type="checkbox" name="checkbox" id="reset_1" value="value"><label></label></TD>
			</TR>
			<TR>
				<TD>Background color</TD>
				<TD><input type="checkbox" name="checkbox" id="reset_2" value="value"><label></label></TD>
			</TR>
			<TR>
				<TD>Patterns</TD>
				<TD><input type="checkbox" name="checkbox" id="reset_3" value="value"><label></label></TD>
			</TR>
			<TR>
				<TD>Menu font settings</TD>
				<TD><input type="checkbox" name="checkbox" id="reset_4" value="value"><label></label></TD>
			</TR>
			<TR>
				<TD>Menu font size settings</TD>
				<TD><input type="checkbox" name="checkbox" id="reset_5" value="value"><label></label></TD>
			</TR>
			<TR>
				<TD>Body font settings</TD>
				<TD><input type="checkbox" name="checkbox" id="reset_6" value="value"><label></label></TD>
			</TR>
			<TR>
				<TD>Body font color settings</TD>
				<TD><input type="checkbox" name="checkbox" id="reset_7" value="value"><label></label></TD>
			</TR>
			<TR>
				<TD>Rotate OSCam logo</TD>
				<TD><input type="checkbox" name="checkbox" id="reset_8" value="value"><label></label></TD>
			</TR>
			<TR>
				<TD>Border of tables</TD>
				<TD><input type="checkbox" name="checkbox" id="reset_9" value="value"><label></label></TD>
			</TR>
			<TR>
				<TD>Button border radius</TD>
				<TD><input type="checkbox" name="checkbox" id="reset_10" value="value"><label></label></TD>
			</TR>
			<TR>
				<TD>Notifier border radius</TD>
				<TD><input type="checkbox" name="checkbox" id="reset_11" value="value"><label></label></TD>
			</TR>
			<TR>
				<TD>Plastic style</TD>
				<TD><input type="checkbox" name="checkbox" id="reset_12" value="value"><label></label></TD>
			</TR>
		</TABLE>
		<TABLE STYLE="width: 70%; margin-bottom: 10px;">
			<TR>
				<TH COLSPAN="2">EXTENDED SETTINGS</TH>
			</TR>
			<TR>
				<TD STYLE="vertical-align: top;">
					<TABLE>
						<TR>
							<TD>Main Menu - Background color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_13" value="value"><label></label></TD>
						</TR>
						<TR>
							<TD>Main Menu - Font color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_14" value="value"><label></label></TD>
						</TR>
						<TR>
							<TD>Main Menu - Link color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_15" value="value"><label></label></TD>
						</TR>
						<TR>
							<TD>Main Menu - Link:hover color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_16" value="value"><label></label></TD>
						</TR>
						<TR>
							<TD>Submenu - Background color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_17" value="value"><label></label></TD>
						</TR>
						<TR>
							<TD>Submenu - Font color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_18" value="value"><label></label></TD>
						</TR>
						<TR>
							<TD>Submenu - Link color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_19" value="value"><label></label></TD>
						</TR>
						<TR>
							<TD>Submenu - Link:hover color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_20" value="value"><label></label></TD>
						</TR>
					</TABLE>
				</TD>
				<TD STYLE="vertical-align: top;">
					<TABLE>
						<TR>
							<TD>Table - Thead back color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_21" value="value"><label></label></TD>
						</TR>
						<TR>
							<TD>Table - Thead text color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_22" value="value"><label></label></TD>
						</TR>
						<TR>
							<TD>Table - Text colorpicker18</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_23" value="value"><label></label></TD>
						</TR>
						<TR>
							<TD>LIVELOG - Text color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_24" value="value"><label></label></TD>
						</TR>
						<TR>
							<TD>FILES - Text color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_25" value="value"><label></label></TD>
						</TR>
						<TR>
							<TD>Footer - Background color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_26" value="value"><label></label></TD>
						</TR>
						<TR>
							<TD>Footer - Top border color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_27" value="value"><label></label></TD>
						</TR>
						<TR>
							<TD>Footer - Text color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_28" value="value"><label></label></TD>
						</TR>
						<TR>
							<TD>Footer - Text bold color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_29" value="value"><label></label></TD>
						</TR>
					</TABLE>
				</TD>
			</TR>
		</TABLE>
		<input id="resetindividual" value="Reset individual value" type="reset" title="Reset individual value">
		<input id="resetall" value="Reset all value" type="reset" title="Reset all basic value (without extended settings)">
	</DIV>
</DIV>
</BODY>
</HTML>
