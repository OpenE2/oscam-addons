	</DIV> <!-- End content -->
	<DIV CLASS="footer" ID="footer">
		<!-- Scroll to Top (original) -->
		<DIV CLASS="top_link"><a href="#_top">TOP</a></DIV>
		<!-- Scroll to Top (envi) -->
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
			<LI CLASS="styleauthor">&copy;2014 - 2016 Designed by: <B></B></LI>
			<LI><A NAME="statusfooter"></A></LI>
		</UL>
		<DIV id="console" style="width: 200px; color: #FFF; font: 12px monospace; overflow: auto; position: absolute; float: right; bottom: 0px; right: 70px; background: rgba(0,0,0,0.3); padding: 1em; margin: 1em 0px; height: 50px; text-align: left; text-transform: uppercase; visibility: hidden;"></DIV>
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
							<LI ID="back_9" DATA-STYLE='background_9' TITLE="Light Slate Gray"></LI>
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
								<TD>Link color:</TD>
								<TD STYLE="display: table; margin: 0px auto;">
									<UL CLASS="linkcolorchange">
										<LI ID="linkcolorchange_0" DATA-STYLE='linkcolorchange_0' TITLE="Default"></LI>
										<LI ID="linkcolorchange_list" TITLE="">
											<DIV ID="minipicker_wrapper" CLASS="minipicker_wrapper">
												<UL CLASS="minipicker_linkcolorchange">
													<LI ID="link_1" DATA-STYLE='linkcolorchange_1' TITLE="Color 1 - Blue"></LI>
													<LI ID="link_2" DATA-STYLE='linkcolorchange_2' TITLE="Color 2 - Orange"></LI>
													<LI ID="link_3" DATA-STYLE='linkcolorchange_3' TITLE="Color 3 - Yellow"></LI>
													<LI ID="link_4" DATA-STYLE='linkcolorchange_4' TITLE="Color 4 - Green"></LI>
													<LI ID="link_5" DATA-STYLE='linkcolorchange_5' TITLE="Color 5 - Beige"></LI>
													<LI ID="link_6" DATA-STYLE='linkcolorchange_6' TITLE="Color 6 - Cherry"></LI>
													<LI ID="link_7" DATA-STYLE='linkcolorchange_7' TITLE="Color 7 - Celadon"></LI>
													<LI ID="link_8" DATA-STYLE='linkcolorchange_8' TITLE="Color 8 - Brown"></LI>
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
					<DIV CLASS="form_holder_bottom" style="float: left; width: 410px; margin: 0px 5px 0px 10px; clear: both;">
						<DIV CLASS="section-label">
							Envi Help
						</DIV>
						<DIV STYLE="text-align: left;">
							<DIV CLASS="form-group" STYLE="float: left; margin-right: 15px;">
								<input id="enableenvihelp" type="checkbox" class="enableenvihelp" name="enableenvihelp">
								<label for="enableenvihelp">Enable/Disable</label>
							</DIV>
							<DIV CLASS="form-group">
								<label>Fallback webhost: </label>
								<input type="text" id="fallbackhelpfilesurl" style="width: 200px;" value="http://envi.16mb.com/download/">
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
								<P><B>Envi revision:</B> 1493</P>
								<P><B>For oscam revision:</B> 11210 and above</P>
								<TABLE>
									<TR>
										<TD><B>Wiki:</B></TD>
										<TD><A HREF="http://www.streamboard.tv/oscam-addons/wiki/Envi_WebIf_Template" TARGET="_blank">Wiki Envi Template</A></TD>
									</TR>
									<TR>
										<TD><B>Envi Tips and Tricks:</B></TD>
										<TD><A HREF="http://www.streamboard.tv/oscam-addons/wiki/Envi_WebIf_Template#EnviTipsandTricks" TARGET="_blank">Envi Template - Tips and Tricks</A></TD>
									</TR>
									<TR>
										<TD><B>Forum:</B></TD>
										<TD><A HREF="http://www.streamboard.tv/wbb2/thread.php?threadid=40859&threadview=0&hilight=&hilightuser=0&page=1" TARGET="_blank">Forum about Envi</A></TD>
									</TR>
									<TR>
										<TD><B>Revision log:</B></TD>
										<TD><A HREF="http://www.streamboard.tv/oscam-addons/log/oscam-template/Envi_template" TARGET="_blank">Revision log of Envi</A></TD>
									</TR>
									<TR>
										<TD><B>Script for download:</B></TD>
										<TD><A HREF="http://www.streamboard.tv/oscam-addons/browser/oscam-template/Envi_template/branches/script" TARGET="_blank">Script to download Envi</A></TD>
									</TR>
									<TR>
										<TD><B>Source:</B></TD>
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
				<TD>ink color settings</TD>
				<TD><input type="checkbox" name="checkbox" id="reset_8" value="value"><label></label></TD>
			</TR>
			<TR>
				<TD>Rotate OSCam logo</TD>
				<TD><input type="checkbox" name="checkbox" id="reset_9" value="value"><label></label></TD>
			</TR>
			<TR>
				<TD>Border of tables</TD>
				<TD><input type="checkbox" name="checkbox" id="reset_10" value="value"><label></label></TD>
			</TR>
			<TR>
				<TD>Button border radius</TD>
				<TD><input type="checkbox" name="checkbox" id="reset_11" value="value"><label></label></TD>
			</TR>
			<TR>
				<TD>Notifier border radius</TD>
				<TD><input type="checkbox" name="checkbox" id="reset_12" value="value"><label></label></TD>
			</TR>
			<TR>
				<TD>Plastic style</TD>
				<TD><input type="checkbox" name="checkbox" id="reset_13" value="value"><label></label></TD>
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
							<TD><input type="checkbox" name="checkbox" id="reset_14" value="value"><label></label></TD>
						</TR>
						<TR>
							<TD>Submenu - Background color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_18" value="value"><label></label></TD>
						</TR>
						<TR>
							<TD>Submenu - Font color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_19" value="value"><label></label></TD>
						</TR>
						<TR>
							<TD>Submenu - Link color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_20" value="value"><label></label></TD>
						</TR>
						<TR>
							<TD>Submenu - Link:hover color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_21" value="value"><label></label></TD>
						</TR>
					</TABLE>
				</TD>
				<TD STYLE="vertical-align: top;">
					<TABLE>
						<TR>
							<TD>Table - Thead back color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_22" value="value"><label></label></TD>
						</TR>
						<TR>
							<TD>Table - Thead text color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_23" value="value"><label></label></TD>
						</TR>
						<TR>
							<TD>Table - Text colorpicker18</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_24" value="value"><label></label></TD>
						</TR>
						<TR>
							<TD>LIVELOG - Text color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_25" value="value"><label></label></TD>
						</TR>
						<TR>
							<TD>FILES - Text color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_26" value="value"><label></label></TD>
						</TR>
						<TR>
							<TD>Footer - Background color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_27" value="value"><label></label></TD>
						</TR>
						<TR>
							<TD>Footer - Top border color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_28" value="value"><label></label></TD>
						</TR>
						<TR>
							<TD>Footer - Text color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_29" value="value"><label></label></TD>
						</TR>
						<TR>
							<TD>Footer - Text bold color</TD>
							<TD><input type="checkbox" name="checkbox" id="reset_30" value="value"><label></label></TD>
						</TR>
					</TABLE>
				</TD>
			</TR>
		</TABLE>
		<input id="resetindividual" value="Reset individual value" type="reset" title="Reset individual value">
		<input id="resetall" value="Reset all value" type="reset" title="Reset all basic value (without extended settings)">
	</DIV>
