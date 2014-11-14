<!--OSCam;1299768664;1.20-unstable_svn;9989;-->
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
		<DIV CLASS="styleswitcher">
			<H3>STYLE SWITCHER</H3>
			<UL CLASS="addClass">
				<LI><A HREF="">Original WebIf</A></LI>
				<LI><A HREF="envi">Envi Template</A></LI>
			</UL>
		</DIV>
		<DIV CLASS="envi_info">
			<A HREF="#openModal">Show info about Envi Template</A>
			<DIV ID="openModal" CLASS="modalDialog">
				<DIV>
					<A HREF="#close" TITLE="Close" CLASS="close">X</A>
					<H2>Info about Envi Template</H2>
					<HR>
					<P><B>Envi revision:</B> 1160</P>
					<P><B>For oscam revision:</B> 10000 until to changes in html and css in revision Oscam</P>
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
					<P CLASS="thanks">Special thanks for the development:<BR>ultra47</P>
				</DIV>
			</DIV>
		</DIV>
	</DIV>
</DIV> <!-- End wrapper -->

<!-- ========================== SCRIPT FILES ========================== -->
	<script type="text/javascript">

	jQuery(document).ready(function() {
	    var url = jQuery(location).attr('href');			// get full url
	    var title = jQuery(this).attr('title');				// get title of page
	    var protocol = jQuery(location).attr('protocol');	// get path only
	    var pathname = jQuery(location).attr('pathname');	// get path only

	    var pagebytes = $('html').html().length;
        var kbytes = pagebytes / 1024;						// returns height of HTML document

	    jQuery('#current_title').html(title);
	    jQuery('#current_url').html(url);				
	    jQuery('#current_protocol').html(protocol);
	    jQuery('#current_pathname').html(pathname);
	    jQuery('#current_kbytes').html(kbytes);
	    
	});;

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

	/* Styleswitcher */
	$(function() {
		$(".addClass a").click(function() {
			var countryswitch = $(this).attr('href');
			$('body').removeClass().addClass(countryswitch);
			createCookie("countryswitch",countryswitch);
			return false;
		});
		if (readCookie("countryswitch") != null) {
			$('body').removeClass().addClass(readCookie("countryswitch"));
		}
		else {
			$('body').removeClass();
		}
	});
	
	function createCookie(name,value,days) {
		if (days) {
			var date = new Date();
			date.setTime(date.getTime()+(days*24*60*60*1000));
			var expires = "; expires="+date.toGMTString();
		}
		else var expires = "";
		document.cookie = name+"="+value+expires+"; path=/";
	}
	
	function readCookie(name) {
		var nameEQ = name + "=";
		var ca = document.cookie.split(';');
		for(var i=0;i < ca.length;i++) {
			var c = ca[i];
			while (c.charAt(0)==' ') c = c.substring(1,c.length);
			if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
		}
		return null;
	}
	
	function eraseCookie(name) {
		createCookie(name,"",-1);
	}
	</script>
</BODY>
</HTML>
