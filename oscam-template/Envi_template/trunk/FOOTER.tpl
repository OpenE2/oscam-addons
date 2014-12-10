<!--OSCam;1560086352;1.20-unstable_svn;10020;-->
	</DIV> <!-- End content -->
	<DIV CLASS="footer" ID="footer">
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
		<DIV CLASS="top-footer">
			<A HREF="#" CLASS="link-top">Go to Top</A>
		</DIV>
		<DIV CLASS="demo_changer">
			<DIV style="display: table-cell;">
				<DIV ID="demo_icon" CLASS="demo_icon"></DIV>
			</DIV>
			<DIV CLASS="form_holder">
				<DIV CLASS="styleswitcher">
					<DIV CLASS="section-label">STYLE SWITCHER</DIV>
					<UL CLASS="addClass">
						<LI><A HREF="#" VALUE="original">Original WebIf</A></LI>
						<LI><A HREF="#" VALUE="envi">Envi Template</A></LI>
					</UL>
				</DIV>
				<DIV ID="switchersettings">
					<DIV CLASS="section-label">Background color</DIV>
					<UL CLASS="backchange">
						<LI ID="back_1" CLASS='background_1' TITLE="White"></LI>
						<LI ID="back_2" CLASS='background_2' TITLE="5% Black"></LI>
						<LI ID="back_3" CLASS='background_3' TITLE="35% Black"></LI>
						<LI ID="back_4" CLASS='background_4' TITLE="80% Black"></LI>
						<LI ID="back_5" CLASS='background_5' TITLE="90% Black"></LI>
					</UL>
					<DIV CLASS="section-label">Patterns</DIV>
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
					<DIV CLASS="section-label">Text and links color</DIV>
					<UL CLASS="colchange">
						<LI ID="col_1" CLASS='colchange_1' TITLE="White"></LI>
						<LI ID="col_2" CLASS='colchange_2' TITLE=""></LI>
						<LI ID="col_3" CLASS='colchange_3' TITLE=""></LI>
						<LI ID="col_4" CLASS='colchange_4' TITLE=""></LI>
						<LI ID="col_5" CLASS='colchange_5' TITLE="Black"></LI>
					</UL>
					<DIV CLASS="section-label">Other settings</DIV>
					<TABLE>
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
					</TABLE>

						<input id="rotatelogo" type="checkbox" class="rotatelogo" name="rotatelogo">
						<label for="rotatelogo">Rotate Oscam logo</label>
						<BR><BR>
						<input id="reset" value="Reset all value" type="reset">
				</DIV>
				<DIV CLASS="line"></DIV>
				<DIV CLASS="envi_info">
					<A HREF="#openModal">Show info about Envi Template</A>
					<DIV ID="openModal" CLASS="modalDialog">
						<DIV>
							<A HREF="#close" TITLE="Close" CLASS="close">X</A>
							<H2>Info about Envi Template</H2>
							<HR>
							<P><B>Envi revision:</B> 1226</P>
							<P><B>For oscam revision:</B> 10077 until to changes in html and css in revision Oscam</P>
							<TABLE>
								<TR>
									<TD>Wiki:</TD>
									<TD><A HREF="http://www.streamboard.tv/oscam-addons/wiki/Envi_WebIf_Template" TARGET="_blank">Wiki Envi Template</A></TD>
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
							<P CLASS="thanks">Special thanks for the development:<BR>ultra47,gismo2004 - and all the testers.</P>
						</DIV>
					</DIV>
				</DIV>
			</DIV>
		</DIV>
	</DIV>
</DIV> <!-- End wrapper -->

