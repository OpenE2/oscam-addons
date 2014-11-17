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
		<DIV CLASS="demo_changer">
			<DIV ID="demo_icon" CLASS="demo_icon"></DIV>
			<DIV CLASS="form_holder">
				<DIV CLASS="styleswitcher">
					<H3>STYLE SWITCHER</H3>
					<UL CLASS="addClass">
						<LI><A HREF="" TITLE="Show original WebIf">Original WebIf</A></LI>
						<LI><A HREF="envi" TITLE="Show Envi Template">Envi Template</A></LI>
					</UL>
				</DIV>
				<DIV CLASS="line"></DIV>
				<DIV CLASS="envi_info">
					<A HREF="#openModal">Show info about Envi Template</A>
					<DIV ID="openModal" CLASS="modalDialog">
						<DIV>
							<A HREF="#close" TITLE="Close" CLASS="close">X</A>
							<H2>Info about Envi Template</H2>
							<HR>
							<P><B>Envi revision:</B> 1165</P>
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

	/* -------------- STYLESWITCHER with COOKIES -------------- */
	$(function() {
		$(".addClass a").click(function() {
			var countryswitch = $(this).attr('href');
			$('body').removeClass().addClass(countryswitch);
			createCookie("countryswitch",countryswitch);
			location.reload();
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

	$("#demo_icon").click(function () {
	    if($('.demo_changer').hasClass('active')){
	        $('.demo_changer').animate({'left':'-180px'},function(){
	            $('.demo_changer').toggleClass('active');
			});
		}else{
	        $('.demo_changer').animate({'left':'0px'},function(){
	            $('.demo_changer').toggleClass('active');
	        });			
	    }	
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