</DIV>
		<!-- START GEOAPI FUNCTION -->
		<style type="text/css">
			/* ============= GEOAPI Data */
			.GeoResults {
				position: relative;
				color: #F00;
				cursor: pointer;
				float: right;
				border-left: 1px solid #000;
				padding-left: 5px
			}
			.GeoResultsSPAN,
			.GeoResultsTABLE {
				display: none;
				left: 20px;
				z-index: 1030;
				border-spacing: 0px;
				width: 200px
			}
			.GeoResultsTABLE td {
				border-bottom: 1px dotted gray;
				padding: 2px;
			}
			.GeoResultsTABLE tr:last-child td {
				border: initial;
			}
			.GeoResultsTABLE tr td:first-child {
				width: 55px;
			}
			.GeoResultsTABLE tr td:last-child {
				width: 125px;
			}
			a:hover .GeoResultsTABLE{
				display: block;
				position: absolute;
				top: -5.9em;
				left: 2.4em;
				padding: 4px;
				text-align: left;
				background-color: #FFC;
				border: 1px solid #000;
				color: #000
			}
			.GeoResultsTABLE:after, .GeoResultsTABLE:before {
				right: 100%;
				top: 50%;
				border: solid transparent;
				content: " ";
				height: 0;
				width: 0;
				position: absolute;
				pointer-events: none;
			}

			.GeoResultsTABLE:after {
				border-color: rgba(255, 255, 204, 0);
				border-right-color: #FFC;
				border-width: 10px;
				margin-top: -10px;
			}
			.GeoResultsTABLE:before {
				border-color: rgba(0, 0, 0, 0);
				border-right-color: #000;
				border-width: 11px;
				margin-top: -11px;
			}
			/* For Envi Template and Original WebIf */
			table.status tr:hover table[id^="GeoResults"] tr td,
			.envi table.status tr:hover table[id^="GeoResults"] tr td {
				background-color: transparent !important;
				border-right: initial !important;
			}

			/* ============= GEOAPI ProgressBar */
			#Geo_progressBar {
				position: absolute;
				right: 470px;
				top: 8px;
				opacity: 0;
			}
			.envi #Geo_progressBar {
				top: 9px;
			}
			#Geo_progressBar span {
				color: #000;
				float: left;
				margin-right: 15px;
				line-height: 15px;
			}
			.envi #Geo_progressBar span {
				color: #FFF;
			}
			#progressBar {
				width: 200px;
				height: 14px;
			}

			#progressBar div {
				height: 100%;
				color: #FFF;
				/* text-align: right; */
				font-size: 10px;
				line-height: 13px;
				width: 0;
			}
			.default {
				background: #AAA;
				border: 1px solid #555;	
				overflow: hidden;
				width: 400px;
				float: right;
			}
			.envi .default {
				background: #292929;
				border: 1px solid #111;	
				box-shadow: 0 0 5px #333;
			}
			.default div {
				background-color: #666;
				background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#AAA), to(#666)); 
				background: -webkit-linear-gradient(top, #AAA, #666); 
				background: -moz-linear-gradient(top, #AAA, #666); 
				background: -ms-linear-gradient(top, #AAA, #666); 
				background: -o-linear-gradient(top, #AAA, #666);
			}
			.envi .default div {
				background-color: #BD0000;
				background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#FA0000), to(#BD0000)); 
				background: -webkit-linear-gradient(top, #FA0000, #BD0000); 
				background: -moz-linear-gradient(top, #FA0000, #BD0000); 
				background: -ms-linear-gradient(top, #FA0000, #BD0000); 
				background: -o-linear-gradient(top, #FA0000, #BD0000);
			}
		</style>
		<script>
			$(document).ready( function() {
				if (document.URL.indexOf('') > -1 ||
						document.URL.indexOf('status.html') > -1) {
					/* ABOUT GEOAPI SERVICES
					 *	1. https://freegeoip.net/ allowed up to 10,000 queries per hour by default
					 *		- Little information
					 *		- without error message
					 * ----------------------------------------------------------------------------------------------------------
					 * OTHER GEOAPI DATABASES
					 * 	2. https://db-ip.com/ 
					 *		- need api key
					 *		- this key allows 2,000 queries per day
					 * 	3. http://www.ipinfodb.com 
					 *		- need api key
					 *		- do not have a specific daily limit
					 * 	4. http://tuq.in/tools/geo
					 *	5. http://www.geoplugin.com/
					 *	6. https://ipinfo.io/ are limited to 1,000 API requests per day
					 */

					// ================= GEOAPI FUNCTIONS
					// Set variable, will be it use Geoapi function
					var selector1 = '#tbodyc tr td.statuscol7';
					var selector2 = '#tbodyp tr td.statuscol7';
					var selectors = '#tbodyc tr td.statuscol7, #tbodyp tr td.statuscol7';
					var clientsCount_max = 250

					// Show GEOAPI Data 
					function showGEO() {
						// Remove all 'A' (if this exist) 
						$('A[id^="GeoResults"]').remove();
						// Show GEOAPI Data in each cell 
						$(selectors).each(function (i) {
							var cell = $(this);
							var valueUSER = $(this).text();
							var userIP = parseInt($(this).text());
							var incremental = i + 1;

							// GeoLocation API 1 (https://freegeoip.net/ - 10,000 requests per hour)

							$.get("https://freegeoip.net/json/" + valueUSER, function(data) {

							  var country_code 	= data.country_code;
							  var country_name	= data.country_name;
								var region_name		= data.region_name;
								var city 					= data.city;
								var ip 						= data.ip;
								var time_zone 		= data.time_zone;
								var latitude 			= data.latitude;
								var longitude 		= data.longitude;

								cell.append(
									'<A ID="GeoResults' + incremental + '" CLASS="GeoResults">' + country_code +  
									'<TABLE ID="GeoResultsTABLE' + incremental + '" CLASS="GeoResultsTABLE">' +
											'<TR><TD><B>Country:</B></TD><TD>' + country_name + '</TD></TR>' +
											'<TR><TD><B>Region:</B></TD><TD>' + region_name + '</TD></TR>' +
											'<TR><TD><B>City:</B></TD><TD>' + city + '</TD></TR>' +
											'<TR><TD><B>IP:</B></TD><TD>' + ip + '</TD></TR>' +
											'<TR><TD><B>Timezone:</B></TD><TD>' + time_zone + '</TD></TR>' +
											'<TR><TD><B>Longitude:</B></TD><TD>' + longitude + '</TD></TR>' +
											'<TR><TD><B>Latitude:</B></TD><TD>' + latitude + '</TD></TR>' +
									'</TABLE></A>'
								);
							}, "jsonp");
							
						});
					};

					// Hide GEOAPI Data 
					function hideGEO() {
						$('A[id^="GeoResults"]').remove();
					}

					// ================= GEOAPI BUTTON
					// Create Geoapi button
						// Button is created in CLIENTHEADLINEBIT.tpl

						$(function(){
							/* Convert 'title' to 'boot_tooltip' */
							$('.envi #geoapibutton').boot_tooltip({animation: false, placement: 'bottom'})
						})

					// Function for call function if button Odd/Even click
						var count = 1;
						$("#geoapibutton").click(function() {
							count++;
							var isEven = function(someNumber) {
								return (someNumber % 2 === 0) ? true : false;
							};
							if (isEven(count) === false) {
								doEven();
							} else if (isEven(count) === true) {
								doOdd();
							}
						});

					// If we run 'Pause Pollinterval' then hide GEOAPI
					// I have only one problem. If we click to 'Show GEOAPI' button, then we click two times.
						function pollingClick() {
							if ($('#polling').hasClass('pollingenabled')) {
								count = 1;
								hideGEO();
								$('#geoapibutton').val('Show GEOAPI');
								if (!nostorage) {
									sessionStorage.setItem('geoapi', '0');
								}
							}
						}
						$('#polling').click(function() {
							pollingClick()
						});

					// Function for first click, third click, fifth click, etc ...
					function doOdd() {
						// Check max count of clients
						var clientsCount = $(selector1).length
						if ( clientsCount > clientsCount_max ) {
							console.log ('Too many users: ' + clientsCount);
							alert ('Too many users for loading from "freegeoip" databases: ' + clientsCount);
						} else {
							showGEO();
							showProgressBar();
							$('#geoapibutton').val('Hide GEOAPI');
							// Pollinterval PAUSE
							if (polling < 1) {
								polling = 1;
								$(":text[name='pintervall']").val('--');
								$('#polling').attr('class','pollingdisabled');
								$('#inc, #dec').attr('disabled','disabled');
							}
							if (!nostorage) {
								sessionStorage.polling = polling;
								sessionStorage.setItem('geoapi', '1');
							}
							console.log('GOEAPI Data are shown, GOEAPI button has value: ' + sessionStorage.getItem('geoapi'));
						}
					}

					// Function for second click, fourth click, sixth click, etc ...
					function doEven() {
						hideGEO();
						$('#geoapibutton').val('Show GEOAPI');
						// Pollinterval PAUSE
						if (polling = 1) {
							polling = 0;
							$(":text[name='pintervall']").val(pollintervall/1000);
							$('#polling').attr('class','pollingenabled');
							$('#inc, #dec').removeAttr('disabled');
							clearTimeout(timer_ID);
							timer_ID = setTimeout("waitForMsg()", pollintervall);
						}
						if (!nostorage) {
							sessionStorage.polling = polling;
							sessionStorage.setItem('geoapi', '0');
						}
						// Write into web console
						console.log('GOEAPI Data are hidden, GOEAPI button has value: ' + sessionStorage.getItem('geoapi'));
					}

					// ================= PROGRESSBAR
					// @see http://workshop.rs - Create ProgressBar
					$('<div id="Geo_progressBar"><span>Loading Geodata from databases: </span><div id="progressBar" class="default"><div></div></div></div>').insertAfter('#Userheadline');
					$('#tbodyc').css('position' , 'relative');
					
					function progressBar(percent, $element, time) {
						var progressBarWidth = percent * $element.width() / 100;
						$element.find('div').animate({ width: progressBarWidth }, time).html(percent + "%&nbsp;");
					}

					function showProgressBar() {
						// Show ProgressBar
						$('#Geo_progressBar').css('opacity', '1');
						// Set value in ProgressBar - animation is 1500ms
						progressBar(100, $('#progressBar'), 1500);
						// Hide ProgressBar - timeout is 3000ms
						setTimeout(function(){
							$("#Geo_progressBar").animate({
								opacity: '0',
							},500);
						}, 3000);
						// Set value in ProgressBar - timeout is 3500ms
						setTimeout(function(){
						  progressBar(0, $('#progressBar'), 100);
						}, 3500);
					}

					// =================  AFTER PAGE LOADING
					// Check If  Geodata were displaying before the page is loaded
						var geoapi = sessionStorage.getItem('geoapi');
						// Write into web console
						console.log('Geoapi value = : ' + geoapi);
						// Check max count of clients
						var clientsCount = $(selector1).length;
						if ( clientsCount > clientsCount_max ) {
							console.log ('Too many users: ' + clientsCount)
							alert ('Too many users for loading from "freegeoip" databases: ' + clientsCount)
						} else {
							// Check If  Geodata were displaying before the page is loaded
							// geoapi = 1 (Yes, Geodata were displaying) 
							// geoapi = 0 (No, Geodata were not displaying) 
							if (geoapi < 1 ) {
								// Write into web console
								console.log('GOEAPI Data are hidden after loading page');
							} else if (geoapi == 1 && polling == 0) {
								// Write into web console
								console.log('Polling pause is active, GOEAPI Data are hidden after loading page');
							} else {
								// Set button 'geoapibutton' to Even click
								count = 2;
								// Run function for display GEOAPI data
								showGEO();
								showProgressBar();
								// Set value in button geoapibutton
								$('#geoapibutton').val('Hide GEOAPI');
								// Write into web console
								console.log('GOEAPI Data are shown after loading page');
							}
						}
				}
			});
		</script>
		<!-- END GEOAPI FUNCTION -->

		<!-- START STREAMBOARD HELP -->
		<link rel="stylesheet" type="text/css" href="https://code.jquery.com/ui/1.11.4/themes/blitzer/jquery-ui.css">

		<script type='text/javascript'>

		$(function () {
				var urlExists = function(url, callback){
					$.ajax({
						type: 'HEAD',
						url: url,
						success: function () {  
							console.log("Ajax - checking url ... url exists");
							callback(true);
						},
						error: function () {
							console.log("Ajax - checking url ... url does not exist");
							callback(false);
						}
					});
				};

				var iframe = $('<iframe frameborder="0" marginwidth="0" marginheight="0" width="100%" height="100%" allowfullscreen></iframe>');
				var dialog = $("<div></div>").append(iframe).appendTo("body").dialog({
						autoOpen: false,
						modal: false,
						draggable: true,
						resizable: true,
						width: 800,
						height: 300,
						dialogClass: "dialog-envi-style", /* Custom class */
				});

				$('input.enableenvihelp').each(function() {
					if ($.cookie('TemplateSwitch') == 'envi') {
						var enablehelp = $.cookie($(this).attr('name'));
						if (enablehelp && enablehelp == "true") {
							$(this).prop('checked', enablehelp);
						}
					}
				});

				// Function if checkbox is changed
				$('input.enableenvihelp').change(function() {
					$.cookie($(this).attr('name'), $(this).prop('checked'), {
						path: '/',
						expires: 365
					});
				});


				/* Read a page's GET URL variables and return them as an associative array.
				 * Example url - http://www.example.com/?me=myValue&name2=SomeOtherValue
				 */
				function getUrlVars() {
				    var vars = [], hash;
				    var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
				    for(var i = 0; i < hashes.length; i++)
				    {
				        hash = hashes[i].split('=');
				        vars.push(hash[0]);
				        vars[hash[0]] = hash[1];
				    }
				    return vars;
				}

				if ( $('input[name="enableenvihelp"]').is(':checked') ) {
					$("form table a").on("click", function (e) {
								e.preventDefault();
								/* Basic URL for fallback help files */
								var base_url = $('#fallbackhelpfilesurl').val()
								/* Parameter from links to help */
								if ($(this).data('p')) {
									var parm = $(this).data('p');
								} else {
									var parm = $(this).parent().next().find("input,select,textarea").attr('name');
								}
								/* Variable - Get part of url */
								var part_url = getUrlVars()["part"];
								/* Whole fallback help files url  */
								if(window.location.href.indexOf('config') > -1 ||
									 window.location.href.indexOf('config') > -1 && part_url == 'global') {
									var url = base_url + 'config/global/' + parm + '.html';
								}
								if(window.location.href.indexOf("config") > -1 && part_url == 'anticasc') {
									var url = base_url + 'config/anticasc/' + parm + '.html';
								}
								if(window.location.href.indexOf("config") > -1 && part_url == 'cache') {
									var url = base_url + 'config/cache/' + parm + '.html';
								}
								if(window.location.href.indexOf("config") > -1 && part_url == 'loadbalancer') {
									var url = base_url + 'config/loadbalancer/' + parm + '.html';
								}
								if(window.location.href.indexOf("config") > -1 && part_url == 'camd35') {
									var url = base_url + 'config/camd35/' + parm + '.html';
								}
								if(window.location.href.indexOf("config") > -1 && part_url == 'camd35tcp') {
									var url = base_url + 'config/camd35tcp/' + parm + '.html';
								}
								if(window.location.href.indexOf("config") > -1 && part_url == 'cccam') {
									var url = base_url + 'config/cccam/' + parm + '.html';
								}
								if(window.location.href.indexOf("config") > -1 && part_url == 'newcamd') {
									var url = base_url + 'config/newcamd/' + parm + '.html';
								}
								if(window.location.href.indexOf("config") > -1 && part_url == 'gbox') {
									var url = base_url + 'config/gbox/' + parm + '.html';
								}
								if(window.location.href.indexOf("config") > -1 && part_url == 'radegast') {
									var url = base_url + 'config/radegast/' + parm + '.html';
								}
								if(window.location.href.indexOf("config") > -1 && part_url == 'scam') {
									var url = base_url + 'config/scam/' + parm + '.html';
								}
								if(window.location.href.indexOf("config") > -1 && part_url == 'serial') {
									var url = base_url + 'config/serial/' + parm + '.html';
								}
								if(window.location.href.indexOf("config") > -1 && part_url == 'dvbapi') {
									var url = base_url + 'config/dvbapi/' + parm + '.html';
								}
								if(window.location.href.indexOf("config") > -1 && part_url == 'lcd') {
									var url = base_url + 'config/lcd/' + parm + '.html';
								}
								if(window.location.href.indexOf("config") > -1 && part_url == 'monitor') {
									var url = base_url + 'config/monitor/' + parm + '.html';
								}
								if(window.location.href.indexOf("config") > -1 && part_url == 'webif') {
									var url = base_url + 'config/webif/' + parm + '.html';
								}
								/* Other variable */
								var file = parm + '.html';
								var title = 'ENVI HELP';
								
								urlExists(url, function(success) {
									if (success) {
										iframe.attr({
											src: url
										});
										dialog.dialog("option", "title", title).dialog("open");
									} else {
										alert('ENVI HELP not exists');
									}
								});

								// Console log
								console.log("HELP file: " + file);
								console.log("HELP url: " + url);

						});
				} else {
					/* Script from original Webif - Streamboard Help */
					if (typeof oscamconf != "undefined") {
						var language = $('meta[http-equiv="language"]').attr("content");
						var wikihref = "http://www.streamboard.tv/wiki/OSCam/" + language + "/Config/oscam." + oscamconf + "#";
						$("form table a").click(function () {
							if (!$(this).attr("href") && !$(this).attr("name")) {
								if ($(this).data('p')) {
									var parm = $(this).data('p');
								} else {
									var parm = $(this).parent().next().find("input,select,textarea").attr('name');
								}
								window.open(wikihref + parm);
							}
						});
					}
				}

		});

		</script>
		<!-- END STREAMBOARD HELP -->

		<!-- START TEST SCRIPT AND STYLE -->
		<style type="text/css">

		</style>
		<script type="text/javascript">

		</script>
		<!-- END TEST SCRIPT AND STYLE -->
</BODY>
</HTML>
	