<!-- ========================== SCRIPT FILES ========================== -->
	<script type="text/javascript">

	/* -------------- BASIC SETTINGS for HTML  -------------- */
	$(document).ready(function () {
		// Hidden Subnav in script.html - SCRIPTS ITEM
		if(window.location.href.indexOf("script.html") > -1) {
			$('#subnav').css('visibility', 'hidden');
		}
		
		// Hidden Subnav in services.html - SERVICES ITEM
		if(window.location.href.indexOf("services.html") > -1) {
			$('#subnav').css('visibility', 'hidden');
		}
		
		// Hidden Subnav in logpoll.html - LIVELOG ITEM
		if(window.location.href.indexOf("logpoll.html") > -1) {
			$('#subnav').css('visibility', 'hidden');
		}
		
		// Hidden Subnav in emm.html
		if(window.location.href.indexOf("emm.html") > -1) {
			$('#subnav').css('visibility', 'hidden');
		}
		
		// Hidden Subnav in emm_running.html
		if(window.location.href.indexOf("emm_running.html") > -1) {
			$('#subnav').css('visibility', 'hidden');
		}

		// Add checkbox and label for responsive design
		$("#main").prepend("<label for=\"toggle\" class=\"toggle\" onclick=\"\"  /></label>");
		$("#main").prepend("<input type=\"checkbox\" id=\"toggle\" />");
		$("#subnav").prepend("<label for=\"subtoggle\" class=\"subtoggle\" onclick=\"\"  /></label>");
		$("#subnav").prepend("<input type=\"checkbox\" id=\"subtoggle\" />");
	});

	/* -------------- STYLESWITCHER with COOKIES -------------- */
	
	/* Read cookie after run or restart browser */
	$(document).ready(function () {
		/* Cookie - Change template */
		if ($.cookie('TemplateSwitch') == 'envi') {
			$('body').addClass('envi');
			$('.addClass a[value$="envi"]').addClass("active");
		} else {
			$('body').removeClass();
			$('.addClass a[value="original"]').addClass("active");
			$('#switchersettings').css('display', 'none');
		}

		/* Cookie - Show/hide StyleSwitcher */
		if ($.cookie('myCookieName') == 'isActive') {
			$('.demo_changer').addClass('active');    
		} else {
			$('.demo_changer').removeClass('active');
		}

		/* Cookie - isActive/notActive Background color */
		$('#' + $.cookie("BackCookieName")).addClass('active');

		/* Cookie - isActive/notActive Background pattern */
		$('#' + $.cookie("PatCookieName")).addClass('active');

		/* Cookie - isActive/notActive Text and Links color */
		$('#' + $.cookie("ColCookieName")).addClass('active');

		/* Cookie - for Body Font Family */
			//Check if cookie exists
			if (typeof $.cookie('BodyFontFamily') === 'undefined'){
				//no cookie
			} else {
				//have cookie
				// For original WebIf remove style
				if ($.cookie('TemplateSwitch') === 'envi'){
					$("#enviBodyFontFamily").html('body { font-family: '+ $.cookie("BodyFontFamily") +'}')
					$("#bodyfontfamily").val($.cookie("BodyFontFamily"));
				} else {
					$("#enviBodyFontFamily").html('')
				}
				
			}

		/* Cookie - for Menu Font Family */
			//Check if cookie exists
			if (typeof $.cookie('FontFamily') === 'undefined'){
				//no cookie
			} else {
				//have cookie
				$("#enviFontFamily").html('.envi #mainmenu li { font-family: '+ $.cookie("FontFamily") +'}')
				$("#menufontfamily").val($.cookie("FontFamily"));
			}

		/* Cookie - for Menu Font Size */
		//Check if cookie exists
			if (typeof $.cookie('FontSize') === 'undefined'){
				//no cookie
			} else {
				//have cookie
				$("#enviFontSize").html(
					'.envi #mainmenu li { font-size: '+ $.cookie("FontSize") +'px;}' +
					'.envi #mainmenu { margin-top: 11px;}')
				$("#menufontsize").val($.cookie("FontSize") +'px');
			}
	});

	/* Change template */
	jQuery(function ($) {
		var TemplateSwitch = $.cookie('TemplateSwitch');
		$('.addClass a').on('click', function (e) {
			TemplateSwitch = $(this).attr('value')
			$('body').removeClass().addClass(TemplateSwitch)
			$.cookie('TemplateSwitch', TemplateSwitch, {
					expires: 365,
					path: '/'
				});
			$('ul.addClass a.active').removeClass('active');
			$(this).addClass('active');

			// Hide StyleSwitcher settings for original WebIF
			if ($.cookie('TemplateSwitch') == 'envi') {
				// Show StyleSwitcher for Envi
				$('#switchersettings').css('display', 'initial');
				// For Envi add style
				$("#enviBodyFontFamily").html('body { font-family: '+ $.cookie("BodyFontFamily") +'}')
				$("#bodyfontfamily").val($.cookie("BodyFontFamily"));
			} else {
				// Hide StyleSwitcher settings
				$('#switchersettings').css('display', 'none');
				// For original WebIf remove style 
				$("#enviBodyFontFamily").html('')
			}

			// (Re-)enable or Disable tooltips 
			// NOTE: I dont know how disabled Bootstrap tooltip if I change template (original/Envi), solution is throught reload page.
			location.reload();

			return false;
		}).filter(function () {
			return $(this).attr('class') === TemplateSwitch
		}).click()
	});

	/* Show/hide StyleSwitcher */
	function setMyCookie() {
		myCookieVal = $('.demo_changer').hasClass('active') ? 'isActive' : 'notActive';
		$.cookie('myCookieName', myCookieVal, {
			expires: 365,
			path: '/'
		});
	}

	$("#demo_icon").click(function () {
		$('.demo_changer').toggleClass('active');
		setMyCookie();
	});

	/* List LI active */
	$(".backchange li").click(function () {
		$(this).siblings('li').removeClass('active');
		$(this).addClass('active');
		$.cookie('BackCookieName', $(this).attr('id'), {
			expires: 365,
			path: '/'
		});
	});

	$(".patchange li").click(function () {
		$(this).siblings('li').removeClass('active');
		$(this).addClass('active');
		$.cookie('PatCookieName', $(this).attr('id'), {
			expires: 365,
			path: '/'
		});
	});

	$(".colchange li").click(function () {
		$(this).siblings('li').removeClass('active');
		$(this).addClass('active');
		$.cookie('ColCookieName', $(this).attr('id'), {
			expires: 365,
			path: '/'
		});
	});

	/* Function for change color*/
	jQuery(function ($) {
		/* Change background color */
		var backcolor = $.cookie('backcolor');
		$('.backchange li').on('click', function (e) {
			backcolor = $(this).attr('class')
			if ($("body").hasClass('envi')) {
				$("body").removeClass("background_1 background_2 background_3 background_4 background_5").addClass(backcolor)
				$.cookie('backcolor', backcolor, {
					expires: 365,
					path: '/'
				});
			};
			return false;
		}).filter(function () {
			return $(this).attr('class') === backcolor
		}).click()

		/* Change background pattern */
		var patcolor = $.cookie('patcolor');
		$('.patchange li').on('click', function (e) {
			patcolor = $(this).attr('class')
			if ($("body").hasClass('envi')) {
				$("body").removeClass("patchange_1 patchange_2 patchange_3 patchange_4 patchange_5 patchange_6 patchange_7 patchange_8 patchange_9 patchange_10").addClass(patcolor)
				$.cookie('patcolor', patcolor, {
					expires: 365,
					path: '/'
				});
			};
			return false;
		}).filter(function () {
			return $(this).attr('class') === patcolor
		}).click()

		/* Change color text and links */
		var color = $.cookie('color'); 					// Get the cookie's value and set to variable "color"
		$('.colchange li').on('click', function (e) { 	// function for colchange li click
			color = $(this).attr('class')				// Rename value "color" with class in colchange li
			if ($("body").hasClass('envi')) {			
				$("body").removeClass("colchange_1 colchange_2 colchange_3 colchange_4 colchange_5").addClass(color)
				$.cookie('color', color, {				// Set cookie
					expires: 365,
					path: '/'
				});
			};
			return false;
		}).filter(function () {
			return $(this).attr('class') === color
		}).click()
	});

	/* Checkbox */
	$(window).load(function(){
	$("input.rotatelogo").each(function() {
		var rotate = $.cookie($(this).attr('name'));
		if (rotate && rotate == "true") {
			$(this).prop('checked', rotate);
			$('body').addClass('rotatelogo');
		}
	});
	$("input.rotatelogo").change(function() {
		if ($("body").hasClass('envi')) {
			$.cookie($(this).attr("name"), $(this).prop('checked'), {
				path: '/',
				expires: 365
			});
			if ( $('input[name="rotatelogo"]').is(':checked') ) {
				$('body').addClass('rotatelogo');
			}
			else {
				$('body').removeClass('rotatelogo');
			}
		};
	});
	});

	/*  Font family and size  */
	$("head").append("<style type='text/css' id='enviBodyFontFamily'></style>");
	$("head").append("<style type='text/css' id='enviFontFamily'></style>");
	$("head").append("<style type='text/css' id='enviFontSize'></style>");

	$(function() {
		$('#bodyfontfamily').change(function() {
			font_weight = false;
			font_picked = $(this).val();
			var split_font_name = font_picked.split(":");
			if(split_font_name.length > 0){
				font_picked = split_font_name[0];
				font_weight = split_font_name[1];
				$.cookie('BodyFontFamily', font_picked, {
						expires: 365,
						path: '/'
					});
			}
			
			$("#enviBodyFontFamily").html(
					'body { font-family: '+ font_picked +';}'
				)
		});
	});

	$('#menufontfamily').change(function() {
		font_weight = false;
		font_picked = $(this).val();
		var split_font_name = font_picked.split(":");
		if(split_font_name.length > 0){
			font_picked = split_font_name[0];
			font_weight = split_font_name[1];
			$.cookie('FontFamily', font_picked, {
					expires: 365,
					path: '/'
				});
		}
		
		$("#enviFontFamily").html(
				'.envi #mainmenu li { font-family: '+ font_picked +';}'
			)
	});

	$(function() {
		$('#menufontsize').change(function() {
			fontsize_picked = $(this).val();
			var split_fontsize_int = fontsize_picked.split("px");
			if(split_fontsize_int.length > 0){
				fontsize_picked_int = split_fontsize_int[0];
				$.cookie('FontSize', fontsize_picked_int, {
					expires: 365,
					path: '/'
				});
			}

			$("#enviFontSize").html(
				'.envi #mainmenu li { font-size: '+ fontsize_picked_int +'px;}' +
				'.envi #mainmenu { margin-top: 11px;}'
			)
		});
	});

	/* Reset button */
	$(function() {
		$("#reset").click(function () {
			if($("body").hasClass("envi")) {
				// Remove all cookie
				var cookies = $.cookie();
				for(var cookie in cookies) {
					$.removeCookie(cookie);
				}
				// Set default 
				$('body').removeClass().addClass('envi');
				$('#rotatelogo').prop('checked', false);
				$('.backchange li').removeClass('active');
				$('.patchange li').removeClass('active');
				$('.colchange li').removeClass('active');
				$("#bodyfontfamily")[0].selectedIndex = 0;
				$("#menufontfamily")[0].selectedIndex = 0;
				$("#menufontsize")[0].selectedIndex = 0;
			} else {
				// Remove all cookie
				var cookies = $.cookie();
				for(var cookie in cookies) {
					$.removeCookie(cookie);
				}
				// Set default 
				$('body').removeClass();
				$('#rotatelogo').prop('checked', false);
				$('.backchange li').removeClass('active');
				$('.patchange li').removeClass('active');
				$('.colchange li').removeClass('active');
			}
		});
	});

	/*! jquery.cookie v1.4.1 | MIT */
	!function(a){"function"==typeof define&&define.amd?define(["jquery"],a):"object"==typeof exports?a(require("jquery")):a(jQuery)}(function(a){function b(a){return h.raw?a:encodeURIComponent(a)}function c(a){return h.raw?a:decodeURIComponent(a)}function d(a){return b(h.json?JSON.stringify(a):String(a))}function e(a){0===a.indexOf('"')&&(a=a.slice(1,-1).replace(/\\"/g,'"').replace(/\\\\/g,"\\"));try{return a=decodeURIComponent(a.replace(g," ")),h.json?JSON.parse(a):a}catch(b){}}function f(b,c){var d=h.raw?b:e(b);return a.isFunction(c)?c(d):d}var g=/\+/g,h=a.cookie=function(e,g,i){if(void 0!==g&&!a.isFunction(g)){if(i=a.extend({},h.defaults,i),"number"==typeof i.expires){var j=i.expires,k=i.expires=new Date;k.setTime(+k+864e5*j)}return document.cookie=[b(e),"=",d(g),i.expires?"; expires="+i.expires.toUTCString():"",i.path?"; path="+i.path:"",i.domain?"; domain="+i.domain:"",i.secure?"; secure":""].join("")}for(var l=e?void 0:{},m=document.cookie?document.cookie.split("; "):[],n=0,o=m.length;o>n;n++){var p=m[n].split("="),q=c(p.shift()),r=p.join("=");if(e&&e===q){l=f(r,g);break}e||void 0===(r=f(r))||(l[q]=r)}return l};h.defaults={},a.removeCookie=function(b,c){return void 0===a.cookie(b)?!1:(a.cookie(b,"",a.extend({},c,{expires:-1})),!a.cookie(b))}});

	/* -------------- SCROLL TO TOP -------------- */
	$(function() {
		$('a.link-top').click(function () {
			jQuery('body').animate({
				scrollTop: 0
			}, {
				queue: false,
				duration: 1200
			});
			jQuery('html').animate({
				scrollTop: 0
			}, {
				queue: false,
				duration: 1200
			});
			return false
		});
	});

	/* -------------- TOOLTIP -------------- */
	!function ($) {
		$(function(){
			/* Logo */
			$('.envi div.logo a').boot_tooltip({animation: false, placement: 'bottom'})
			/* Submit and button */
			$('.envi input[type="submit"]').boot_tooltip({animation: false, placement: 'bottom'})
			$('.envi input[type="button"]').boot_tooltip({animation: false, placement: 'bottom'})
			/* Switch debug */
			$('.envi span.debugl a').boot_tooltip({animation: false, placement: 'bottom'})
			$('.envi span.debugs a').boot_tooltip({animation: false, placement: 'bottom'})
			$('.envi ul.addClass a').boot_tooltip({animation: false, placement: 'top'})
			$('.envi td.centered a').boot_tooltip({animation: false, placement: 'right'})
			/* Tables in Users */
			$('.envi table.users th').boot_tooltip({container: 'body',animation: false, placement: 'bottom'})
			$('.envi td.usercol0 a').boot_tooltip({animation: false, placement: 'right'})
			$('.envi td.usercol1 a').boot_tooltip({animation: false, placement: 'right'})
			$('.envi td.usercol23 a').boot_tooltip({animation: false, placement: 'left'})
			$('.envi td.usercol24 a').boot_tooltip({animation: false, placement: 'left'})
			$('.envi td.usercol25 a').boot_tooltip({animation: false, placement: 'left'})
			$('.envi span.global_conf').boot_tooltip({animation: false, placement: 'right'})
			$('.envi span.global_conf a').boot_tooltip({animation: false, placement: 'right'})
			/* Tables in Readers */
			$('.envi table.readers th span').boot_tooltip({container: 'body',animation: false, placement: 'bottom'})
			$('.envi td.readercol0 a').boot_tooltip({animation: false, placement: 'right'})
			$('.envi td.readercol1 a').boot_tooltip({animation: false, placement: 'right'})
			$('.envi td.readercol12 a').boot_tooltip({animation: false, placement: 'left'})
			$('.envi td.readercol13 a').boot_tooltip({animation: false, placement: 'left'})
			$('.envi td.readercol14 a').boot_tooltip({animation: false, placement: 'left'})
			$('.envi td.readercol15 a').boot_tooltip({animation: false, placement: 'left'})
			$('.envi td.readercol16 a').boot_tooltip({animation: false, placement: 'left'})
			$('.envi td.readercol17 a').boot_tooltip({animation: false, placement: 'left'})
			/* Tables in Status */
			$('.envi table.status th').boot_tooltip({container: 'body',animation: false, placement: 'bottom'})
			$('.envi td.statuscol0 a').boot_tooltip({animation: false, placement: 'right'})
			$('.envi td.statuscol1 a').boot_tooltip({animation: false, placement: 'right'})
			$('.envi td.statuscol4 a').boot_tooltip({animation: false, placement: 'right'})
			$('.envi table.infotable td').boot_tooltip({container: 'body',animation: false, placement: 'bottom'})
		})
	}(window.jQuery)

	/* bootstrap-tooltip.js v2.3.1 */
	!function(c){var b=function(e,d){this.init("boot_tooltip",e,d)};b.prototype={constructor:b,init:function(k,h,f){var l,d,j,e,g;this.type=k;this.$element=c(h);this.options=this.getOptions(f);this.enabled=true;j=this.options.trigger.split(" ");for(g=j.length;g--;){e=j[g];if(e=="click"){this.$element.on("click."+this.type,this.options.selector,c.proxy(this.toggle,this))}else{if(e!="manual"){l=e=="hover"?"mouseenter":"focus";d=e=="hover"?"mouseleave":"blur";this.$element.on(l+"."+this.type,this.options.selector,c.proxy(this.enter,this));this.$element.on(d+"."+this.type,this.options.selector,c.proxy(this.leave,this))}}}this.options.selector?(this._options=c.extend({},this.options,{trigger:"manual",selector:""})):this.fixTitle()},getOptions:function(d){d=c.extend({},c.fn[this.type].defaults,this.$element.data(),d);if(d.delay&&typeof d.delay=="number"){d.delay={show:d.delay,hide:d.delay}}return d},enter:function(h){var g=c.fn[this.type].defaults,f={},d;this._options&&c.each(this._options,function(e,i){if(g[e]!=i){f[e]=i}},this);d=c(h.currentTarget)[this.type](f).data(this.type);if(!d.options.delay||!d.options.delay.show){return d.show()}clearTimeout(this.timeout);d.hoverState="in";this.timeout=setTimeout(function(){if(d.hoverState=="in"){d.show()}},d.options.delay.show)},leave:function(f){var d=c(f.currentTarget)[this.type](this._options).data(this.type);if(this.timeout){clearTimeout(this.timeout)}if(!d.options.delay||!d.options.delay.hide){return d.hide()}d.hoverState="out";this.timeout=setTimeout(function(){if(d.hoverState=="out"){d.hide()}},d.options.delay.hide)},show:function(){var i,k,g,j,d,h,f=c.Event("show");if(this.hasContent()&&this.enabled){this.$element.trigger(f);if(f.isDefaultPrevented()){return}i=this.tip();this.setContent();if(this.options.animation){i.addClass("fade")}d=typeof this.options.placement=="function"?this.options.placement.call(this,i[0],this.$element[0]):this.options.placement;i.detach().css({top:0,left:0,display:"block"});this.options.container?i.appendTo(this.options.container):i.insertAfter(this.$element);k=this.getPosition();g=i[0].offsetWidth;j=i[0].offsetHeight;switch(d){case"bottom":h={top:k.top+k.height,left:k.left+k.width/2-g/2};break;case"top":h={top:k.top-j,left:k.left+k.width/2-g/2};break;case"left":h={top:k.top+k.height/2-j/2,left:k.left-g};break;case"right":h={top:k.top+k.height/2-j/2,left:k.left+k.width};break}this.applyPlacement(h,d);this.$element.trigger("shown")}},applyPlacement:function(g,h){var i=this.tip(),e=i[0].offsetWidth,l=i[0].offsetHeight,d,j,k,f;i.offset(g).addClass(h).addClass("in");d=i[0].offsetWidth;j=i[0].offsetHeight;if(h=="top"&&j!=l){g.top=g.top+l-j;f=true}if(h=="bottom"||h=="top"){k=0;if(g.left<0){k=g.left*-2;g.left=0;i.offset(g);d=i[0].offsetWidth;j=i[0].offsetHeight}this.replaceArrow(k-e+d,d,"left")}else{this.replaceArrow(j-l,j,"top")}if(f){i.offset(g)}},replaceArrow:function(f,e,d){this.arrow().css(d,f?(50*(1-f/e)+"%"):"")},setContent:function(){var e=this.tip(),d=this.getTitle();e.find(".boot_tooltip-inner")[this.options.html?"html":"text"](d);e.removeClass("fade in top bottom left right")},hide:function(){var d=this,g=this.tip(),f=c.Event("hide");this.$element.trigger(f);if(f.isDefaultPrevented()){return}g.removeClass("in");function h(){var e=setTimeout(function(){g.off(c.support.transition.end).detach()},500);g.one(c.support.transition.end,function(){clearTimeout(e);g.detach()})}c.support.transition&&this.$tip.hasClass("fade")?h():g.detach();this.$element.trigger("hidden");return this},fixTitle:function(){var d=this.$element;if(d.attr("title")||typeof(d.attr("data-original-title"))!="string"){d.attr("data-original-title",d.attr("title")||"").attr("title","")}},hasContent:function(){return this.getTitle()},getPosition:function(){var d=this.$element[0];return c.extend({},(typeof d.getBoundingClientRect=="function")?d.getBoundingClientRect():{width:d.offsetWidth,height:d.offsetHeight},this.$element.offset())},getTitle:function(){var f,d=this.$element,e=this.options;f=d.attr("data-original-title")||(typeof e.title=="function"?e.title.call(d[0]):e.title);return f},tip:function(){return this.$tip=this.$tip||c(this.options.template)},arrow:function(){return this.$arrow=this.$arrow||this.tip().find(".boot_tooltip-arrow")},validate:function(){if(!this.$element[0].parentNode){this.hide();this.$element=null;this.options=null}},enable:function(){this.enabled=true},disable:function(){this.enabled=false},toggleEnabled:function(){this.enabled=!this.enabled},toggle:function(f){var d=f?c(f.currentTarget)[this.type](this._options).data(this.type):this;d.tip().hasClass("in")?d.hide():d.show()},destroy:function(){this.hide().$element.off("."+this.type).removeData(this.type)}};var a=c.fn.boot_tooltip;c.fn.boot_tooltip=function(d){return this.each(function(){var g=c(this),f=g.data("boot_tooltip"),e=typeof d=="object"&&d;if(!f){g.data("boot_tooltip",(f=new b(this,e)))}if(typeof d=="string"){f[d]()}})};c.fn.boot_tooltip.Constructor=b;c.fn.boot_tooltip.defaults={animation:true,placement:"top",selector:false,template:'<div class="boot_tooltip"><div class="boot_tooltip-arrow"></div><div class="boot_tooltip-inner"></div></div>',trigger:"hover focus",title:"",delay:0,html:false,container:false};c.fn.boot_tooltip.noConflict=function(){c.fn.boot_tooltip=a;return this}}(window.jQuery);

	</script>
</BODY>
</HTML>
