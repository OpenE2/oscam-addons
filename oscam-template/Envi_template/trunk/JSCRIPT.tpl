var oReloadTimer = null;
var oCounterTimer = null;

function reloadDocument() {
	if(!withquery) history.pushState('', document.title, window.location.pathname);
	else if (window.location.href.match(/(&amp;|&)action=\w+/)) history.pushState('', document.title, window.location.href.replace(/(&amp;|&)action=\w+/,''));
	window.location.reload();
};

function cdpause() {
	clearTimeout(oReloadTimer);
};

function runReloadCounter() {
	var oReloadContent = document.getElementById("ReloadContent");
	if (oReloadContent) {
		if (counter < 0) {
			counter = counterfull;
		}
		counter--;
	}
};

function initDoc() {
	if (oReloadTimer) window.clearInterval(oReloadTimer);
	oReloadTimer = window.setInterval("reloadDocument();", counterfull * 1000);
	if (oCounterTimer) window.clearInterval(oCounterTimer);
	oCounterTimer = window.setInterval("runReloadCounter();", 1000);
};

function gotosite(Action) {
	window.location.href = Action;
}

/* Function for add new reader/user in readers.html/userconfig.html */
function addinsert() {
	cdpause();
	$("#searchTable").fadeOut('slow', function() {
		$("#newinsert").fadeIn('slow');
	});
}

/* Function for add new reader/user in readers.html/userconfig.html  */
function chkinsert(chkvalue) {
	if(existing_inserts.indexOf(encodeURIComponent(chkvalue))!=-1){
		alert('Entry "' + chkvalue + '" already exists!');
		return false;
	}
}

/* Function for del entry in readers.html/userconfig.html  */
function cleaninsert(deleteinsert) {
	var tmp_array = existing_inserts.slice();
	existing_inserts.length = 0;
	var i2 = 0;
	for (i = 0; i < tmp_array.length; i++) {
		if (tmp_array[i] != deleteinsert){
			existing_inserts[i2] = tmp_array[i];
			i2++; 
		}
	}
}

var beep = (function () {
	var contextClass = (window.AudioContext || 
						window.webkitAudioContext || 
						window.mozAudioContext || 
						window.oAudioContext || 
						window.msAudioContext);
	if (contextClass) {
		var ctx = new contextClass();
		return function (duration, type, freq, vol, finishedCallback) {
			duration = +duration;
			// Only 0-4 are valid types.
			type = (type % 5) || 0;

			if (typeof finishedCallback != "function") {
				finishedCallback = function () {};
			}

			var osc = ctx.createOscillator();
			var gainNode = ctx.createGain();
			osc.type = type;
			osc.connect(gainNode);
			gainNode.connect(ctx.destination);
			gainNode.gain.value = vol;
			osc.type = type;
			osc.frequency.value = freq; // value in hertz
			osc.detune.value = 100; // value in cents
			osc.start(0);

			setTimeout(function () {
				osc.stop(0);
				finishedCallback();
			}, duration);
		};
	} else {
		return function (duration, type, freq, vol, finishedCallback) {return;};
	}
})();

String.prototype.toHHMMSS = function () {
	if (this.length < 1) {
		return ''
	}
	var sec_num = parseInt(this, 10); // don't forget the second param
	var years = Math.floor(sec_num / (86400*365));
	var days = Math.floor(sec_num / 86400);
	var hours = Math.floor(sec_num / 3600);
	var minutes = Math.floor((sec_num - (hours * 3600)) / 60);
	var seconds = sec_num - (hours * 3600) - (minutes * 60);
	hours = hours - (24 * days);
	days = days - (365 * years);
	if (years < 1) {
		years = "";
	} else {
		years = years + "y ";
	}
	if (days < 1) {
		days = "";
	} else {
		days = days + "d ";
	}
	if (hours < 10) {
		hours = "0" + hours;
	}
	if (minutes < 10) {
		minutes = "0" + minutes;
	}
	if (seconds < 10) {
		seconds = "0" + seconds;
	}
	var time = days + hours + ':' + minutes + ':' + seconds;
	return time;
}

function runden(value) {
	var k = (Math.round(value * 100) / 100).toString();
	k += (k.indexOf('.') == -1) ? '.00' : '00';
	return k.substring(0, k.indexOf('.') + 3);
}

/*
 * General: Eventhandler
 */
$(function () {
	// Pollinterval UP
	$("#inc").click(function () {
		if (pollintervall > 98000 || polling) return;
		$(":text[name='pintervall']").val(Number($(":text[name='pintervall']").val()) + 1);
		pollintervall = $(":text[name='pintervall']").val() * 1000;
		if (!nostorage) {
			sessionStorage.pollintervall = pollintervall;
		}
	});
	// Pollinterval PAUSE
	$("#polling").click(function () {
		if (polling < 1) {
			polling = 1;
			$(":text[name='pintervall']").val('--');
			$('#polling').attr('style','background-image:url(image?i=ICENA); background-color:#0A0');
		} else {
			polling = 0;
			$(":text[name='pintervall']").val(pollintervall/1000);
			$('#polling').attr('style','background-image:url(image?i=ICDIS)');
			clearTimeout(timer_ID);
			timer_ID = setTimeout("waitForMsg()", pollintervall);
		}
		if (!nostorage) {
			sessionStorage.polling = polling;
		}
	});
	// Pollinterval DOWN
	$("#dec").click(function () {
		if (pollintervall < 2000 || polling) return;
		$(":text[name='pintervall']").val(Number($(":text[name='pintervall']").val()) - 1);
		pollintervall = $(":text[name='pintervall']").val() * 1000;
		if (!nostorage) {
			sessionStorage.pollintervall = pollintervall;
		}
	});
	// Hover for showing Chart on Statuspage
	$('table.status').on('mouseover', 'tr > td.statuscol14', function (e) {
		var uid = '#' + $(this).parent().attr('id');
		if ('pcr'.indexOf($(uid).attr('class')) >= 0) {
			if ($(uid).data('ecmhistory')) {
				var head = $(uid + ' > td:nth-child(3)').attr('title').indexOf('(') > -1 ? $(uid + ' > td:nth-child(3)').attr('title').substring(0, $(uid + ' > td:nth-child(3)').attr('title').indexOf('(')-1) : $(uid + ' > td:nth-child(3)').attr('title');
				$('#charthead').text(head + ' History');
				$("#graph").html('');
				var arry = $(uid).data('ecmhistory').split(",");
				$.each(arry, function (index, value) {
					$("#graph").append(generateBar(value));
				});
				$("#chart").show();
			}
			$("#chart").offset({
				left: e.pageX + 20,
				top: e.pageY - 20
			});
		}
	});
	// Mousout for hiding Chart on Statuspage
	$('table.status').on('mouseout', 'tr > td.statuscol14', function () {
		$("#chart").hide();
	});
	
	$("#add1regex").click(function () {
		if (MAX_SEARCH_PATTERN > 98) return;
		MAX_SEARCH_PATTERN++;
		localStorage.MAX_SEARCH_PATTERN = MAX_SEARCH_PATTERN;
		var i = MAX_SEARCH_PATTERN;
		var beep_disabled = ' disabled="disabled" title="Not supported by your browser"';
		var contextClass = (window.AudioContext || window.webkitAudioContext || window.mozAudioContext || window.oAudioContext || window.msAudioContext);
		if (contextClass) { beep_disabled = ''; }
		var prefix = "0";
		if ( i > 9 ) { prefix = ""; }
		$('<LI class="regex" id="regexrow' + i + '">Search' + prefix + i + ': <input type="text" name="regex' + i + '" class="regexinput" ID="regex' + i + '" value=""> Found only: <input type="checkbox" id="whitelisted' + i + '"><label></label> Hide: <input type="checkbox" id="hidden' + i + '"><label></label> Back Color: <input size="7" maxlength="7" type="text" name="color' + i + '" class="colorinput" ID="color' + i + '" value=""> Color: <input size="7" maxlength="7" type="text" name="fcolor' + i + '" class="colorinput" ID="fcolor' + i + '" value=""> Beep: <input type="checkbox" id="beep' + i + '"' + beep_disabled +'><label></label></LI>').insertBefore(".regexdata_save");
		$('#color' + i).val($('.colorPicker_def_color').css('color'));
		$('#fcolor' + i).val($('.colorPicker_def_fcolor').css('color'));
		$('#color' + i).colorPicker();
		$('#fcolor' + i).colorPicker();
	});

	$("#del1regex").click(function () {
		var i = MAX_SEARCH_PATTERN;
		if (i < 2) return;
		if ($('#regex' + i).val() != '') if (!confirm('Search' + i + ' is not empty! Delete?')) return;
		$("#regexrow" + i).remove();
		localStorage.removeItem('regex' + i);
		localStorage.removeItem('color' + i);
		localStorage.removeItem('fcolor' + i);
		localStorage.removeItem('whitelisted' + i);
		localStorage.removeItem('hidden' + i);
		localStorage.removeItem('beep' + i);
		MAX_SEARCH_PATTERN--;
		localStorage.MAX_SEARCH_PATTERN = MAX_SEARCH_PATTERN;
	});

	$("#regexok").click(function () {

		for (var i = 1; i < MAX_SEARCH_PATTERN + 1; i++) {
			var pattern = $('#regex' + i).val();
			if (pattern) {
				var color = $('#color' + i).val();
				var fcolor = $('#fcolor' + i).val();
			} else {
				var color = '';
				var fcolor = '';
			}
			localStorage['regex' + i] = pattern ? pattern : '';
			localStorage['color' + i] = color ? color : '';
			localStorage['fcolor' + i] = fcolor ? fcolor : '';
			localStorage['whitelisted' + i] = $('#whitelisted' + i).prop('checked') ? '1' : '0';
			localStorage['hidden' + i] = $('#hidden' + i).prop('checked') ? '1' : '0';
			localStorage['beep' + i] = $('#beep' + i).prop('checked') ? '1' : '0';
		}

	});

	$("#regexreset").click(function () {

		if (confirm('Delete all Filters and Colors?')) {
			for (var i = 1; i < MAX_SEARCH_PATTERN + 1; i++) {
				$('#regex' + i).val('');
				$('#whitelisted' + i).prop('checked', false);
				$('#hidden' + i).prop('checked', false);
				$('#color' + i).val($('.colorPicker_def_color').css('color'));
				$('#color' + i).change();
				$('#fcolor' + i).val($('.colorPicker_def_fcolor').css('color'));   
				$('#fcolor' + i).change();
				$('#beep' + i).prop('checked', false);
				localStorage['regex' + i] = '';
				localStorage['color' + i] = '';
				localStorage['fcolor' + i] = '';
				localStorage['whitelisted' + i] = '0';
				localStorage['hidden' + i] = '0';
				localStorage['beep' + i] = '0';
			}
		}

	});

	$(".debugls a, .debugl a").click(function () {
		parameters = parameters + "&debug=" + $(this).attr('sendval');
		return false;
	});

	$("#savelog").on('click', function (event) {
		var txt = '';
		$("#livelogdata li").each(function (i) {
			txt += $(this).text() + '\n';
		});
		// Data URI
		txtData = 'data:application/txt;charset=utf-8,' + encodeURIComponent(txt);
		$(this).attr({
			'href': txtData,
			'target': '_blank'
		});
	});

	$("#showhidesettings").click(function () {
		if ($("#showhidesettings").val() == 'Show Settings') {
			$("#showhidesettings").val('Hide Settings');
			$("#regexdata").fadeIn('slow');
		} else {
			$("#showhidesettings").val('Show Settings');
			$("#regexdata").fadeOut('slow');
		}
	});

	$("#stoplog").click(function () {
		if ($("#stoplog").val() == 'Stop Log') {
			$("#stoplog").val('Start Log');
			stoppoll = 1;
		} else {
			$("#stoplog").val('Stop Log');
			stoppoll = 0;
			waitForMsg();
		}
	});

	$("#onlineidle").click(function () {
		if ($("#onlineidle").text() == 'Login*') {
			$("#onlineidle")
				.text('Online & Idle*')
				.attr('title', 'Login info (click to switch)');
		} else {
			$("#onlineidle")
				.text('Login*')
				.attr('title', 'Online & Idle info (click to switch)');
		}
		if (!nostorage) localStorage.loi = $("#onlineidle").text();
		waitForMsg();
	});

	// switch reader ON/OFF
	$("a.switchreader").click(function (e) {
		e.preventDefault();
		var parameters_old = parameters;
		parameters += '&label=' + $(this).data('reader-name') + '&action=' + $(this).data('next-action');
		var rowid = '#' + $(this).data('md5');
		var img = $(this).children("img");
		waitForMsg();
		if ($(this).data('next-action') == 'enable') {
			$(this).data('next-action', 'disable').attr('title', 'Disable Reader: ' + $(this).data('reader-name') + $(this).data('desc'));
			$(rowid).attr('class', 'enabledreader');
			img.attr('src', 'image?i=ICDIS').attr('alt', 'Disable');
		} else {
			$(this).data('next-action', 'enable').attr('title', 'Enable Reader: ' + $(this).data('reader-name') + $(this).data('desc'));
			$(rowid).attr('class', 'disabledreader');
			img.attr('src', 'image?i=ICENA').attr('alt', 'Enable');
		}
		parameters = parameters_old;
	});

	// delete reader
	$("a.deletereader").click(function (e) {
		e.preventDefault();
		if (confirm("Delete Reader " + $(this).data('reader-name') + "?")) {
			var parameters_old = parameters;
			parameters += '&label=' + $(this).data('reader-name') + '&action=' + $(this).data('next-action');
			cleaninsert($(this).data('reader-name'));
			waitForMsg();
			parameters = parameters_old;
			$('#' + $(this).data('md5')).fadeOut('slow');
		}
	});

	// switch user ON/OFF
	$("a.switchuser").click(function (e) {
		e.preventDefault();
		var parameters_old = parameters;
		parameters += '&user=' + $(this).data('user-name') + '&action=' + $(this).data('next-action');
		var rowid = '#' + $(this).data('md5');
		var img = $(this).children("img");
		waitForMsg();
		if ($(this).data('next-action') == 'enable') {
			$(this).data('next-action', 'disable').attr('title', 'Disable User: ' + $(this).data('user-name') + $(this).data('desc'));
			$(rowid).attr('class', 'offline');
			$(rowid + ' > td.usercol2').text('offline');
			img.attr('src', 'image?i=ICDIS').attr('alt', 'Disable');
		} else {
			$(this).data('next-action', 'enable').attr('title', 'Enable User: ' + $(this).data('user-name') + $(this).data('desc'));
			$(rowid).attr('class', 'disabled');
			$(rowid + ' > td.usercol2').text('offline (disabled)');
			img.attr('src', 'image?i=ICENA').attr('alt', 'Enable');
		}
		parameters = parameters_old;
	});

	// reset user stats
	$("a.resetuser").click(function (e) {
		e.preventDefault();
		if (confirm("Reset Stats for " + $(this).data('user-name') + "?")) {
			var parameters_old = parameters;
			parameters += '&user=' + $(this).data('user-name') + '&action=' + $(this).data('next-action');
			waitForMsg();
			parameters = parameters_old;
		}
	});

	// delete user
	$("a.deleteuser").click(function (e) {
		e.preventDefault();
		if (confirm("Delete User " + $(this).data('user-name') + "?")) {
			var parameters_old = parameters;
			parameters += '&user=' + $(this).data('user-name') + '&action=' + $(this).data('next-action');
			cleaninsert($(this).data('user-name'));
			waitForMsg();
			parameters = parameters_old;
			$('#' + $(this).data('md5')).fadeOut('slow');
		}
	});

	// search related events
	$("#searchTerm").keyup(function () {
		var value = $("#searchTerm").val().toLowerCase().trim();
		$("#dataTable tr").each(function (index) {
			if (!index) return;
			$(this).find("td").each(function () {
				var id = (($(this).data('sort-value') == undefined || $(this).hasClass("usercol2")) ? $(this).text() : $(this).data('sort-value').toString()).toLowerCase().trim();
				var not_found = (id.indexOf(value) == -1);
				$(this).closest('tr').toggle(!not_found);
				return not_found;
			});
		});
	});

	$("#searchTerm").click(function () {
		cdpause();
	});

	$("#searchTerm").blur(function () {
		initDoc();
	});

	var table = $('#dataTable').stupidtable();

	table.bind('beforetablesort', function (event, data) {
		lockpoll = 1;
		table.addClass("disabledtable");
	});

	table.bind('aftertablesort', function (event, data) {
		// data.column - the index of the column sorted after a click
		// data.direction - the sorting direction (either asc or desc)
		lockpoll = 0;
		table.removeClass("disabledtable");
	});

	// copy emm to single write emm
	$("a.tosingleemm").click(function (e) {
		var ins_emm = (/\s+[0-9a-fA-F]+\s+([0-9a-fA-F]+)\s+/).exec($(this).text());
		$('#singleemm').val(ins_emm[1]);
	});
});

/*
 * General: Update page footer and failbannotifier
 */
function updateFooter(data) {
	$("#curtime").text(' ' + data.oscam.curdate + ' | ' + data.oscam.curtime + ' ');
	$("#runtime").text(' ' + data.oscam.runtime);
	$("#uptime") .text(' ' + data.oscam.uptime);

	if ($("#fbnotifier > span.span_notifier").length) {
		if (data.oscam.failbannotifier > 0) {
			$("#fbnotifier > span.span_notifier")
				.text(data.oscam.failbannotifier);
		}
		else {
			$("#fbnotifier > span.span_notifier").remove();
		}
	}
	else if (data.oscam.failbannotifier > 0) {
		$("#fbnotifier")
			.append('<SPAN CLASS="span_notifier">'+ data.oscam.failbannotifier + '</SPAN>');
	}
}

/*
 *	identfy an element within string of elements
 */
var poll_excluded;

function is_nopoll(value) {
	return (poll_excluded.indexOf(value) > (-1)) ? true : false;
}

/*
 * Userpage Functions: Update Page
 */
function updateUserpage(data) {

	// update user lines
	$.each(data.oscam.users, function (i, item) {
		var uid = "#" + item.user.usermd5;
		poll_excluded = ($(uid).attr('nopoll') != undefined) ? $(uid).attr('nopoll') : '';

		switch (item.user.classname) {
		case 'online':
			$(uid).attr('class', item.user.classname);

			if (!is_nopoll('usercol1')) {
				if ($(uid + " td.usercol1 > span.span_notifier").length) {
					if(item.user.unotify){
						$(uid + " td.usercol1 > span.span_notifier")
							.text(item.user.unotify);
					}
					else {
						$(uid + " td.usercol1 > span.span_notifier").remove();
					}
				}
				else if(item.user.unotify) {
					$(uid + " td.usercol1")
						.append('<SPAN CLASS="span_notifier">'+ item.user.unotify + '</SPAN>');
				}
			}

			if (!is_nopoll('usercol2')) {
				$(uid + " td.usercol2")
					.attr('title', item.user.stats.expectsleep != 'undefined' ? (item.user.stats.expectsleep > 0 ? 'Sleeping in ' + item.user.stats.expectsleep + ' minutes' : 'Sleeping') : '')
					.data('sort-value', item.user.ip)
					.html("<B>" + item.user.status + "</B><br>" + item.user.ip);
			}

			if (!is_nopoll('usercol3')) {
				$(uid + " td.usercol3").html(item.user.stats.idle + "<br>" + item.user.stats.timeonchannel.toHHMMSS());
			}

			if (!is_nopoll('usercol4')) {
				if (item.user.protoicon.length > 0) {
					if (!$(uid + " td.usercol4 > img").length || $(uid + " td.usercol4 > img").attr('src')!='image?i=IC_' + item.user.protoicon) {
						var protoimage = $('<img class="protoicon" src="image?i=IC_' + item.user.protoicon + '" />');
						protoimage.hide();
						$(uid + " td.usercol4").html(protoimage);
						protoimage.fadeIn('slow');
					}
				} else {
					$(uid + " td.usercol4").text(item.user.protocol);
				}

				$(uid + " td.usercol4")
					.attr('title', item.user.prototitle)
					.data('sort-value', item.user.protosort);
			}

			// channel icon
			if (!is_nopoll('usercol6')) {
				$(uid + " td.usercol6")
					.attr('title', item.user.lastchanneltitle)
					.data('sort-value', item.user.lastchannelsort);

				if (item.user.lca.length > 0) {
					// if we already have a picon within link
					if ($(uid + " > td.usercol6 > img.usericon").length) {
						// we compare the picon name and switch if different
						var image = $(uid + " > td.usercol6 > img.usericon");
						if (image.attr('src') != 'image?i=IC_' + item.user.lca) {
							// set title of link as tooltip
							image.hide();
							image.attr('src', 'image?i=IC_' + item.user.lca);
							image.fadeIn('slow');
							image.attr('alt', item.user.lastchanneltitle);
							image.attr('title', item.user.lastchanneltitle);
						}
					} else {
						// we have no image so we have to create one

						// if we have picon clear text
						$(uid + " > td.usercol6").text('');

						// just to be sure that class of image is set
						if ($(uid + " > td.usercol6 > img").length) {
							$(uid + " > td.usercol6 > img").attr('class', 'usericon');
						}

						newimage = $('<img class="usericon" src="image?i=IC_' + item.user.lca + '">');
						newimage.hide();
						$(uid + " > td.usercol6").append(newimage);
						newimage.fadeIn('slow');
						newimage.attr('alt', item.user.lastchanneltitle);
						newimage.attr('title', item.user.lastchanneltitle);
					}
				} else {
					$(uid + " td.usercol6").html(item.user.lastchannel);
				}
			}

			if (!is_nopoll('usercol7')) {
				$(uid + " td.usercol7")
					.text(item.user.stats.cwlastresptimems);
			}
			//usercol8 ???
			if (!is_nopoll('usercol9')) {
				$(uid + " td.usercol9").text(item.user.stats.cwok);
			}
			if (!is_nopoll('usercol10')) {
				$(uid + " td.usercol10").text(item.user.stats.cwnok);
			}
			if (!is_nopoll('usercol11')) {
				$(uid + " td.usercol11").text(item.user.stats.cwignore);
			}
			if (!is_nopoll('usercol12')) {
				$(uid + " td.usercol12").text(item.user.stats.cwtimeout);
			}
			if (!is_nopoll('usercol13')) {
				$(uid + " td.usercol13").text(item.user.stats.cwccyclechecked + ' / ' + item.user.stats.cwcycleok + ' / ' + item.user.stats.cwcyclenok + ' / ' + item.user.stats.cwcycleign);
			}
			if (!is_nopoll('usercol14')) {
				$(uid + " td.usercol14").text(item.user.stats.cwcache);
			}
			if (!is_nopoll('usercol15')) {
				$(uid + " td.usercol15").text(item.user.stats.cwtun);
			}
			if (!is_nopoll('usercol16')) {
				$(uid + " td.usercol16").text(item.user.stats.cwcache);
			}
			if (!is_nopoll('usercol17')) {
				$(uid + " td.usercol17").text(item.user.stats.emmok);
			}
			if (!is_nopoll('usercol18')) {
				$(uid + " td.usercol18").text(item.user.stats.emmnok);
			}
			if (!is_nopoll('usercol19')) {
				$(uid + " td.usercol19").text(item.user.stats.cwrate + item.user.stats.cwrate2);
			}
			if (!is_nopoll('usercol22')) {
				$(uid + " td.usercol22").text(item.user.stats.cascusercomb);
			}
			if (!is_nopoll('usercol21')) {
				$(uid + " td.usercol21").text(item.user.stats.n_requ_m);
			}
			if (!is_nopoll('usercol20')) {
				$(uid + " td.usercol20")
					.attr('title', item.user.expview)
					.text(item.user.stats.expdate);
			}
			break;

		case 'connected':
			$(uid).attr('class', item.user.classname);

			if (!is_nopoll('usercol1')) {
				if ($(uid + " td.usercol1 > span.span_notifier").length) {
					if(item.user.unotify){
						$(uid + " td.usercol1 > span.span_notifier")
							.text(item.user.unotify);
					}
					else {
						$(uid + " td.usercol1 > span.span_notifier").remove();
					}
				}
				else if(item.user.unotify) {
					$(uid + " td.usercol1")
						.append('<SPAN CLASS="span_notifier">'+ item.user.unotify + '</SPAN>');
				}
			}

			if (!is_nopoll('usercol2')) {
				$(uid + " td.usercol2")
					.attr('title', '')
					.data('sort-value', item.user.ip)
					.html("<B>" + item.user.status + "</B><br>" + item.user.ip);
			}

			if (!is_nopoll('usercol3')) {
				$(uid + " td.usercol3").html(item.user.stats.idle + "<br>" + item.user.stats.timeonchannel.toHHMMSS());
			}

			if (!is_nopoll('usercol4')) {
				if (item.user.protoicon.length > 0) {
					if (!$(uid + " td.usercol4 > img").length || $(uid + " td.usercol4 > img").attr('src')!='image?i=IC_' + item.user.protoicon) {
						var protoimage = $('<img class="protoicon" src="image?i=IC_' + item.user.protoicon + '" />');
						protoimage.hide();
						$(uid + " td.usercol4").html(protoimage);
						protoimage.fadeIn('slow');
					}
				} else {
					$(uid + " td.usercol4").text(item.user.protocol);
				}
				$(uid + " td.usercol4")
					.attr('title', item.user.prototitle)
					.data('sort-value', item.user.protosort);
			}

			if (!is_nopoll('usercol6')) {
				// channel icon
				$(uid + " td.usercol6")
					.attr('title', item.user.lastchanneltitle)
					.data('sort-value', item.user.lastchannelsort);

				if (item.user.lca.length > 0) {
					var image;
					if ($(uid + " td.usercol6").html().length == 0) {
						image = $('<img class="usericon" src="image?i=IC_' + item.user.lca + '" />');
						image.hide();
						$(uid + " td.usercol6").prepend(image);
						image.fadeIn('slow');
					} else {
						image = $(uid + " td.usercol6 img.usericon");
						if (image.attr('src') != ('image?i=IC_' + item.user.lca)) {
							image.fadeOut('fast', function () {
								image.attr('src', 'image?i=IC_' + item.user.lca);
								image.fadeIn('slow');
							});
							image.attr('alt', item.user.lcb);
							image.attr('title', item.user.lastchanneltitle);
						}
					}
				} else {
					$(uid + " td.usercol6").html(item.user.lastchannel);
				}
			}

			if (!is_nopoll('usercol7')) {
				$(uid + " td.usercol7")
					.text(item.user.stats.cwlastresptimems);
			}
			if (!is_nopoll('usercol19')) {
				$(uid + " td.usercol19").text(item.user.stats.cwrate);
			}
			break;

		default:
			//check the last status
			if ('online,connected'.indexOf($(uid).attr('class')) > (-1)) {
				// last status was online so cleanup offline
				$(uid).attr('class', item.user.classname);
				if (!is_nopoll('usercol1')) {
					if ($(uid + " td.usercol1 > span.span_notifier").length) {
						$(uid + " td.usercol1 > span.span_notifier").remove();
					}
				}
				if (!is_nopoll('usercol2')) {
					$(uid + " td.usercol2")
						.attr('title', '')
						.html(item.user.status);
				}
				if (!is_nopoll('usercol3')) {
					$(uid + " td.usercol3").text('');
				}
				if (!is_nopoll('usercol4')) {
					$(uid + " td.usercol4")
						.text('')
						.attr('title', '');
					var protoimage = $(uid + " td.usercol4 img.protoicon");
					if (image) {
						protoimage.fadeOut('slow');
						protoimage.remove();
					}
				}

				//channelicon
				if (!is_nopoll('usercol6')) {
					$(uid + " td.usercol6")
						.text('')
						.data('sort-value', '');

					var image = $(uid + " td.usercol6 img.usericon");
					if (image) {
						image.fadeOut('slow');
						image.remove();
					}
				}
				if (!is_nopoll('usercol7')) {
					$(uid + " td.usercol7")
						.text('');
				}
			}
			break;
		}

		if (typeof custompoll == 'function') {
			custompoll(item);
		}

	});

	// update user totals + ECM
	updateTotals(data);

	// update footer
	updateFooter(data);
}

/*
 * Readerpage Functions: Update Page
 */
function updateReaderpage(data) {

	// update reader lines
	$.each(data.oscam.readers, function (i, item) {
		var uid = "#" + item.labelmd5;
		poll_excluded = ($(uid).attr('nopoll') != undefined) ? $(uid).attr('nopoll') : '';

		$(uid).attr('class', item.classname);

		if (!is_nopoll('readercol4')) {
			$(uid + " td.readercol4").text(item.stats.ecmsok + item.stats.ecmsokrel)
				.data('sort-value', item.stats.ecmsok);
		}
		if (!is_nopoll('readercol5')) {
			$(uid + " td.readercol5").text(item.stats.ecmsnok + item.stats.ecmsnokrel)
				.data('sort-value', item.stats.ecmsnok);
		}
		if (!is_nopoll('readercol6')) {
			$(uid + " td.readercol6").text(item.stats.ecmsfiltered);
		}
		if (!is_nopoll('readercol7')) {
			$(uid + " td.readercol7").text(item.stats.emmerror);
		}
		if (!is_nopoll('readercol8')) {
			$(uid + " td.readercol8").text(item.stats.emmwritten);
		}
		if (!is_nopoll('readercol9')) {
			$(uid + " td.readercol9").text(item.stats.emmskipped);
		}
		if (!is_nopoll('readercol10')) {
			$(uid + " td.readercol10").text(item.stats.emmblocked);
		}
		if (!is_nopoll('readercol11')) {
			$(uid + " td.readercol11").text(item.stats.lbweight);
		}

		if (typeof custompoll == 'function') {
			custompoll(item);
		}
	});

	// update user totals + ECM
	updateTotals(data);

	// update footer
	updateFooter(data);

}

/*
 *	LiveLog Functions: format the debuglevel switcher
 */
function setDebuglevel(debug, maxdebug) {
	var cs_dblevel = parseInt(debug);
	var maxlevel = parseInt(maxdebug);
	if (lastdebuglevel != cs_dblevel) {
		var lvl = 0;
		$("#debugfrom").text(' Switch Debug from ' + cs_dblevel + ' to ');
		for (var i = 0; i < maxlevel; i++) {
			lvl = 1 << i;
			if (cs_dblevel & lvl) {
				$("#debug" + lvl).attr('sendval', cs_dblevel - lvl);
			} else {
				$("#debug" + lvl).attr('sendval', cs_dblevel + lvl);
			}
			$("#debug" + lvl).attr('class', (cs_dblevel & lvl) ? 'debugls' : 'debugl');
		}
		lastdebuglevel = cs_dblevel;
	}
}

/*
 * Livelog Functions: get filter color
 */
function getLogColor(text) {

	if (nostorage) {
		return null;
	}

	for (var i = 1; i < MAX_SEARCH_PATTERN + 1; i++) {
		var pattern = localStorage['regex' + i];
		var color = localStorage['color' + i];
		var fcolor = localStorage['fcolor' + i];
		var hidden = localStorage['hidden' + i];
		var beep = localStorage['beep' + i];
		var regex = new RegExp(pattern);
		if (pattern && (pattern != '') && (regex.exec(text))) {
			return {
				color: color,
				fcolor: fcolor,
				hidden: hidden,
				beep: beep
			}
		}
	}
	return null;
}

/*
 * Livelog Functions: get whitelist state
 */
function isWhitelisted(text) {

	if (nostorage) {
		return 1;
	}

	var numwhite = 0;
	for (var i = 1; i < MAX_SEARCH_PATTERN + 1; i++) {
		numwhite += parseInt(localStorage['whitelisted' + i]);
	}
	if (numwhite > 0) {
		for (var i = 1; i < MAX_SEARCH_PATTERN + 1; i++) {
			var whitelisted = localStorage['whitelisted' + i];
			var pattern = localStorage['regex' + i];
			var regex = new RegExp(pattern);
			if (pattern && (pattern != '') && (whitelisted == '1') && (regex.exec(text))) {
				return 1;
			}
		}
		return 0;
	} else {
		return 1;
	}
}

/*
 * LiveLog Functions: manage the delivered data / loglines
 */
function updateLogpage(data) {

	lockpoll = 1;

	if (data.oscam.debug) {
		setDebuglevel(data.oscam.debug, data.oscam.maxdebug);
	}
	if (data.oscam.logdisabled) {
		stoppoll = 1;
		$("#livelogdata").append('<li>Log is disabled</li>\n');
	}

	$.each(data.oscam.lines, function (i, item) {

		if (isWhitelisted(Base64.decode(item.line))) {
			var newcolor = getLogColor(Base64.decode(item.line));
			var newline = $('<li class="' + decodeURIComponent(item.usr) + '">' + Base64.decode(item.line) + '</li>\n');
			var hiddenline = 0;
			if (newcolor) {
				if (newcolor.hidden != '1') {
					if (newcolor.color && newcolor.color != '') {
						newline.css('background-color', newcolor.color);
					}
					if (newcolor.fcolor && newcolor.fcolor != '') {
						newline.css('color', newcolor.fcolor);
					}
					$("#livelogdata").append(newline);
					if (newcolor.beep == 1) {
						beep(50, 4, 1000, 0.2);
					}
				} else {
					hiddenline = 1;
				}
			} else {
				$("#livelogdata").append(newline);
			}

			if (!hiddenline) {
				if ($("#livelogdata li").length >= maxloglines) {
					$("#livelogdata li").eq(0).remove();
				}
				if ($("#livelog:hover").length) {
					$('#livelog').stop(true);
				} else {
					$("#livelog").scrollTop($("#livelog").prop("scrollHeight"));
				}
			}
		}
		parameters = "?lastid=" + item.id;
	});

	// update footer
	updateFooter(data);

	lockpoll = 0;

}

/*
 * Statuspage Functions: JQuery Extensions
 */
$.fn.toHtmlString = function () {
	return $('<td></td>').html($(this).clone()).html();
};

/*
 *	Statuspage Functions: Generate a Bar for Barchart
 */
function generateBar(value) {
	var bar = $('<div class="bar"/>');
	var maxheight = 75; //$( "#graph" ).height() -15;
	var numval = parseInt(value);
	numval = Math.floor(numval / 30);
	if (numval >= maxheight) {
		bar.css('background-color', '#FF0000');
		numval = maxheight;
	}
	bar.css('height', numval + 'px');
	return bar;
}

/*
 *	Statuspage Functions: Add/Remove Subheadline
 */
function addremoveSubheadline(remove, data, container, subheadline, type) {

	if (remove == 1 && $("#" + subheadline).length) {
		$("#" + subheadline)
			.fadeOut('slow')
			.remove();
		$(".status tbody:empty").hide();
	}

	if (remove == 0 && !$("#" + subheadline).length) {
		$(container).removeAttr('style');
		var strheadline = '<TR id="' + subheadline + '"><TD CLASS="subheadline" COLSPAN="12">';
		if (type == 'c') {
			if (data.oscam.status.ucac != '') { //hide idle clients
				strheadline += '<P id="chead">Clients <span id="ucs">' + data.oscam.status.ucs + '</span>/<span id="uca">' + data.oscam.status.uca + '</span> (<span id="ucac">' + data.oscam.status.ucac + '</span> with ECM within last <span id="cfgh">' + data.oscam.status.cfgh + '</span> seconds)</P>'
			} else {
				strheadline += '<P id="chead">Clients <span id="ucs">' + data.oscam.status.ucs + '</span>/<span id="uca">' + data.oscam.status.uca + '</span></P>'
			}
			strheadline += '<DIV><input type="button" onclick="window.location.href = \'status.html?hideidle=5\';" value="Show Hidden" title="Show Hidden User">';
			strheadline += '<input type="button" onclick="window.location.href = \'status.html?hideidle=0\';" value="Show Idle" title="Show Idle User">';
			strheadline += '<input type="button" onclick="window.location.href = \'status.html?hideidle=1\';" value="Hide Idle" title="Hide Idle User">';
		} else if (type == 'm') {
			strheadline += '<P id="shead">Server <span id="scs">' + data.oscam.status.scs + '</span>/<span id="sca">' + data.oscam.status.sca + '</span> & Monitors <span id="mcs">' + data.oscam.status.mcs + '</span>/<span id="mca">' + data.oscam.status.mca + '</span></P>'
			strheadline += '<DIV><input type="button" onclick="window.location.href = \'status.html?hideidle=2\';" value="Show Hidden" title="Show Hidden Server & Monitors">';
		}
		strheadline += '</DIV></TD></TR>';
		var headline = $(strheadline);
		headline.hide();
		$(container).append(headline);
		headline.fadeIn('slow');
	}
}

/*
 *	Statuspage Functions: Update Totals cacheEx
 */
function updateCacheextotals(data) {
	$("#total_cachexpush").text(data.oscam.totals.total_cachexpush);
	$("#total_cachexgot").text(data.oscam.totals.total_cachexgot);
	$("#total_cachexhit").text(data.oscam.totals.total_cachexhit);
	$("#rel_cachexhit").text(data.oscam.totals.rel_cachexhit);
	$("#total_cachesize").text(data.oscam.totals.total_cachesize);
}

/*
 *	Statuspage Functions: Update Totals User + ECM
 */
function updateTotals(data) {
	$("#total_users").text(data.oscam.totals.total_users);
	$("#total_active").text(data.oscam.totals.total_active);
	$("#total_connected").text(data.oscam.totals.total_connected);
	$("#total_online").text(data.oscam.totals.total_online);
	$("#total_disabled").text(data.oscam.totals.total_disabled);
	$("#total_expired").text(data.oscam.totals.total_expired);
	$("#total_cwok").text(data.oscam.totals.total_cwok);
	$("#rel_cwok").text(data.oscam.totals.rel_cwok);
	$("#total_cwcache").text(data.oscam.totals.total_cwcache);
	$("#rel_cwcache").text(data.oscam.totals.rel_cwcache);
	$("#total_cwnok").text(data.oscam.totals.total_cwnok);
	$("#rel_cwnok").text(data.oscam.totals.rel_cwnok);
	$("#total_cwtout").text(data.oscam.totals.total_cwtout);
	$("#rel_cwtout").text(data.oscam.totals.rel_cwtout);
	$("#total_cwign").text(data.oscam.totals.total_cwign);
	//$( "#rel_cwign" ).text( data.oscam.totals.rel_cwign );
	$("#total_ecm_min").text(data.oscam.totals.total_ecm_min);
	$("#total_cw").text(data.oscam.totals.total_cw);
	$("#total_cwpos").text(data.oscam.totals.total_cwpos);
	$("#rel_cwpos").text(data.oscam.totals.rel_cwpos);
	$("#total_cwneg").text(data.oscam.totals.total_cwneg);
	$("#rel_cwneg").text(data.oscam.totals.rel_cwneg);
	$("#total_emok").text(data.oscam.totals.total_emok);
	$("#rel_emok").text(data.oscam.totals.rel_emok);
	$("#total_emnok").text(data.oscam.totals.total_emnok);
	$("#rel_emnok").text(data.oscam.totals.rel_emnok);
	$("#total_em").text(data.oscam.totals.total_em);
}

/*
 *	Statuspage Functions: Update Totals Sysinfo
 */
var first_run = 1;

function updateSysinfo(data) {
	$("#mem_cur_total").text(data.oscam.sysinfo.mem_cur_total);
	$("#mem_cur_free").text(data.oscam.sysinfo.mem_cur_free);
	$("#mem_cur_used").text(data.oscam.sysinfo.mem_cur_used);
	$("#mem_cur_buff").text(data.oscam.sysinfo.mem_cur_buff);
	$("#mem_cur_cached").text(data.oscam.sysinfo.mem_cur_cached);
	$("#mem_cur_freem").attr('title', 'max Free: ' + data.oscam.sysinfo.mem_cur_freem + ' \n(incl. Buffer & Cached)');
	$("#mem_cur_totalsw").text(data.oscam.sysinfo.mem_cur_totalsw);
	$("#mem_cur_freesw").text(data.oscam.sysinfo.mem_cur_freesw);
	$("#mem_cur_usedsw").text(data.oscam.sysinfo.mem_cur_usedsw);
	$("#mem_cur_shared").text(data.oscam.sysinfo.mem_cur_shared);
	$("#oscam_vmsize").text(data.oscam.sysinfo.oscam_vmsize);
	$("#oscam_rsssize").text(data.oscam.sysinfo.oscam_rsssize);
	$("#server_procs").text(data.oscam.sysinfo.server_procs);
	$("#cpu_load_0").text(data.oscam.sysinfo.cpu_load_0);
	$("#cpu_load_1").text(data.oscam.sysinfo.cpu_load_1);
	$("#cpu_load_2").text(data.oscam.sysinfo.cpu_load_2);
	if (!first_run) {
		$("#oscam_refresh").text(data.oscam.sysinfo.oscam_refresh);
		$("#oscam_cpu_user").text(data.oscam.sysinfo.oscam_cpu_user);
		$("#oscam_cpu_sys").text(data.oscam.sysinfo.oscam_cpu_sys);
		$("#oscam_cpu_sum").text(data.oscam.sysinfo.oscam_cpu_sum);
	}
	first_run = 0;
}

/*
 *	Statuspage Functions: Update Page
 */
function updateStatuspage(data) {

	var updatedclients = "";
	// update status lines
	$.each(data.oscam.status.client, function (i, item) {
		var newrow;

		//add ID's for type c and m to list of existing elements. We need this to delete all not longer existing
		updatedclients += item.thid + ",";

		var uid = "#" + item.thid;
		poll_excluded = ($(uid).attr('nopoll') != undefined) ? $(uid).attr('nopoll') : '';

		if (!$(uid).length && 'rpcxm'.indexOf(item.type) > (-1)) {
			//build new row
			var rowcontent = '<TR ID="' + item.thid + '"><TD CLASS="statuscol0"/><TD CLASS="statuscol1"/><TD CLASS="statuscol4"/>';
			rowcontent += '<TD CLASS="statuscol5"/><TD CLASS="statuscol7"/><TD CLASS="statuscol8"/><TD CLASS="statuscol9"/>';
			rowcontent += '<TD CLASS="statuscol12"/><TD CLASS="statuscol13"/><TD CLASS="statuscol14"/><TD CLASS="statuscol15"/>';
			rowcontent += '<TD CLASS="statuscol16"/></TR>';
			newrow = $(rowcontent);
			newrow.hide();
			// if we have no clients we have to add the headline first

			// append new clientrow to table
			var container = '';
			if ('hms'.indexOf(item.type) > (-1)) {
				container = '#tbodys';
				if (item.type == 'm') {
					if (!$("#Serverheadline").length) {
						addremoveSubheadline(0, data, container, "Serverheadline", item.type);
					} else if (!$("#mca").length) {
						$("#shead").append(' & Monitors <span id="mcs">' + data.oscam.status.mcs + '</span>/<span id="mca">' + data.oscam.status.mca + '</span>');
					}
				}
			} else if ('px'.indexOf(item.type) > (-1)) {
				container = '#tbodyp';
			} else {
				container = '#tbody' + item.type;
				if (!$("#Userheadline").length && item.type == 'c') {
					addremoveSubheadline(0, data, container, "Userheadline", item.type);
				}
			}
			$(container).append(newrow);

			var name1, name2, name3, kill1, kill2, kill3, edit1;
			switch (item.type) {
			case 'c':
			case 'm':
				name1 = 'User';
				name2 = item.name_enc;
				kill1 = '" href="status.html?action=kill&threadid=' + item.thid.substring(3, item.thid.length);
				kill2 = 'Kill'
				kill3 = 'ICKIL';
				edit1 = 'user_edit.html?user=';
				break;
			case 'r':
			case 'p':
			case 'x':
				name1 = (item.type == 'r') ? 'Reader' : 'Proxy';
				name2 = item.rname_enc;
				kill1 = '" href="status.html?action=restart&label=' + name2;
				kill2 = 'Restart';
				kill3 = 'ICRES';
				edit1 = 'readerconfig.html?label=';
				break;
			}
			name3 = decodeURIComponent(name2);

			if (!is_nopoll('statuscol0')) {
				$(uid + " > td.statuscol0").append('<a title="Hide ' +
					name1 + ': ' + name3 + (item.desc ? '\n' + item.desc.replace('&#13;', '') : '') +
					'" href="status.html?hide=' +
					item.thid.substring(3, item.thid.length) +
					'"><img class="icon" alt="Hide"' +
					'" src="image?i=ICHID"></img>');
			}

			if (!is_nopoll('statuscol1')) {
				$(uid + " > td.statuscol1").append('<a title="' + kill2 + ' ' +
					name1 + ': ' + name3 + (item.desc ? '\n' + item.desc.replace('&#13;', '') : '') +
					kill1 + '"><img class="icon" alt="' + kill2 + 
					'" src="image?i=' + kill3 + '"></img>');
			}

			if (!is_nopoll('statuscol4')) {
				if (data.oscam.piconenabled == "1" && !item.upicmissing) {
					$(uid + " > td.statuscol4").append('<a href="' + edit1 + name2 + '"><img class="statususericon" title="Edit ' +
						name1 + ': ' + name3 + (item.desc ? '\n' + item.desc.replace('&#13;', '') : '') + '" src="image?i=IC_' + name2 + '"></img></a>');
				} else {
					$(uid + " > td.statuscol4").append('<a href="' + edit1 + name2 + '" title="Edit ' + name1 + ': ' +
						name3 + (item.desc ? '\n' + item.desc.replace('&#13;', '') : '') + '\n' + item.upicmissing + '">' + name3 + '</a>');
				}
			}

			if (!is_nopoll('statuscol13')) {
				$(uid + " > td.statuscol13").append('<A HREF="files.html?file=' + data.oscam.srvidfile + '" TITLE="' + item.request + '"/>');
			}

			if (!is_nopoll('statuscol9')) {
				if (data.oscam.piconenabled == "1" && item.protoicon) {
					$(uid + " > td.statuscol9").append('<img class="protoicon" title="Protocol ' + item.protocol + ' ' + 
						item.protocolext + '" alt="IC_' + item.protoicon + '" src="image?i=IC_' + item.protoicon + '"></img>');
				} else {
					$(uid + " > td.statuscol9").attr('title', item.protocolext).text(item.protocol);
				}
			}
		}

		$(uid).attr('class', item.type).data('ecmhistory', item.request.ecmhistory).removeAttr('style');

		// fix for anonymous newcamd-clients
		if ($(uid + " > td.statuscol4").text().match('anonymous')) {
			if (!is_nopoll('statuscol9')) {
				if (data.oscam.piconenabled == "1" && item.protoicon) {
					$(uid + " > td.statuscol9").html('<img class="protoicon" title="Protocol ' + item.protocol + ' ' + 
						item.protocolext + '" alt="IC_' + item.protoicon + '" src="image?i=IC_' + item.protoicon + '"></img>');
				} else {
					$(uid + " > td.statuscol9").attr('title', item.protocolext).text(item.protocol);
				}
			}

			if (!is_nopoll('statuscol4')) {
				if (data.oscam.piconenabled == "1" && !item.upicmissing) {
					$(uid + " > td.statuscol4").html('<a href="user_edit.html?user=' + item.name_enc +
						'"><img class="statususericon" title="Edit User: ' + decodeURIComponent(item.name_enc) + item.desc +
						'" src="image?i=IC_' + item.name_enc + '"></img></a>');
				} else {
					$(uid + " > td.statuscol4").html('<a href="user_edit.html?user=' + item.name_enc + '" title="Edit User: ' +
						decodeURIComponent(item.name_enc) + item.desc + item.upicmissing + '">' + decodeURIComponent(item.name_enc) + '</a>');
				}
			}
		}

		if (!is_nopoll('statuscol5')) {
			switch (item.au) {
			case '0':
				$(uid + " > td.statuscol5").text('OFF').attr('class', 'statuscol5 statuscol5OFF');
				break;
			case '-1':
				$(uid + " > td.statuscol5").html('<a class="tooltip" href="#">ON<span>' + item.aufmt + '</span></a>').attr('class', 'statuscol5 statuscol5ON');
				break;
			default:
				$(uid + " > td.statuscol5").html('<a class="tooltip" href="#">ACTIVE<span>' + item.aufmt + '</span></a>').attr('class', 'statuscol5 statuscol5ACTIVE');
				break;
			}
		}

		if (!is_nopoll('statuscol4')) {
			$(uid + " > td.statuscol4").attr('title', decodeURIComponent(item.type == 'c' ? item.name_enc : item.rname_enc) + (item.desc ? '\n' + item.desc.replace('&#13;', '') : ''));
		}
		if (!is_nopoll('statuscol7')) {
			$(uid + " > td.statuscol7").text(item.connection.ip);
		}
		if (!is_nopoll('statuscol8')) {
			$(uid + " > td.statuscol8").text(item.connection.port);
		}
		if (!is_nopoll('statuscol9')) {
			$(uid + " > td.statuscol9").attr('title', item.protocolext);
		}
		if (!is_nopoll('statuscol12')) {
			$(uid + " > td.statuscol12").text(item.request.srvid + ':' + item.request.caid + '@' + item.request.provid);
		}

		if (!is_nopoll('statuscol13')) {
			var newimage;

			if (data.oscam.piconenabled == '1' && item.request.srvid != '0000' && item.request.picon) {

				// if we already have a picon within link
				if ($(uid + " > td.statuscol13 > a > img.statususericon").length) {
					// we compare the picon name and switch if different
					var image = $(uid + " > td.statuscol13 > a > img.statususericon");
					if (image.attr('src') != 'image?i=IC_' + item.request.picon) {
						// set title of link as tooltip
						$(uid + " > td.statuscol13 > a").attr('title', item.request.chname + item.request.chprovider);
						image.hide();
						image.attr('src', 'image?i=IC_' + item.request.picon);
						image.fadeIn('slow');
					}
				} else {
					// we have no image so we have to create one

					// if we have picon clear text
					$(uid + " > td.statuscol13").text('');

					// if we have no link we create one
					if (!$(uid + " > td.statuscol13 > a").length) {
						$(uid + " > td.statuscol13").append('<a href="files.html?file=' + data.oscam.srvidfile + '"/>');
					}
					// set title of link as tooltip
					$(uid + " > td.statuscol13 > a").attr('title', item.request.chname + item.request.chprovider);

					// just to be sure that class of image is set
					if ($(uid + " > td.statuscol13 > a > img").length) {
						$(uid + " > td.statuscol13 > a > img").attr('class', 'statususericon');
					}

					newimage = $('<img class="statususericon" src="image?i=IC_' + item.request.picon + '">');
					newimage.hide();
					$(uid + " > td.statuscol13 > a").append(newimage);
					newimage.fadeIn('slow');
				}

			} else {
				// picon is not delivered in JSON - we set the text of column
				if (item.request.chname && item.request.srvid != '0000') {
					$(uid + " > td.statuscol13").html('<a href="files.html?file=' + data.oscam.srvidfile + '"/>');
					$(uid + " > td.statuscol13 > a").html(item.request.chname + item.request.chprovider);
					$(uid + " > td.statuscol13 > a").attr('title', item.request.chname + item.request.chprovider);
				} else {
					$(uid + " > td.statuscol13").html('');
				}
			}
		}

		if (!is_nopoll('statuscol14')) {
			if ('hms'.indexOf(item.type) > (-1)) {
				$(uid + " > td.statuscol14").text('');
			} else {
				var value = item.type == 'c' ? (item.request.answered ? item.request.answered + ' (' + item.request.msvalue + ' ms)' : '') : item.request.lbvalue;
				if (data.oscam.lbdefined) {
					var label = item.rname_enc.replace('+%28cache%29', '');
					var name = item.type == 'c' ? item.request.answered.replace(' (cache)', '') : decodeURIComponent(label);
					if (!$(uid + " > td.statuscol14 > a").length) {
						$(uid + " > td.statuscol14")
							.text('')
							.append('<a href="readerstats.html?label=' + label + '&amp;show=0" TITLE="Show statistics for: ' + name + '">');
					} else {
						$(uid + " > td.statuscol14 > a")
							.attr('href','readerstats.html?label=' + label + '&show=0')
							.attr('title','Show statistics for: ' + name);
					}
					$(uid + " > td.statuscol14 > a").text(value);
				} else {
					$(uid + " > td.statuscol14").text(value);
				}
			}
		}

		if (!is_nopoll('statuscol15')) {
			if ($("#onlineidle").text() != 'Login*') {
				$(uid + " > td.statuscol15")
					.html(item.times.online.toHHMMSS() + '<br>' + item.times.idle.toHHMMSS())
					.attr('title', 'Login: ' + item.times.loginfmt);
			} else {
				$(uid + " > td.statuscol15")
					.html(item.times.loginfmt.substring(0, 8) + '<br>' + item.times.loginfmt.substring(10, 18))
					.attr('title', 'Online: ' + item.times.online.toHHMMSS() + '\nIDLE: ' + item.times.idle.toHHMMSS());
			}
		}

		if (!is_nopoll('statuscol16')) {
			var entitlement = '';

			switch (item.type) {
			case 'r':
				// entitlement for native cards

				var activeentitlements = item.connection.entitlements.length;
				if (activeentitlements > 0) {
					entitlement += '<br><a href="entitlements.html?label=' + item.rname_enc + '&hideexpired=1" class="tooltip">';
					entitlement += '(' + activeentitlements + ' entitlement' + ((activeentitlements != 1) ? 's)' : ')');
					entitlement += '<span>';
					$.each(item.connection.entitlements, function (i, obj) {
						entitlement += obj.caid + ':' + obj.provid + '<br>' + obj.exp + '<br><br>';
					});
					entitlement = entitlement.substring(0, entitlement.length - 4);
					entitlement += '</span></a>';
				} else {
					entitlement += '<br><a href="entitlements.html?label=';
					entitlement += item.rname_enc + '&hideexpired=1" class="tooltip1">(no entitlements)<span>No active entitlements found</span></a>';
				}
				break;

			case 'p':
				if (item.connection.entitlements.length > 0 && item.protocol.indexOf('cccam') > -1) {
					// cccam
					var entobj = item.connection.entitlements[0];
					entitlement += '<br><a href="entitlements.html?label=' + item.rname_enc + '" class="tooltip' + entobj.cccreshare + '">';
					entitlement += '(' + entobj.locals + ' of ' + entobj.cccount + ' card' + (entobj.cccount > 1 ? "s" : "") + ')';
					entitlement += '<span>card_count=' + entobj.cccount + '<br>';
					entitlement += 'hop1=' + entobj.ccchop1 + '<br>';
					entitlement += 'hop2=' + entobj.ccchop2 + '<br>';
					entitlement += 'hopx=' + entobj.ccchopx + '<br>';
					entitlement += 'currenthops=' + entobj.ccccurr + '<br><br>';
					entitlement += 'reshare0=' + entobj.cccres0 + '<br>';
					entitlement += 'reshare1=' + entobj.cccres1 + '<br>';
					entitlement += 'reshare2=' + entobj.cccres2 + '<br>';
					entitlement += 'resharex=' + entobj.cccresx + '</span></a>';
				}
				if (item.protocol.indexOf('gbox') > -1) {
					// TO DO gbox
					var $html = $(uid + " > td.statuscol16").toHtmlString();
					if ($html != undefined) {
						entitlement = $html.substring($html.indexOf('<br>'), $html.indexOf('</a>'));
						if (entitlement) entitlement += '</a>';
					}
				}
				break;
			}

			$(uid + " > td.statuscol16").empty().html(item.connection.status + entitlement).attr('class', 'statuscol16 statuscol16' + item.connection.status);
		}

		if (newrow) {
			newrow.fadeIn("slow");
		}

		if (typeof custompoll == 'function') {
			custompoll(item);
		}

	});

	//remove non existing elements
	$("tr.c, tr.m, tr.r, tr.p, tr.h").each(function () {
		if (updatedclients.indexOf($(this).attr('id')) == -1) {
			$(this).fadeOut('slow').remove();
		}
	});

	// if we have no clients left we remove the headline
	if (!$("tr.c").length && data.oscam.status.uca == '0') {
		addremoveSubheadline(1, '', '', "Userheadline", 'c');
	}
	// if we have no servers/monitors left we remove the headline
	if (!$("tr.m").length && data.oscam.status.mca == '0') {
		if ($("#mca").length) {
			$("#shead").replaceWith('<P id="shead">Server <span id="scs">' + data.oscam.status.scs + '</span>/<span id="sca">' + data.oscam.status.sca + '</span></P>');
		}
		if (!$("tr.s").length && !$("tr.h").length && data.oscam.status.sch == '0') {
			addremoveSubheadline(1, '', '', "Serverheadline", 'm');
		}
	}

	//update client-headline
	if (data.oscam.status.uca != '0') {
		if (!$("#Userheadline").length) {
			addremoveSubheadline(0, data, "#tbodyc", "Userheadline", "c");
		} else {
			$("#ucs").text(data.oscam.status.ucs);
			$("#uca").text(data.oscam.status.uca);
			if (data.oscam.status.ucac != '0') $("#ucac").text(data.oscam.status.ucac);
		}
	}
	//update server/monitor-headline
	if (data.oscam.status.mca != '0' && $("#mcs")) {
		$("#mcs").text(data.oscam.status.mcs);
		$("#mca").text(data.oscam.status.mca);
	}

	//update reader-headline
	if(data.oscam.status.rco != '0') {
		var rcon = (data.oscam.status.rca - data.oscam.status.rco);
		if($("#rco").length) {
			$("#rcc").text(data.oscam.status.rcc);
			$("#rca").text(data.oscam.status.rca);
			$("#rco").text(rcon);
		} else {
			$("#rhead").html('Readers <span id="rcc">' + data.oscam.status.rcc + '</span>/' + data.oscam.status.rca + ' (<span id="rco">' + rcon + '</span> of ' + data.oscam.status.rca + ' CARDOK)');
		}
	} else if($("#rco").length) {
		$("#rhead").html('Readers <span id="rcc">' + data.oscam.status.rcc + '</span>/' + data.oscam.status.rca);
	} else {
		$("#rcc").text(data.oscam.status.rcc);
		$("#rca").text(data.oscam.status.rca);
	}

	//update proxy-headline
	if(data.oscam.status.pco != '0') {
		var pcon = (data.oscam.status.pca - data.oscam.status.pco);
		if($("#pco").length) {
			$("#pcc").text(data.oscam.status.pcc);
			$("#pca").text(data.oscam.status.pca);
			$("#pco").text(pcon);
		} else {
			$("#phead").html('Proxies <span id="pcc">' + data.oscam.status.pcc + '</span>/' + data.oscam.status.pca + ' (<span id="pco">' + pcon + '</span> of ' + data.oscam.status.pca + ' online)');
		}
	} else if($("#pco").length) {
		$("#phead").html('Proxies <span id="pcc">' + data.oscam.status.pcc + '</span>/' + data.oscam.status.pca);
	} else {
		$("#pcc").text(data.oscam.status.pcc);
		$("#pca").text(data.oscam.status.pca);
	}

	// update footer
	updateFooter(data);

	// sysinfos
	if ($("#mem_cur_total").length) updateSysinfo(data);

	// user + ecm totals
	if ($("#total_users").length) updateTotals(data);

	// cachex
	if ($("#total_cachexpush").length) updateCacheextotals(data);

}


/*
 * Cacheexpage Functions: Update Page
 */
function updateCacheexpage(data) {

	updateCacheextotals(data);
	
}

/*
 *	General fork into page refresh functions
 */
function updatePage(data) {

	// show heartbeat
	if ($("input.pintervall").length && $("input.pintervall").css("background-color") != $("#picolor").css("background-color")) {
		var orgstyle = $("input.pintervall").css("background-color");
		$("input.pintervall").css("background-color", $("#picolor").css("background-color"));
	}

	switch (page) {
	case 'status':
		updateStatuspage(data);
		break;
	case 'user':
		updateUserpage(data);
		break;
	case 'reader':
		updateReaderpage(data);
		break;
	case 'livelog':
		updateLogpage(data);
		break;
	case 'cacheex':
		updateCacheexpage(data);
		break;
	default:
		break;
	}

	// hide heartbeat
	if ($("input.pintervall").length && $("input.pintervall").css("background-color") == $("#picolor").css("background-color")) {
		setTimeout(function () {
			$("input.pintervall").css("background-color", orgstyle);
		}, 300);
	}

	if (typeof afterpoll == 'function') {
		afterpoll();
	}
}

function setPollerr(error) {
	if (error && !$("#pollerr").length) {
		$("body").append('<div id="pollerr" style="top:5px;left:5px;background-color:red;color:yellow;">POLLERR</div>');
	} else {
		if ($("#pollerr").length) {
			$("#pollerr").fadeOut('slow').remove();
		}
	}
}

/*
 * General Polling
 */
var lockpoll = 0;
var timer_ID;

function waitForMsg() {

	if (typeof pollrefresh == 'undefined') return;

	if (lockpoll > 0) {
		/* assumed that previous poll is not finnished yet we not
		call new data and just set the next intervall */
		clearTimeout(timer_ID);
		timer_ID = setTimeout("waitForMsg()", pollintervall);
		return;
	}

	$.ajax({
		type: "GET",
		url: jsonurl + parameters,
		dataType: "JSON",
		async: true,
		cache: false,
		success: function (data) {
			setPollerr(0);
			if ((!pollrefresh || polling ) && page != 'livelog') return;
			updatePage(data);
			if (!stoppoll) {
				clearTimeout(timer_ID);
				timer_ID = setTimeout("waitForMsg()", pollintervall);
			}
		},
		error: function (XMLHttpRequest, textStatus, errorThrown) {
			clearTimeout(timer_ID);
			timer_ID = setTimeout("waitForMsg()", 15000);
			setPollerr(1);
		}
	});
}

/*
 * General: Set Poll Interval
 */
function setPollrefresh() {
	// Set pollintervall, if pollrefresh set to 0 disable polling
	if (pollrefresh) {
		pollintervall = parseInt(pollrefresh) * 1000;
		if (pollintervall > 99000) pollintervall == 99000;
		if (!nostorage) {
			if (sessionStorage.pollintervall) pollintervall = sessionStorage.pollintervall;
			else sessionStorage.pollintervall = pollintervall;
			if (sessionStorage.polling == 1) polling = 1;
		}
	}
}

// static for paranoid Browsers
var nostorage = 0;

/*
 * General: Start Polling
 */
$(document).ready(function () {

	if (!localStorage) {
		nostorage = 1;
		// remove whole filter block - makes no sense
		// without saving
		$('#regex').remove();
	}

	// set default to nothing excluded
	poll_excluded = '';

	// help wiki links
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

	// Title
	var pagename = (typeof page != 'undefined' ? page : $(location).attr('pathname').replace(/.*\/|\.[^.]*$/g, ''));
	$(document).attr('title', $(document).attr('title') + ' (' + pagename[0].toUpperCase() + pagename.slice(1) + ')');

	if (typeof page != 'undefined') {

		switch (page) {

		case 'livelog':

			var saved_regex = localStorage.MAX_SEARCH_PATTERN;
			MAX_SEARCH_PATTERN = parseInt(saved_regex ? saved_regex : MAX_SEARCH_PATTERN);
			$('<LI style="display:none;"><span class="colorPicker_def_color"></span><span class="colorPicker_def_fcolor"></span></LI>').insertBefore(".regexdata_save");
			
			var beep_disabled = ' disabled="disabled" title="Not supported by your browser"';
			var contextClass = (window.AudioContext || window.webkitAudioContext || window.mozAudioContext || window.oAudioContext || window.msAudioContext);
			if (contextClass) { beep_disabled = ''; }

			for (var i = 1; i < MAX_SEARCH_PATTERN + 1; i++) {

				var prefix = "0";
				if ( i > 9 ) { prefix = ""; }

				$('<LI class="regex" id="regexrow' + i + '">Search' + prefix + i + ': <input type="text" name="regex' + i + '" class="regexinput" ID="regex' + i + '" value=""> Found only: <input type="checkbox" id="whitelisted' + i + '"><label></label> Hide: <input type="checkbox" id="hidden' + i + '"><label></label> Back Color: <input size="7" maxlength="7" type="text" name="color' + i + '" class="colorinput" ID="color' + i + '" value=""> Color: <input size="7" maxlength="7" type="text" name="fcolor' + i + '" class="colorinput" ID="fcolor' + i + '" value=""> Beep: <input type="checkbox" id="beep' + i + '"' + beep_disabled +'><label></label></LI>').insertBefore(".regexdata_save");
			}

			if (!nostorage) {
				for (var i = 1; i < MAX_SEARCH_PATTERN + 1; i++) {
					var pattern = localStorage['regex' + i];
					var color = localStorage['color' + i];
					var fcolor = localStorage['fcolor' + i];
					$('#regex' + i).val(pattern ? pattern : '');
					$('#color' + i).val(color ? color : $('.colorPicker_def_color').css('color'));
					$('#fcolor' + i).val(fcolor ? fcolor : $('.colorPicker_def_fcolor').css('color'));
					$('#color' + i).colorPicker();
					$('#fcolor' + i).colorPicker();
					$('#whitelisted' + i).prop('checked', localStorage['whitelisted' + i] == '1' ? true : false);
					$('#hidden' + i).prop('checked', localStorage['hidden' + i] == '1' ? true : false);
					$('#beep' + i).prop('checked', localStorage['beep' + i] == '1' ? true : false);
				}
			}
			waitForMsg();

			break;

		case 'status':

			$(".status tbody:empty").hide();
			$("#chart").hide();
			if (!nostorage) {
				if (localStorage.loi == 'Login*') {
					$("#onlineidle")
						.text('Login*')
						.css('cursor','pointer')
						.attr('title', 'Online & Idle info (click to switch)');
				} else {
					$("#onlineidle")
						.text('Online & Idle*')
						.css('cursor','pointer')
						.attr('title', 'Login info (click to switch)');
				}
			}
			break;

		default:
			//do nothing

			break;
		}

		// if pollrefresh set to 0 hide pollselector
		setPollrefresh();
		if (pollrefresh) {
			if (polling) {
				$(":text[name='pintervall']").val('--');
				$('#polling').attr('style','background-image:url(image?i=ICENA); background-color:#0A0');
			} else {
				$(":text[name='pintervall']").val(pollintervall / 1000);
				$('#polling').attr('style','background-image:url(image?i=ICDIS)');
				waitForMsg();
			}
			$("#poll").show();
		}
	}
});

/**
 * Really Simple Color Picker in jQuery
 *
 * Licensed under the MIT (MIT-LICENSE.txt) licenses.
 *
 * Copyright (c) 2008-2012
 * Lakshan Perera (www.laktek.com) & Daniel Lacy (daniellacy.com)
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to
 * deal in the Software without restriction, including without limitation the
 * rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
 * sell copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 * IN THE SOFTWARE.
 */
(function (e) {
	var t, n, r = 0,
		i = {
			control: e('<div class="colorPicker-picker">&nbsp;</div>'),
			palette: e('<div id="colorPicker_palette" class="colorPicker-palette" />'),
			swatch: e('<div class="colorPicker-swatch">&nbsp;</div>'),
			hexLabel: e('<label for="colorPicker_hex">Hex</label>'),
			hexField: e('<input type="text" id="colorPicker_hex" />')
		},
		s = "transparent",
		o;
	e.fn.colorPicker = function (t) {
		return this.each(function () {
			var n = e(this),
				o = e.extend({}, e.fn.colorPicker.defaults, t),
				u = e.fn.colorPicker.toHex(n.val().length > 0 ? n.val() : o.pickerDefault),
				a = i.control.clone(),
				f = i.palette.clone().attr("id", "colorPicker_palette-" + r),
				l = i.hexLabel.clone(),
				c = i.hexField.clone(),
				h = f[0].id,
				p, d;
			e.each(o.colors, function (t) {
				p = i.swatch.clone();
				if (o.colors[t] === s) {
					p.addClass(s).text("X");
					e.fn.colorPicker.bindPalette(c, p, s)
				} else {
					p.css("background-color", "#" + this);
					e.fn.colorPicker.bindPalette(c, p)
				}
				p.appendTo(f)
			});
			l.attr("for", "colorPicker_hex-" + r);
			c.attr({
				id: "colorPicker_hex-" + r,
				value: u
			});
			c.bind("keydown", function (t) {
				if (t.keyCode === 13) {
					var r = e.fn.colorPicker.toHex(e(this).val());
					e.fn.colorPicker.changeColor(r ? r : n.val())
				}
				if (t.keyCode === 27) {
					e.fn.colorPicker.hidePalette()
				}
			});
			c.bind("keyup", function (t) {
				var r = e.fn.colorPicker.toHex(e(t.target).val());
				e.fn.colorPicker.previewColor(r ? r : n.val())
			});
			c.bind("blur", function (t) {
				var r = e.fn.colorPicker.toHex(e(this).val());
				e.fn.colorPicker.changeColor(r ? r : n.val())
			});
			e('<div class="colorPicker_hexWrap" />').append(l).appendTo(f);
			f.find(".colorPicker_hexWrap").append(c);
			if (o.showHexField === false) {
				c.hide();
				l.hide()
			}
			e("body").append(f);
			f.hide();
			a.css("background-color", u);
			a.bind("click", function () {
				if (n.is(":not(:disabled)")) {
					e.fn.colorPicker.togglePalette(e("#" + h), e(this))
				}
			});
			if (t && t.onColorChange) {
				a.data("onColorChange", t.onColorChange)
			} else {
				a.data("onColorChange", function () {})
			} if (d = n.data("text")) a.html(d);
			n.after(a);
			n.bind("change", function () {
				n.next(".colorPicker-picker").css("background-color", e.fn.colorPicker.toHex(e(this).val()))
			});
			n.val(u);
			if (n[0].tagName.toLowerCase() === "input") {
				try {
					n.attr("type", "hidden")
				} catch (v) {
					n.css("visibility", "hidden").css("position", "absolute")
				}
			} else {
				n.hide()
			}
			r++
		})
	};
	e.extend(true, e.fn.colorPicker, {
		toHex: function (e) {
			if (e.match(/[0-9A-F]{6}|[0-9A-F]{3}$/i)) {
				return e.charAt(0) === "#" ? e : "#" + e
			} else if (e.match(/^rgb\(\s*(\d{1,3})\s*,\s*(\d{1,3})\s*,\s*(\d{1,3})\s*\)$/)) {
				var t = [parseInt(RegExp.$1, 10), parseInt(RegExp.$2, 10), parseInt(RegExp.$3, 10)],
					n = function (e) {
						if (e.length < 2) {
							for (var t = 0, n = 2 - e.length; t < n; t++) {
								e = "0" + e
							}
						}
						return e
					};
				if (t.length === 3) {
					var r = n(t[0].toString(16)),
						i = n(t[1].toString(16)),
						s = n(t[2].toString(16));
					return "#" + r + i + s
				}
			} else {
				return false
			}
		},
		checkMouse: function (r, i) {
			var s = n,
				o = e(r.target).parents("#" + s.attr("id")).length;
			if (r.target === e(s)[0] || r.target === t[0] || o > 0) {
				return
			}
			e.fn.colorPicker.hidePalette()
		},
		hidePalette: function () {
			e(document).unbind("mousedown", e.fn.colorPicker.checkMouse);
			e(".colorPicker-palette").hide()
		},
		showPalette: function (n) {
			var r = t.prev("input").val();
			n.css({
				top: t.offset().top + t.outerHeight(),
				left: t.offset().left
			});
			e("#color_value").val(r);
			n.show();
			e(document).bind("mousedown", e.fn.colorPicker.checkMouse)
		},
		togglePalette: function (r, i) {
			if (i) {
				t = i
			}
			n = r;
			if (n.is(":visible")) {
				e.fn.colorPicker.hidePalette()
			} else {
				e.fn.colorPicker.showPalette(r)
			}
		},
		changeColor: function (n) {
			t.css("background-color", n);
			t.prev("input").val(n).change();
			e.fn.colorPicker.hidePalette();
			t.data("onColorChange").call(t, e(t).prev("input").attr("id"), n)
		},
		previewColor: function (e) {
			t.css("background-color", e)
		},
		bindPalette: function (n, r, i) {
			i = i ? i : e.fn.colorPicker.toHex(r.css("background-color"));
			r.bind({
				click: function (t) {
					o = i;
					e.fn.colorPicker.changeColor(i)
				},
				mouseover: function (t) {
					o = n.val();
					e(this).css("border-color", "#598FEF");
					n.val(i);
					e.fn.colorPicker.previewColor(i)
				},
				mouseout: function (r) {
					e(this).css("border-color", "#000");
					n.val(t.css("background-color"));
					n.val(o);
					e.fn.colorPicker.previewColor(o)
				}
			})
		}
	});
	e.fn.colorPicker.defaults = {
		pickerDefault: "FFFFFF",
		colors: ["000000", "993300", "333300", "000080", "333399", "333333", "800000", "FF6600", "808000", "008000", "008080", "0000FF", "666699", "808080", "FF0000", "FF9900", "99CC00", "339966", "33CCCC", "3366FF", "800080", "999999", "FF00FF", "FFCC00", "FFFF00", "00FF00", "00FFFF", "00CCFF", "993366", "C0C0C0", "FF99CC", "FFCC99", "FFFF99", "CCFFFF", "99CCFF", "FFFFFF"],
		addColors: [],
		showHexField: true
	}
})(jQuery);
/**
 * Stupid jQuery Table Sort
 * Copyright (c) 2012 Joseph McCullough
 * https://github.com/joequery/Stupid-Table-Plugin#readme
 */
(function (e) {
	e.fn.stupidtable = function (t) {
		return this.each(function () {
			var n = e(this);
			t = t || {};
			t = e.extend({}, e.fn.stupidtable.default_sort_fns, t);
			n.on("click.stupidtable", "th", function () {
				var r = e(this);
				var i = 0;
				var s = e.fn.stupidtable.dir;
				n.find("#headline > th").slice(0, r.index()).each(function () {
					var t = e(this).attr("colspan") || 1;
					i += parseInt(t, 10)
				});
				var o = r.data("sort-default") || s.ASC;
				if (r.data("sort-dir")) o = r.data("sort-dir") === s.ASC ? s.DESC : s.ASC;
				var u = r.data("sort") || null;
				if (u === null) {
					return
				}
				n.trigger("beforetablesort", {
					column: i,
					direction: o
				});
				n.css("display");
				setTimeout(function () {
					var a = [];
					var f = t[u];
					var l = n.children("tbody").children("tr");
					l.each(function (t, n) {
						var r = e(n).children().eq(i);
						var s = r.data("sort-value");
						var o = typeof s !== "undefined" ? s : r.text();
						a.push([o, n])
					});
					a.sort(function (e, t, s) {
						return f(e[0], t[0], o)
					});
					if (o != s.ASC) a.reverse();
					l = e.map(a, function (e) {
						return e[1]
					});
					n.children("tbody").append(l);
					n.find("th.sorting-desc, th.sorting-asc").data("sort-dir", null).removeClass("sorting-desc sorting-asc").addClass("sortable");
					r.data("sort-dir", o).removeClass("sortable").addClass("sorting-" + o);
					$('tr').find('td.td-sorting').removeClass('td-sorting');
					$('tr').find('td:eq(' + i + ')').addClass('td-sorting');
					n.trigger("aftertablesort", {
						column: i,
						direction: o
					});
					n.css("display")
				}, 10)
			})
		})
	};
	e.fn.stupidtable.dir = {
		ASC: "asc",
		DESC: "desc"
	};
	var convert_locale = function (c) {
		if (c == "") return 0;
		if(locale_decpoint == ",") {
			c = c.toString().replace( /\./g,"" ).replace( /,/,"." );
		}else if(locale_decpoint == "."){
			c = c.toString().replace( /,/g,"" );
		}
		return(c);
	}
	var ip2int = function dot2num(dot, s) {
		if (dot == ""  && s == "asc")  return 4300000000;
		if (dot == ""  && s == "desc") return 1;
		var d = dot.split('.');
			return ((((((+d[0])*256)+(+d[1]))*256)+(+d[2]))*256)+(+d[3]);
	}
	e.fn.stupidtable.default_sort_fns = {
		"int": function (e, t, s) {
			return parseInt(convert_locale(e), 10) - parseInt(convert_locale(t), 10)
		},
		"float": function (e, t, s) {
			return parseFloat(convert_locale(e)) - parseFloat(convert_locale(t))
		},
		"ip": function (a, b, s) {
			aIP = ip2int(a, s);
			bIP = ip2int(b, s);
			return aIP - bIP;
		},
		"string": function (e, t, s) {
			if (e == "" && s == "asc") return +1;
			if (t == "" && s == "asc") return -1;
			if (e < t) return -1;
			if (e > t) return +1;
			return 0
		},
		"string-ins": function (e, t, s) {
			e = e.toString().toLowerCase();
			t = t.toString().toLowerCase();
			if (e == "" && s == "asc") return +1;
			if (t == "" && s == "asc") return -1;
			if (e < t) return -1;
			if (e > t) return +1;
			return 0
		}
	}
})(jQuery)

// Create Base64 Object
var Base64={_keyStr:"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",encode:function(e){var t="";var n,r,i,s,o,u,a;var f=0;e=Base64._utf8_encode(e);while(f<e.length){n=e.charCodeAt(f++);r=e.charCodeAt(f++);i=e.charCodeAt(f++);s=n>>2;o=(n&3)<<4|r>>4;u=(r&15)<<2|i>>6;a=i&63;if(isNaN(r)){u=a=64}else if(isNaN(i)){a=64}t=t+this._keyStr.charAt(s)+this._keyStr.charAt(o)+this._keyStr.charAt(u)+this._keyStr.charAt(a)}return t},decode:function(e){var t="";var n,r,i;var s,o,u,a;var f=0;e=e.replace(/[^A-Za-z0-9\+\/\=]/g,"");while(f<e.length){s=this._keyStr.indexOf(e.charAt(f++));o=this._keyStr.indexOf(e.charAt(f++));u=this._keyStr.indexOf(e.charAt(f++));a=this._keyStr.indexOf(e.charAt(f++));n=s<<2|o>>4;r=(o&15)<<4|u>>2;i=(u&3)<<6|a;t=t+String.fromCharCode(n);if(u!=64){t=t+String.fromCharCode(r)}if(a!=64){t=t+String.fromCharCode(i)}}t=Base64._utf8_decode(t);return t},_utf8_encode:function(e){e=e.replace(/\r\n/g,"\n");var t="";for(var n=0;n<e.length;n++){var r=e.charCodeAt(n);if(r<128){t+=String.fromCharCode(r)}else if(r>127&&r<2048){t+=String.fromCharCode(r>>6|192);t+=String.fromCharCode(r&63|128)}else{t+=String.fromCharCode(r>>12|224);t+=String.fromCharCode(r>>6&63|128);t+=String.fromCharCode(r&63|128)}}return t},_utf8_decode:function(e){var t="";var n=0;var r=c1=c2=0;while(n<e.length){r=e.charCodeAt(n);if(r<128){t+=String.fromCharCode(r);n++}else if(r>191&&r<224){c2=e.charCodeAt(n+1);t+=String.fromCharCode((r&31)<<6|c2&63);n+=2}else{c2=e.charCodeAt(n+1);c3=e.charCodeAt(n+2);t+=String.fromCharCode((r&15)<<12|(c2&63)<<6|c3&63);n+=3}}return t}}

/* ==================================================== ENVI SCRIPT ==================================================== */

/* -------------------------- BASIC SETTINGS for HTML  -------------------------- */

$(function(){
	// Hidden Subnav only for selected pages
	if (document.URL.indexOf('logpoll.html') > -1 ||
		document.URL.indexOf('emm.html') > -1 ||
		document.URL.indexOf('emm_running.html') > -1 ||
		document.URL.indexOf('services.html') > -1 ||
		document.URL.indexOf('script.html') > -1 ) {
			$('#subnav').css('visibility', 'hidden');
	}

	// AddClass for SUBNAV - remover background of Subnav
	if (document.URL.indexOf('entitlements.html') > -1 ||
		document.URL.indexOf('readerconfig.html') > -1 ||
		document.URL.indexOf('user_edit.html') > -1) {
			$('#subnav').attr("class", "blanksubnav");
	}

	// Add checkbox and label for responsive design
	$('#main').prepend("<label for=\"toggle\" class=\"toggle\" onclick=\"\"  /></label>");
	$('#main').prepend("<input type=\"checkbox\" id=\"toggle\" />");
	$('#subnav').prepend("<label for=\"subtoggle\" class=\"subtoggle\" onclick=\"\"  /></label>");
	$('#subnav').prepend("<input type=\"checkbox\" id=\"subtoggle\" />");

	// Create <style> in <head>
	$('head').append("<style type='text/css' id='enviFontFamily'></style>");
	$('head').append("<style type='text/css' id='enviFontSize'></style>");
	$('head').append("<style type='text/css' id='enviBodyFontFamily'></style>");
});

/* -------------------------- STYLESWITCHER -------------------------- */
/* =========== SHOW/HIDE STYLESWITCHER ======= */
$(function(){
	// Check Cookie after loading page
		if (typeof $.cookie('StyleSwitcher') != 'undefined'){
			// Cookie 'StyleSwitcher' is defined
			if ($.cookie('StyleSwitcher') == 'isActive') {
				$('.demo_changer').addClass('active');    
			} else {
				$('.demo_changer').removeClass('active');
			}
		} else {
			// Cookie 'StyleSwitcher' is undefined
		}

	function styleSwitcherCookie() {
		styleSwitcherVal = $('.demo_changer').hasClass('active') ? 'isActive' : 'notActive';
		$.cookie('StyleSwitcher', styleSwitcherVal, {expires: 1,path: '/'});
	}
	
	$('#demo_icon').click(function () {
		$('.demo_changer').toggleClass('active');
		styleSwitcherCookie();
	});
});

/* =========== CHANGE TEMPLATE (original/Envi) ======= */
$(function(){
	function hideStyleswitcher() {
		// Hide StyleSwitcher
		$('[id^="switchersettings"]').css('display', 'none');
		// Set width for <DIV CLASS="form_holder">
		$('.form_holder').css({'width': '225px', 'height': '165px'});
	}

	function showStyleswitcher() {
		// Show StyleSwitcher
		$('[id^="switchersettings"]').css('display', 'initial');
		// Set width for <DIV CLASS="form_holder">
		$('.form_holder').css({'width': '630px', 'height': '376px'});
	}

	// Check Cookie after loading page
		if (typeof $.cookie('TemplateSwitch') != 'undefined') {
			// Cookie 'TemplateSwitch' is defined
			if ($.cookie('TemplateSwitch') == 'envi') {
				$('body').addClass('envi');
				$('.addClass a[value$="envi"]').addClass('active');
				// Hide Scroll to Top
				$('.top_link').hide();
			} else {
				$('body').removeClass().addClass('original');
				$('.addClass a[value="original"]').addClass('active');
				hideStyleswitcher()
				// Hide Scroll to Top
				$('.scroll-top').hide();
				$('#console').hide();
			}
		} else {
			// Cookie 'TemplateSwitch' is undefined (Show Original WebIf)
			$.cookie('TemplateSwitch', 'original', {expires: 365,path: '/'});
			$('body').addClass('original');
			$('.addClass a[value="original"]').addClass('active');
			hideStyleswitcher()
		}


	var TemplateSwitch = $.cookie('TemplateSwitch');
	$('.addClass a').click(function () {
		templateSwitchVal = $(this).attr('value')
		$('body').removeClass().addClass(TemplateSwitch)
		$.cookie('TemplateSwitch', templateSwitchVal, { expires: 365, path: '/'});
		$('ul.addClass a.active').removeClass('active');
		$(this).addClass('active');

		// Hide StyleSwitcher settings for original WebIF
		if (templateSwitchVal == 'envi') {
			showStyleswitcher();
			// For Envi add style
				if (typeof $.cookie('BodyFontFamily') == 'undefined'){
				//no cookie
					$('#enviBodyFontFamily').html('')
				} else {
					//have cookie
					$('#enviBodyFontFamily').html('body { font-family: '+ $.cookie("BodyFontFamily") +'}')
					$('#bodyfontfamily').val($.cookie('BodyFontFamily'));
				}
		} else {
			hideStyleswitcher()
			// For original WebIf remove style 
			$('#enviBodyFontFamily').html('')
		}

	// (Re-)enable or Disable tooltips 
	// NOTE: I dont know how disabled Bootstrap tooltip if I change template (original/Envi), solution is throught reload page. Reload page is important for new loading whole JSCRIPT.tpl (e.g. better function searchterm is avalaible)
		location.reload();
		return false;
	});
});

/* =========== CHANGE TEMPLATE COLOR STYLE ======= */
$(function(){
	// Check Cookie after loading page
		if (typeof $.cookie('colorstyleListID') != 'undefined'){
			$('#' + $.cookie('colorstyleListID')).addClass('active');
		} else {
			$('#col_0').addClass('active');
		}

	/* Change Template color style */
		var colorstyle = $.cookie('colorstyle');
		$('.colchange li').on('click', function (e) {
			colorstyle = $(this).attr('data-style')
			if ($('body').hasClass('envi')) {
				$('body').removeClass(function (index, css) {
					return (css.match (/\bcolorstyle_\S+/g) || []).join(' ');
				}).addClass(colorstyle);
				$.cookie('colorstyle', colorstyle, {
					expires: 365,
					path: '/'
				});
			};
			return false;
		}).filter(function () {
			return $(this).attr('data-style') === colorstyle
		}).click()

	// SETTINGS for LI for Template color style
		$('.colchange li').click(function () {
			$(this).siblings('li').removeClass('active');
			$(this).addClass('active');
			$.cookie('colorstyleListID', $(this).attr('id'), {
				expires: 365,
				path: '/'
			});
		});
});

/* =========== CHANGE BACKGROUND COLOR ======= */
$(function(){
	// Check Cookie after loading page
		if (typeof $.cookie('backcolorListID') != 'undefined'){
			$('#' + $.cookie('backcolorListID')).addClass('active');
		} else {
			$('#back_0').addClass('active');
		}

	/* Change background color */
		var backcolor = $.cookie('backcolor');
		$('.backchange li').on('click', function (e) {
			backcolor = $(this).attr('data-style')
			if ($('body').hasClass('envi')) {
				$('body').removeClass(function (index, css) {
					return (css.match (/\bbackground_\S+/g) || []).join(' ');
				}).addClass(backcolor);
				$.cookie('backcolor', backcolor, {
					expires: 365,
					path: '/'
				});
			};
			if (typeof $.cookie('ColorPicker1_revert') != 'undefined') {
				$.removeCookie('ColorPicker1');
				$('#colorpicker1').val('#' + $.cookie('ColorPicker1_revert'));
				$('#enviColorPicker1').remove();
			};
			return false;
		}).filter(function () {
			return $(this).attr('data-style') === backcolor
		}).click()

	// SETTINGS for LI for Background color
		$('.backchange li').click(function () {
			$(this).siblings('li').removeClass('active');
			$(this).addClass('active');
			$.cookie('backcolorListID', $(this).attr('id'), {
				expires: 365,
				path: '/'
			});
			// Remove class 'active' from 'Custom background color in Color Picker'
			$('#colorpicker1').removeClass('active');
			// Remove CSS settings from Color Picker - This is particularly relevant for setting the basic background and pattern
			$('#enviBodyColor').html('')
		});
});

/* =========== CHANGE BACKGROUND PATTERN ======= */
$(function(){
	// Check Cookie after loading page
		if (typeof $.cookie('patcolorListID') != 'undefined'){
			$('#' + $.cookie("patcolorListID")).addClass('active');
		} else {
			$('#pat_0').addClass('active');
		}

	// Change background pattern
		var patcolor = $.cookie('patcolor');
		$('.patchange li').on('click', function (e) {
			patcolor = $(this).attr('data-style')
			if ($('body').hasClass('envi')) {
				$('body').removeClass(function (index, css) {
					return (css.match (/\bpatchange_\S+/g) || []).join(' ');
				}).addClass(patcolor);
				$.cookie('patcolor', patcolor, {
					expires: 365,
					path: '/'
				});
			};
			return false;
		}).filter(function () {
			return $(this).attr('data-style') === patcolor
		}).click()

		// It si terrible solution, but works
		$('#pat_9').click(function () {
			if ($('body').hasClass('envi')) {
				$('body').removeClass('fontcolorchange_0 fontcolorchange_1');
				$('.fontcolorchange li').removeClass('active');
				$('#fontcolorchange_1').addClass('active');
				$.cookie('BodyFontColorCookieID', 'fontcolorchange_1', {
					expires: 365,
					path: '/'
				});
				$.cookie('fontcolor', 'fontcolorchange_1', {
					expires: 365,
					path: '/'
				});
			};
		});
		$('#pat_0, #pat_1, #pat_2, #pat_3, #pat_4, #pat_5, #pat_6, #pat_7, #pat_8').click(function () {
			if ($('body').hasClass('envi')) {
				$('body').removeClass('fontcolorchange_0 fontcolorchange_1');
				$('.fontcolorchange li').removeClass('active');
				$('#fontcolorchange_0').addClass('active');
				$.cookie('BodyFontColorCookieID', 'fontcolorchange_0', {
					expires: 365,
					path: '/'
				});
				$.cookie('fontcolor', 'fontcolorchange_0', {
					expires: 365,
					path: '/'
				});
			};
		});

	// SETTINGS for LI for Background pattern
		$('.patchange li').click(function () {
			$(this).siblings('li').removeClass('active');
			$(this).addClass('active');
			$.cookie('patcolorListID', $(this).attr('id'), {
				expires: 365,
				path: '/'
			});
			// Remove CSS settings from Color Picker - This is particularly relevant for setting the basic background and pattern
			$('#enviBodyColor').html('')
		});
});

/* =========== CHANGE BODY FONT COLOR ======= */
$(function(){
	// Check Cookie after loading page
		if (typeof $.cookie('BodyFontColorCookieID') != 'undefined'){
			$('#' + $.cookie('BodyFontColorCookieID')).addClass('active');
		} else {
			$('#fontcolorchange_0').addClass('active');
		}

	// Change body font color
		var fontcolor = $.cookie('fontcolor');
		$('.fontcolorchange li').on('click', function (e) {
			fontcolor = $(this).attr('data-style')
			if ($('body').hasClass('envi')) {
				$('body').removeClass('fontcolorchange_0 fontcolorchange_1').addClass(fontcolor)
				$.cookie('fontcolor', fontcolor, {
					expires: 365,
					path: '/'
				});
			};
			return false;
		}).filter(function () {
			return $(this).attr('data-style') === fontcolor
		}).click()

	// SETTINGS for LI for Body font color
		$('.fontcolorchange li').click(function () {
			$(this).siblings('li').removeClass('active');
			$(this).addClass('active');
			$.cookie('BodyFontColorCookieID', $(this).attr('id'), {
				expires: 365,
				path: '/'
			});
		});
});

/* =========== CHANGE BODY LINK COLOR ======= */
$(function(){
	// Check Cookie after loading page
		if (typeof $.cookie('BodyLinkColorCookieID') != 'undefined'){
			$('#' + $.cookie("BodyLinkColorCookieID")).addClass('active');
		} else {
			$('#linkcolorchange_0').addClass('active');
		}

	// Change body link color
		var linkcolor = $.cookie('linkcolor');
		$('.linkcolorchange li').on('click', function (e) {
			linkcolor = $(this).attr('data-style')
			if ($('body').hasClass('envi')) {		
				$('body').removeClass(function (index, css) {
					return (css.match (/\blinkcolorchange_\S+/g) || []).join(' ');
				}).addClass(linkcolor);
				$.cookie('linkcolor', linkcolor, {
					expires: 365,
					path: '/'
				});
			};
			return false;
		}).filter(function () {
			return $(this).attr('data-style') === linkcolor
		}).click()

	// SETTINGS for LI for Body link color
		$('.linkcolorchange li').click(function () {
			$(this).siblings('li').removeClass('active');
			$(this).addClass('active');
			$.cookie('BodyLinkColorCookieID', $(this).attr('id'), {
				expires: 365,
				path: '/'
			});
		});
});

/* -------------------------- GET CUSTOM COLOR FROM COLOR PICKER -------------------------- */
$(function(){
	/* FUNCTION */
		// CREATE STYLESHEET IN 'HEAD'
		function CreateStyleSheet_enviColorPicker(x) {
			$('head').append("<style type='text/css' id='" + x + "'></style>");
		}

		function enviColorPicker(x) {
				// Remove 'class="active"' from List of background color
				$('.backchange li').removeClass('active');
				//Remove all class for setting background color and add css style to 'stylesheet' in 'head'
				$('body').removeClass(function (index, css) {
					return (css.match (/\bbackground_\S+/g) || []).join(' ');
				});
				// Remove cookie for background color list
				$.removeCookie('backcolorListID');
				$.removeCookie('backcolor');
				// Add class to 'input' from Color Picker
				$(x).addClass('active');
		}

		function enviColorPicker_ext(x) {
				// Add class to 'input' from Color Picker
				$(x).addClass('active');
		}

/* =========== BODY BACKGROUND COLOR ======= */
	/* START - COOKIE BACKGROUND COLOR */
		// VARIABLE --------------------------------------
		/* getc_ - get cookie */
			var getc_ColorPicker1 = $.cookie('ColorPicker1');
		// FUNCTION --------------------------------------
			if (getc_ColorPicker1 !== null && getc_ColorPicker1 !== undefined){
				// Cookie 'ColorPicker1' is defined
					// Check If Stylesheet exists
					if ($("#enviColorPicker1").length > 0) {
						// Remove 'class="active"' from List of background color
						$(".backchange li").removeClass('active');
						// Add class to 'input' from Color Picker
						$("#colorpicker1").addClass('active'); 
						// Add css style to 'head'
						$("#enviColorPicker1").html(
							'body.envi { background-color: #'+ getc_ColorPicker1 +';background-image:none;}'
						);
						// Add value to 'colorpicker1'
						$('#colorpicker1').val('#' + getc_ColorPicker1);
					} else {
						CreateStyleSheet_enviColorPicker('enviColorPicker1');
						// Remove 'class="active"' from List of background color
						$(".backchange li").removeClass('active');
						// Add class to 'input' from Color Picker
						$("#colorpicker1").addClass('active');
						// Add css style to 'head'
						$("#enviColorPicker1").html(
							'body.envi { background-color: #'+ getc_ColorPicker1 +';background-image:none;}'
						);
						// Add value to 'colorpicker1'
						$('#colorpicker1').val('#' + getc_ColorPicker1); 
					}
			} else {
				// Cookie 'ColorPicker1' is undefined
			}
	/* END - COOKIE BACKGROUND COLOR  */

	/* START - CHANGE BACKGROUND COLOR  */
		$("#colorpicker1").bind("click", function() {
			// VARIABLE --------------------------------------
				var val_ColorPicker = $(this).val();
			// FUNCTION --------------------------------------
				enviColorPicker("#colorpicker1");
				// Check If Stylesheet exists
					if ($("#enviColorPicker1").length > 0) {
						$("#enviColorPicker1").html(
							'body.envi { background-color:'+ val_ColorPicker +';background-image:none;}'
						);
					} else {
						CreateStyleSheet_enviColorPicker('enviColorPicker1');
						// Add css style to 'head'
						$("#enviColorPicker1").html(
							'body.envi { background-color:'+ val_ColorPicker +';background-image:none;}'
						);
					}
		});

		$("#colorpicker1").bind("change", function() {
			// VARIABLE --------------------------------------
				var val_ColorPicker = $(this).val();
				var split_ColorPicker = val_ColorPicker.replace('#', '');
			// FUNCTION --------------------------------------
				// Check If Stylesheet exists
					if ($("#enviColorPicker1").length > 0) {
						$("#enviColorPicker1").html(
							'body.envi { background-color: #'+ split_ColorPicker +';background-image:none;}'
						);
					} else {
						CreateStyleSheet_enviColorPicker('enviColorPicker1');
						// Add css style to 'head'
						$("#enviColorPicker1").html(
							'body.envi { background-color: #'+ split_ColorPicker +';background-image:none;}'
						);
					}
				// Set color from Color Picker to cookies
				if(split_ColorPicker.length > 0){
					$.cookie('ColorPicker1', split_ColorPicker, { expires: 365, path: '/' });
					$.cookie('ColorPicker1_revert', split_ColorPicker, { expires: 365, path: '/' });
				}
		});
	/* END - CHANGE BACKGROUND COLOR  */

/* =========== MAIN MENU BACKGROUND COLOR ======= */
	
	/* START -  MAIN MENU CHANGE BACKGROUND COLOR  */
		$("body").on('click', "#colorpicker2",function(){
			// VARIABLE --------------------------------------
				var val_ColorPicker = $(this).val();
				var newRule = ".envi #main { background:" + val_ColorPicker + "}";
			// FUNCTION --------------------------------------
				enviColorPicker_ext("#colorpicker2");
				// Check If Stylesheet exists
					if ($("#enviColorPicker2").length > 0) {
						// Add css style to 'head'
						$("#enviColorPicker2").html(newRule);
					} else {
						CreateStyleSheet_enviColorPicker('enviColorPicker2');
						// Add css style to 'head'
						$("#enviColorPicker2").html(newRule);
					}
		});

		$("#colorpicker2").bind("change", function() {
			// VARIABLE --------------------------------------
				var val_ColorPicker = $(this).val();
				var split_ColorPicker = val_ColorPicker.replace('#', '');
				var newRule = ".envi #main { background:" + val_ColorPicker + "}";
			// FUNCTION --------------------------------------
				// Check If Stylesheet exists
					if ($("#enviColorPicker2").length > 0) {
						// Add css style to 'head'
						$("#enviColorPicker2").html(newRule);
					} else {
						CreateStyleSheet_enviColorPicker('enviColorPicker2');
						// Add css style to 'head'
						$("#enviColorPicker2").html(newRule);
					}
				// Set color from Color Picker to cookies
				if(split_ColorPicker.length > 0){
					$.cookie('ColorPicker2', split_ColorPicker, { expires: 365, path: '/' });
					$.cookie('ColorPicker2_revert', split_ColorPicker, { expires: 365, path: '/' });
				}
		});
	/* END -  MAIN MENU CHANGE BACKGROUND COLOR  */

/* =========== MAIN MENU FONT COLOR ======= */
	
	/* START -  MAIN MENU CHANGE FONT COLOR  */
		$("body").on('click', "#colorpicker3",function(){
			// VARIABLE --------------------------------------
				var val_ColorPicker = $(this).val();
				var newRule = ".envi li.menu a { color:" + val_ColorPicker + "}";
			// FUNCTION --------------------------------------
				enviColorPicker_ext("#colorpicker3");
				// Check If Stylesheet exists
					if ($("#enviColorPicker3").length > 0) {
						// Add css style to 'head'
						$("#enviColorPicker3").html(newRule);
					} else {
						CreateStyleSheet_enviColorPicker('enviColorPicker3');
						// Add css style to 'head'
						$("#enviColorPicker3").html(newRule);
					}
		});

		$("#colorpicker3").bind("change", function() {
			// VARIABLE --------------------------------------
				var val_ColorPicker = $(this).val();
				var split_ColorPicker = val_ColorPicker.replace('#', '');
				var newRule = ".envi li.menu a { color:" + val_ColorPicker + "}";
			// FUNCTION --------------------------------------
				// Check If Stylesheet exists
					if ($("#enviColorPicker3").length > 0) {
						// Add css style to 'head'
						$("#enviColorPicker3").html(newRule);
					} else {
						CreateStyleSheet_enviColorPicker('enviColorPicker3');
						// Add css style to 'head'
						$("#enviColorPicker3").html(newRule);
					}
				// Set color from Color Picker to cookies
				if(split_ColorPicker.length > 0){
					$.cookie('ColorPicker3', split_ColorPicker, { expires: 365, path: '/' });
					$.cookie('ColorPicker3_revert', split_ColorPicker, { expires: 365, path: '/' });
				}
		});
	/* END -  MAIN MENU CHANGE FONT COLOR  */
	
});	

/* -------------------------- OTHER SETTINGS -------------------------- */
/* =========== CHECKBOX - ROTATE OSCAM LOGO ======= */
$(function(){
	$('input.rotatelogo').each(function() {
		if ($.cookie('TemplateSwitch') == 'envi') {
			var rotate = $.cookie($(this).attr('name'));
			if (rotate && rotate == "true") {
				$(this).prop('checked', rotate);
				$('body').addClass('rotatelogo');
			}
		} else {
			$('body').removeClass('rotatelogo');
		}
	});

	// Function if checkbox is changed
	$('input.rotatelogo').change(function() {
		$.cookie($(this).attr('name'), $(this).prop('checked'), {
			path: '/',
			expires: 365
		});
		if ( $('input[name="rotatelogo"]').is(':checked') ) {
			$('body').addClass('rotatelogo');
		} else {
			$('body').removeClass('rotatelogo');
		}
	});
});

/* =========== CHECKBOX - BORDER OF INFO TABLES ======= */
$(function(){
	$('input.infotable_border').each(function() {
		if ($.cookie('TemplateSwitch') == 'envi') {
			var infotableborder = $.cookie($(this).attr('name'));
			if (infotableborder && infotableborder == "true") {
				$(this).prop('checked', infotableborder);
				$('body').addClass('infotable_border');
			}
		} else {
			$('body').removeClass('infotable_border');
		}
	});

	// Function if checkbox is changed
	$('input.infotable_border').change(function() {
		$.cookie($(this).attr('name'), $(this).prop('checked'), {
			path: '/',
			expires: 365
		});
		if ( $('input[name="infotable_border"]').is(':checked') ) {
			$('body').addClass('infotable_border');
		} else {
			$('body').removeClass('infotable_border');
		}
	});
});

/* =========== CHECKBOX - BUTTON BORDER RADIUS ======= */
$(function(){
	$('input.border_radius').each(function() {
		if ($.cookie('TemplateSwitch') == 'envi') {
			var borderradius = $.cookie($(this).attr('name'));
			if (borderradius && borderradius == "true") {
				$(this).prop('checked', borderradius);
				$('body').addClass('border_radius');
			}
		} else {
			$('body').removeClass('border_radius');
		}
	});

	// Function if checkbox is changed
	$('input.border_radius').change(function() {
		$.cookie($(this).attr('name'), $(this).prop('checked'), {
			path: '/',
			expires: 365
		});
		if ( $('input[name="border_radius"]').is(':checked') ) {
			$('body').addClass('border_radius');
		} else {
			$('body').removeClass('border_radius');
		}
	});
});

/* =========== CHECKBOX - NOTIFIER BORDER RADIUS ======= */
$(function(){
	$('input.notifier_radius').each(function() {
		if ($.cookie('TemplateSwitch') == 'envi') {
			var notifierradius = $.cookie($(this).attr('name'));
			if (notifierradius && notifierradius == "true") {
				$(this).prop('checked', notifierradius);
				$('body').addClass('notifier_radius');
			}
		} else {
			$('body').removeClass('notifier_radius');
		}
	});

	// Function if checkbox is changed
	$('input.notifier_radius').change(function() {
		$.cookie($(this).attr('name'), $(this).prop('checked'), {
			path: '/',
			expires: 365
		});
		if ( $('input[name="notifier_radius"]').is(':checked') ) {
			$('body').addClass('notifier_radius');
		} else {
			$('body').removeClass('notifier_radius');
		}
	});
});

/* =========== CHECKBOX - PLASTIC STYLE ======= */
$(function(){
	$('input.plastic').each(function() {
		if ($.cookie('TemplateSwitch') == 'envi') {
			var plasticstyle = $.cookie($(this).attr('name'));
			if (plasticstyle && plasticstyle == "true") {
				$(this).prop('checked', plasticstyle);
				$('body').addClass('plastic');
			}
		} else {
			$('body').removeClass('plastic');
		}
	});

	// Function if checkbox is changed
	$('input.plastic').change(function() {
		$.cookie($(this).attr("name"), $(this).prop('checked'), {
			path: '/',
			expires: 365
		});
		if ( $('input[name="plastic"]').is(':checked') ) {
			$('body').addClass('plastic');
		} else {
			$('body').removeClass('plastic');
		}
	});
});

/* =========== MENU FONT FAMILY ======= */
$(function() {
	// Check Cookie after loading page
		if (typeof $.cookie('FontFamily') != 'undefined'){
			if ($.cookie('TemplateSwitch') == 'envi'){
				$("#enviFontFamily").html('.envi #mainmenu li { font-family: '+ $.cookie("FontFamily") +'}');
				$("#menufontfamily").val($.cookie("FontFamily"));
			} else {
				$("#enviFontFamily").html('')
			}
		} else {
			// Cookie 'FontFamily' is undefined
		}

	// Change font family for main menu
	$('#menufontfamily').change(function() {
		// value and cookie
		font_picked = $(this).val();
		if(font_picked.length > 0){
			$.cookie('FontFamily', font_picked, {
				expires: 365,
				path: '/'
			});
		}
		// write into <style>
		$("#enviFontFamily").html(
			'.envi #mainmenu li { font-family: '+ font_picked +';}'
		)
	});
});		

/* =========== MENU FONT SIZE ======= */
$(function() {
	// Check Cookie after loading page
		if (typeof $.cookie('FontSize') != 'undefined'){
			/// Cookie 'FontSize' is defined
			if ($.cookie('TemplateSwitch') == 'envi'){
				$("#enviFontSize").html(
					'.envi #mainmenu li { font-size: '+ $.cookie("FontSize") +'px;}'
				)
				$("#menufontsize").val($.cookie("FontSize") +'px');
			} else {
				$("#enviFontSize").html('')
			}
		} else {
			// Cookie 'FontSize' is undefined
		}

	// Change font size for main menu
	$('#menufontsize').change(function() {
		// value and cookie
		fontsize_picked = $(this).val();
		var split_fontsize_int = fontsize_picked.split("px");
		if(split_fontsize_int.length > 0){
			fontsize_picked_int = split_fontsize_int[0];
			$.cookie('FontSize', fontsize_picked_int, {
				expires: 365,
				path: '/'
			});
		}
		// write into <style>
		if(fontsize_picked_int == 11){
			$("#enviFontSize").html(
				'.envi #mainmenu li { font-size: '+ fontsize_picked_int +'px;}'
			)
		}
		if(fontsize_picked_int == 12){
			$("#enviFontSize").html(
				'.envi #mainmenu li { font-size: '+ fontsize_picked_int +'px;}'
			)
		}
		if(fontsize_picked_int == 13){
			$("#enviFontSize").html(
				'.envi #mainmenu li { font-size: '+ fontsize_picked_int +'px;}'
			)
		}
		if(fontsize_picked_int == 14){
			$("#enviFontSize").html(
				'.envi #mainmenu li { font-size: '+ fontsize_picked_int +'px;}'
			)
		}
		
	});
});

/* =========== BODY FONT FAMILY ======= */
$(function() {
	// Check Cookie after loading page
		if (typeof $.cookie('BodyFontFamily') != 'undefined'){
			/// Cookie 'BodyFontFamily' is defined
			if ($.cookie('TemplateSwitch') == 'envi'){
				$("#enviBodyFontFamily").html('body { font-family: '+ $.cookie("BodyFontFamily") +'}');
				$("#bodyfontfamily").val($.cookie("BodyFontFamily"));
			} else {
				$("#enviBodyFontFamily").html('')
			}
		} else {
			// Cookie 'BodyFontFamily' is undefined
		}

	// Change font family for body
	$('#bodyfontfamily').change(function() {
		// value and cookie
		font_picked = $(this).val();
		if(font_picked.length > 0){
			$.cookie('BodyFontFamily', font_picked, {
				expires: 365,
				path: '/'
			});
		}
		// write into <style>
		$("#enviBodyFontFamily").html(
			'body { font-family: '+ font_picked +';}'
		)
	});
});

/* =========== SAVE COLOR SETTINGS ======= */
$(function() {
	function currentDate() {
		var currentdate = new Date(); 
		var datetime = "Export: " + currentdate.getDate() + "/"
			+ (currentdate.getMonth()+1)  + "/" 
			+ currentdate.getFullYear() + " @ "  
			+ currentdate.getHours() + ":"  
			+ currentdate.getMinutes() + ":" 
			+ currentdate.getSeconds();
		return datetime;
	}

	$("#show_color").click(function () {
		/* Variable - Basic color settings */
		var colorStyle= $(".colchange li.active").attr('title');
		var patternStyle= $(".patchange li.active").attr('title');
		var menuFontFamily = $("#menufontfamily option:selected").text();
		var menuFontSize = $("#menufontsize option:selected").text();
		var bodyFontFamily = $("#bodyfontfamily option:selected").text();
		var bodyFontColor = $(".fontcolorchange li.active").attr('title');
		var rotateLogo = $("#rotatelogo").is(':checked') ? 'On' : 'Off';
		var infotableBorder = $("#infotable_border").is(':checked') ? 'On' : 'Off';
		var borderRadius = $("#border_radius").is(':checked') ? 'On' : 'Off';
		var notifierRadius = $("#notifier_radius").is(':checked') ? 'On' : 'Off';
		var plasticStyle = $("#plastic").is(':checked') ? 'On' : 'Off';
		if($('.backchange li').hasClass('active')){
			var backgroundBodyColor = $(".backchange li.active").attr('title');
			/* Control if 'title' exist, if not than get title from 'data-title' (Boot Tooltip)*/
			if(backgroundBodyColor.length == 0) {
				var backgroundBodyColor= $(".backchange li.active").attr('data-original-title');
			}
		} else {
			var backgroundBodyColor = $('#colorpicker1').val() + '(Custom color setting)' ;
		}

		/* Control if 'title' exist, if not than get title from 'data-title' (Boot Tooltip)*/
		if(colorStyle.length == 0) {
			var colorStyle= $(".colchange li.active").attr('data-original-title');
		}
		if(patternStyle.length == 0) {
			var patternStyle= $(".patchange li.active").attr('data-original-title');
		}
		if(bodyFontColor.length == 0) {
			var bodyFontColor= $(".fontcolorchange li.active").attr('data-original-title');
		}

		/* Variable - Extended color settings */
		var colorpicker2_val = $('#colorpicker2').val()
			if (colorpicker2_val == '#000000') {colorpicker2_val = 'undefined'};
		var colorpicker3_val = $('#colorpicker3').val()
			if (colorpicker3_val == '#000000') {colorpicker3_val = 'undefined'};
		var colorpicker4_val = $('#colorpicker4').val()
			if (colorpicker4_val == '#000000') {colorpicker4_val = 'undefined'};
		var colorpicker5_val = $('#colorpicker5').val()
			if (colorpicker5_val == '#000000') {colorpicker5_val = 'undefined'};
		var colorpicker6_val = $('#colorpicker6').val()
			if (colorpicker6_val == '#000000') {colorpicker6_val = 'undefined'};
		var colorpicker7_val = $('#colorpicker7').val()
			if (colorpicker7_val == '#000000') {colorpicker7_val = 'undefined'};
		var colorpicker8_val = $('#colorpicker8').val()
			if (colorpicker8_val == '#000000') {colorpicker8_val = 'undefined'};
		var colorpicker9_val = $('#colorpicker9').val()
			if (colorpicker9_val == '#000000') {colorpicker9_val = 'undefined'};
		var colorpicker10_val = $('#colorpicker10').val()
			if (colorpicker10_val == '#000000') {colorpicker10_val = 'undefined'};
		var colorpicker11_val = $('#colorpicker11').val()
			if (colorpicker11_val == '#000000') {colorpicker11_val = 'undefined'};
		var colorpicker12_val = $('#colorpicker12').val()
			if (colorpicker12_val == '#000000') {colorpicker12_val = 'undefined'};
		var colorpicker13_val = $('#colorpicker13').val()
			if (colorpicker13_val == '#000000') {colorpicker13_val = 'undefined'};
		var colorpicker14_val = $('#colorpicker14').val()
			if (colorpicker14_val == '#000000') {colorpicker14_val = 'undefined'};
		var colorpicker15_val = $('#colorpicker15').val()
			if (colorpicker15_val == '#000000') {colorpicker15_val = 'undefined'};
		var colorpicker16_val = $('#colorpicker16').val()
			if (colorpicker16_val == '#000000') {colorpicker16_val = 'undefined'};
		var colorpicker17_val = $('#colorpicker17').val()
			if (colorpicker17_val == '#000000') {colorpicker17_val = 'undefined'};
		var colorpicker18_val = $('#colorpicker18').val()
			if (colorpicker18_val == '#000000') {colorpicker18_val = 'undefined'};

		$('#save_color_text').val(
			'ENVI STYLESWITCHER - BASIC SETTINGS  ' + currentDate() + '\n' +
			'===================================================================\n' +
			'Template color settings\n' +
			'--------------------------------------\n' +
			'Template style:           ' + colorStyle + '\n' +
			'\n' +
			'Background color settings\n' +
			'--------------------------------------\n' +
			'Body background color:    ' + backgroundBodyColor + '\n' +
			'\n' +
			'Background pattern settings\n' +
			'--------------------------------------\n' +
			'Pattern style:            ' + patternStyle + '\n' +
			'\n' +
			'Font settings\n' +
			'--------------------------------------\n' +
			'Menu font:                ' + menuFontFamily + '\n' +
			'Menu font size:           ' + menuFontSize + '\n' +
			'Body font:                ' + bodyFontFamily + '\n' +
			'Body font color:          ' + bodyFontColor + '\n' +	
			'\n' +
			'Other settings\n' +
			'--------------------------------------\n' +
			'Rotate logo:              ' + rotateLogo + '\n' +
			'Border of tables:         ' + infotableBorder + '\n' +
			'Button border radius:     ' + borderRadius + '\n' +
			'Notifier border radius:   ' + notifierRadius + '\n' +
			'Plastic style:            ' + plasticStyle + '\n' +
			'\n' +
			'ENVI STYLESWITCHER - EXTENDED SETTINGS\n' +
			'===================================================================\n' +
			'Main Menu color settings\n' +
			'--------------------------------------\n' +
			'Background color:         ' + colorpicker2_val + '\n' +
			'Font color:               ' + colorpicker3_val + '\n' +
			'Link color:               ' + colorpicker4_val + '\n' +
			'Link:hover color:         ' + colorpicker5_val + '\n' +
			'\n' +
			'Submenu color settings\n' +
			'--------------------------------------\n' +
			'Background color:         ' + colorpicker6_val + '\n' +
			'Font color:               ' + colorpicker7_val + '\n' +
			'Link color:               ' + colorpicker8_val + '\n' +
			'Link:hover color:         ' + colorpicker9_val + '\n' +
			'\n' +
			'Submenu color settings\n' +
			'--------------------------------------\n' +
			'Thead back color:         ' + colorpicker10_val + '\n' +
			'Thead text color:         ' + colorpicker11_val + '\n' +
			'Text color:               ' + colorpicker12_val + '\n' +
			'\n' +
			'LIVELOG color settings\n' +
			'--------------------------------------\n' +
			'Text color:               ' + colorpicker13_val + '\n' +
			'\n' +
			'FILES color settings\n' +
			'--------------------------------------\n' +
			'Text color:               ' + colorpicker14_val + '\n' +
			'\n' +
			'Footer color settings\n' +
			'--------------------------------------\n' +
			'Background color:         ' + colorpicker15_val + '\n' +
			'Top border color:         ' + colorpicker16_val + '\n' +
			'Text color:               ' + colorpicker17_val + '\n' +
			'Text bold color:          ' + colorpicker18_val + '\n' +
			'\n'
		);
		$('#openModalColorBox').show();
	});

	$("#closeModalColorBox").click(function () {
		$('#openModalColorBox').hide();
	});

	/* Download text from textarea to 'txt' file */
	$("#savecolor").on('click', function (event) {
		var txt = $("#save_color_text").val();
		// Data URI
		txtData = 'data:application/txt;charset=utf-8,' + encodeURIComponent(txt);
		$(this).attr({
			'href': txtData,
			'target': '_blank'
		});
	});
});

/* -------------- EXTENDED SETTINGS IN STYLESWITCHER -------------- */
/* Show extended settings in StyleSwitcher */
$(function() {
	$("#show_ext").click(function () {
		$('#ext_settings').slideToggle("slide");
		$(this).val( $(this).val() == 'Show extended settings' ? "Show basic settings" : "Show extended settings");
		return false;
	});

});

/* -------------- RESET SETTINGS -------------- */
/* RESET BUTTON - only for Envi (not for original) */
$(function() {

	$("#reset").click(function () {
		$('#openModalResetBox').show();
	});
	
	$("#closeModalResetBox").click(function () {
		$('#openModalResetBox').hide();
	});

	$("#resetindividual").click(function () {
		// Reset settings in 'TEMPLATE COLOR STYLE'
			if( $('#reset_1').is(':checked')) {
				// Reset class in list of colors
				$('.colchange li').removeClass('active');
				$('#col_0').addClass('active');
				// Remove class in 'body'
				$('body').removeClass (function (index, css) {
					return (css.match (/\bcolorstyle_\S+/g) || []).join(' ');
				});
				// Clear cookie
				$.removeCookie('colorstyle');
				$.removeCookie('colorstyleListID');
				// !!!! I NEED SOLUTION HOW CALL FUNCTION FOR COLORS OF ICONS AFTER RESET !!!
			}
		// Reset settings in 'BACKGROUND COLOR'
			if( $('#reset_2').is(':checked')) {
				// Reset class in list of colors
				$('.backchange li').removeClass('active');
				$('#back_0').addClass('active');
				// Remove class in 'body'
				$('body').removeClass (function (index, css) {
					return (css.match (/\bbackground_\S+/g) || []).join(' ');
				});
				// Clear cookie
				$.removeCookie('backcolor');
				$.removeCookie('backcolorListID');
				$.removeCookie('ColorPicker1');
				$.removeCookie('ColorPicker1_revert');

				$('#enviColorPicker1').remove();
				$('#colorpicker1').removeClass('active');
				$('#enviBodyColor').html('')
			}
		// Reset settings in 'BACKGROUND PATTERN'
			if( $('#reset_3').is(':checked')) {
				// Reset class in list of colors
				$('.patchange li').removeClass('active');
				$('#pat_0').addClass('active');
				// Remove class in 'body'
				$('body').removeClass (function (index, css) {
					return (css.match (/\bpatchange_\S+/g) || []).join(' ');
				});
				// Clear cookie
				$.removeCookie('patcolor');
				$.removeCookie('patcolorListID');
				$.removeCookie('fontcolor');
				$.removeCookie('BodyFontColorCookieID');
			}
		// Reset settings in 'MENU FONT FAMILY'
			if( $('#reset_4').is(':checked')) {
				$("#menufontfamily")[0].selectedIndex = 0;
				$("#enviFontFamily").html('');
				// Clear cookie
				$.removeCookie('FontFamily');
			}
		// Reset settings in 'MENU FONT SIZE'
			if( $('#reset_5').is(':checked')) {
				$("#menufontsize")[0].selectedIndex = 1;
				$("#enviFontSize").html('');
				// Clear cookie
				$.removeCookie('FontSize');
			}
		// Reset settings in 'BODY FONT FAMILY'
			if( $('#reset_6').is(':checked')) {
				$("#bodyfontfamily")[0].selectedIndex = 0;
				$("#enviBodyFontFamily").html('');
				// Clear cookie
				$.removeCookie('BodyFontFamily');
			}
		// Reset settings in 'BODY FONT COLOR'
			if( $('#reset_7').is(':checked')) {
				// Reset class in list of colors
				$('.fontcolorchange li').removeClass('active');
				$('#fontcolorchange_0').addClass('active');
				// Remove class in 'body'
				$('body').removeClass (function (index, css) {
					return (css.match (/\bfontcolorchange_\S+/g) || []).join(' ');
				});
				// Clear cookie
				$.removeCookie('fontcolor');
				$.removeCookie('BodyFontColorCookieID');
			}
		// Reset settings in 'BODY LINK COLOR'
			if( $('#reset_8').is(':checked')) {
				
			}
		// Reset settings in 'ROTATE OSCAM LOGO'
			if( $('#reset_9').is(':checked')) {
				$('#rotatelogo').prop('checked', false);
				$('body').removeClass('rotatelogo');
				// Clear cookie
				$.removeCookie('rotatelogo');
			}
		// Reset settings in 'BORDER OF INFO TABLES'
			if( $('#reset_10').is(':checked')) {
				$('#infotable_border').prop('checked', false);
				$('body').removeClass('infotable_border');
				// Clear cookie
				$.removeCookie('infotable_border');
			}
		// Reset settings in 'BUTTON BORDER RADIUS'
			if( $('#reset_11').is(':checked')) {
				$('#border_radius').prop('checked', false);
				$('body').removeClass('border_radius');
				// Clear cookie
				$.removeCookie('border_radius');
			}
		// Reset settings in 'NOTIFIER BORDER RADIUS'
			if( $('#reset_12').is(':checked')) {
				$('#notifier_radius').prop('checked', false);
				$('body').removeClass('notifier_radius');
				// Clear cookie
				$.removeCookie('notifier_radius');
			}
		// Reset settings in 'PLASTIC STYLE'
			if( $('#reset_13').is(':checked')) {
				$('#plastic').prop('checked', false);
				$('body').removeClass('plastic');
				// Clear cookie
				$.removeCookie('plastic');
			}
		// Clear all checkbox
		$('input[id^="reset_"]').prop('checked', false);
	});

	$("#resetall").click(function () {
		if($("body").hasClass("envi")) {
			// Remove all cookie
			var cookies = $.cookie();
			for(var cookie in cookies) {
				$.removeCookie(cookie);
			}
			// Set only cookie for Envi
			$.cookie('TemplateSwitch', 'envi', {expires: 365,path: '/'});
			// Set default class and checkbox
			$('body').removeClass().addClass('envi');
			$('.colchange li').removeClass('active');
			$('.backchange li').removeClass('active');
			$('.patchange li').removeClass('active');
			$('.fontcolorchange li').removeClass('active');
			$('#rotatelogo').prop('checked', false);
			$('#infotable_border').prop('checked', false);
			$('#border_radius').prop('checked', false);
			$('#notifier_radius').prop('checked', false);
			$('#plastic').prop('checked', false);
			// Set default colors
			$('#col_0').addClass('active');
			$('#back_0').addClass('active');
			$('#pat_0').addClass('active');
			$('#fontcolorchange_0').addClass('active');
			// Set default input
			$("#menufontfamily")[0].selectedIndex = 0;
			$("#menufontsize")[0].selectedIndex = 1;
			$("#bodyfontfamily")[0].selectedIndex = 0;
			// Set default style
			$("#enviFontFamily").html('')
			$("#enviFontSize").html('')
			$("#enviBodyFontFamily").html('')
		}
	});
});
/* -------------- SCROLL TO TOP FUNCTION -------------- */
$(function() {
	// hide #back-top first
	jQuery("#back-top").hide();
	// fade in #back-top
	jQuery(function () {
		jQuery(window).scroll(function () {
			if (jQuery(this).scrollTop() > 100) {
				jQuery('#back-top').fadeIn();
			} else {
				jQuery('#back-top').fadeOut();
			}
		});

		// scroll body to 0px on click
		jQuery('#back-top a').click(function () {
			jQuery('body,html').animate({
				scrollTop: 0
			}, 800);
			return false;
		});
	});
});

/* -------------- TOOLTIP -------------- */
!function ($) {
	$(function(){
		/* Styleswitcher */
		$('.envi div.demo_changer li').boot_tooltip({container: 'body',animation: false, placement: 'bottom'})
		$('.envi div.demo_changer input').boot_tooltip({container: 'body',animation: false, placement: 'bottom'})
		/* Logo */
		$('.envi div.logo a').boot_tooltip({animation: false, placement: 'bottom'})
		/* Submit and button */
		$('.envi input[type="submit"]').boot_tooltip({animation: false, placement: 'bottom'})
		$('.envi input[type="button"]').boot_tooltip({animation: false, placement: 'bottom'})
		/* Switch debug */
		$('.envi span.debugl a').boot_tooltip({animation: false, placement: 'bottom'})
		$('.envi span.debugs a').boot_tooltip({animation: false, placement: 'bottom'})
		$('.envi ul.addClass a').boot_tooltip({animation: false, placement: 'top'})
		/* Tables in Users */
		$('.envi table.users th').boot_tooltip({container: 'body',animation: false, placement: 'bottom'})
		$('.envi table.users th span').boot_tooltip({container: 'body',animation: false, placement: 'bottom'})
		$('.envi td.usercol0 a').boot_tooltip({animation: false, placement: 'right'})
		$('.envi td.usercol1 a').boot_tooltip({animation: false, placement: 'right'})
		$('.envi td.usercol5 div').boot_tooltip({animation: false, placement: 'right'})
		$('.envi td.usercol23 a').boot_tooltip({animation: false, placement: 'left'})
		$('.envi td.usercol24 a').boot_tooltip({animation: false, placement: 'left'})
		$('.envi td.usercol25 a').boot_tooltip({animation: false, placement: 'left'})
		$('.envi span.global_conf').boot_tooltip({container: 'body',animation: false, placement: 'right'})
		$('.envi span.global_conf a').boot_tooltip({container: 'body',animation: false, placement: 'right'})
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
		$('.envi .statsbalance a').boot_tooltip({animation: false, placement: 'left'})
		$('.envi .statusecminfo a').boot_tooltip({animation: false, placement: 'right'})
		/* Tables in Status */
		$('.envi table.status th').boot_tooltip({container: 'body',animation: false, placement: 'bottom'})
		$('.envi td.statuscol0 a').boot_tooltip({animation: false, placement: 'right'})
		$('.envi td.statuscol1 a').boot_tooltip({animation: false, placement: 'right'})
		$('.envi td.statuscol4 a').boot_tooltip({animation: false, placement: 'right'})
		$('.envi table.infotable td').boot_tooltip({container: 'body',animation: false, placement: 'bottom'})
		/* For Parameter input in script.html */
		$('.envi #scriptparam').boot_tooltip({animation: false, placement: 'bottom'})
		/* Section label in Style Switcher */
		$('.envi a.sectioninfo').boot_tooltip({html: true,container: 'body',animation: false, placement: 'bottom'})
		/* Regex in logpoll.html */
		$('.envi #add1regex').boot_tooltip({animation: false, placement: 'bottom'})
		$('.envi #del1regex').boot_tooltip({animation: false, placement: 'bottom'})
		/* Services */
		$('.envi #servicesedit a').boot_tooltip({animation: false, placement: 'left'})
		/* Failban */
		$('.envi .failban a').boot_tooltip({animation: false, placement: 'left'})
	})
}(window.jQuery)
/* -------------------------------------- SEARCHTERM and PAGINATION in tables readers, users, cacheex -------------------------------- */
$(function () { if ($('body').hasClass('envi') == true) {
// ********************************************************************

	/* ------------------------- FUNCTION FOR SEARCHTERM and PAGINATION ------------------------- */
	// Create TEST DIV - It is only for test. I can remove.
	function CreateTestDiv() {
		// Counts of all TR
		var output = $('#dataTable');
		var content = ('<DIV ID="testdiv" STYLE="text-align: left;margin: 10px;padding: 6px;background: #CCC;"><B>CONTROL DATA FROM SEARCHTERM - </B> ' + 
						'Count visible rows: <SPAN ID="span3" STYLE="font-weight:bold;"></SPAN> ' +
						'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;' +
						'numRows: <SPAN ID="span4" STYLE="font-weight:bold;"></SPAN> ' +
						'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;' +
						'numPages: <SPAN ID="span5" STYLE="font-weight:bold;"></SPAN> ' +
						'</DIV>');
		output.after(content);
	}

	function CreateTfoot() {
		// Create TFOOT in TABLE for count rows
		tfoot = '<TFOOT></TFOOT>';
		$('#dataTable').append(tfoot);
		// TD "countrows" is for searchterm and TD "pagination" is for pagination
		tfoot_tr = '<TR><TD ID="TfootDiv"><DIV ID="countrows"></DIV><DIV CLASS="pagin"><DIV ID="pagination"></DIV><DIV ID="numPerPage">Items per page: </DIV></DIV></TD></TR>';
		$('#dataTable tfoot').append(tfoot_tr);
		// Set COLSPAN for TD (id=pagination) - colspan = TD with hidden columns (Anticasc,CW Cycle, Group)
		if (typeof page != 'undefined') {
			if(page == 'reader'){
				$('#TfootDiv').attr('colspan',18);
			}
			if(page == 'user'){
				$('#TfootDiv').attr('colspan',23);
			}
		}
	}

	function AllRowCount() {
		// Counts of all TR - Function is not used, But I do not want to delete it
		var outputCell = $('#countrows'); // output to DIV
		var allRowCount = ($("#dataTable > tbody").children('tr').length); // count of all TR in TABLE
		outputCell.html('Showing: <SPAN CLASS="rowcount">' + allRowCount + '</SPAN> of <SPAN CLASS="rowcount">' + allRowCount + '</SPAN> entries');
	}
	
	function VisibleRowCount() {
		// Count visible rows for searching in table
		var outputCell = $('#countrows'); // output to DIV
		var allRowCount = $('#dataTable tbody tr').length;  // count of all TR in TABLE
		var hiddenRowCount = $("#dataTable tbody tr:hidden").length; // count of hidden TR
		var numOfVisibleRows = (allRowCount - hiddenRowCount);  // count of visible TR
		outputCell.html('Showing: <SPAN CLASS="rowcount">' + numOfVisibleRows + '</SPAN> of <SPAN CLASS="rowcount">' + allRowCount + '</SPAN> entries');
	}

	function VisibleRowCountPagination() {
		// Count visible rows for pagination if page is loading and for selection in pagination
		var outputCell = $('#countrows'); // output to DIV
		var itemsTR = $("#dataTable tbody tr");
		var allRowCount = itemsTR.length;  // count of all TR in TABLE
			// Set "numPerPage" with scrutiny cookie 
			if (typeof $.cookie('numPerPage') === 'undefined') {
				//no cookie
				var numPerPage = 10;
			} else {
				//have cookie
				var numPerPage = $.cookie("numPerPage"); // Set amount of table rows per 'page' from cookie
			}
		var startRecord = 1;
		var endRecord = (numPerPage * startRecord);
			// Control If count of all TR is less or equal then "numPerPage".
			if (allRowCount <= numPerPage){
				outputCell.html('Showing: <SPAN CLASS="rowcount">' + allRowCount + '</SPAN> of <SPAN CLASS="rowcount">' + allRowCount + '</SPAN> entries');
			} else {
				outputCell.html('Showing: <SPAN CLASS="rowcount">' + startRecord + ' - ' + endRecord + '</SPAN> of <SPAN CLASS="rowcount">' + allRowCount + '</SPAN> entries');
			}
	}

	function NullRowCount() {
		// How much TR is visible
		var outputCell = $('#countrows'); // output to DIV
		var allRowCount = $('#dataTable tbody tr').length-1;  // number of all TR without TR "no entris found"
		outputCell.html('Showing: <SPAN CLASS="rowcount">0</SPAN> of <SPAN CLASS="rowcount">' + allRowCount + '</SPAN> entries');
	}

	function Paginate() {
		$('#dataTable').each(function () {
			// How much items per page to show if page is load (Check if cookie exists )
			if (typeof $.cookie('numPerPage') === 'undefined'){
				//no cookie
				var numPerPage = 10;
				$("#selectionPerPage").val("10");
			} else {
				//have cookie
				var numPerPage = $.cookie("numPerPage"); // Set amount of table rows per 'page' from cookie
				$("#selectionPerPage").val($.cookie("numPerPage"));
			}
			var currentPage = 0;
			var $table = $(this);
			var $tfoot = $(this).find('#pagination');
			$table.bind('repaginate', function () {
				$table.find('tbody tr').hide().slice(currentPage * numPerPage, (currentPage + 1) * numPerPage).show();
			});
			$table.trigger('repaginate');
			var numRows = $table.find('tbody tr').length;
			var numPages = Math.ceil(numRows / numPerPage);
			var $pager = $('<DIV ID="pager" CLASS="pager">Page: </div>'); // create "pager"
			var newPage = 'newPage';
			// If num of pages is > 1
			for (var page = 0; page < numPages; page++) {
				$('<span class="page-number"></span>').text(page + 1).bind('click', {
					newPage: page
				}, function (event) {
					currentPage = event.data.newPage;
					$table.trigger('repaginate');
					$(this).addClass('active').siblings().removeClass('active');
				}).appendTo($pager).addClass('clickable');
			}
			// Clear the old pager first
			$('#pager').remove();
			$pager.appendTo($tfoot).find('span.page-number:first').addClass('active');

			// Show info about record after click on span in $pager
				// The common setting for $pagerItems and $lastPagerItems
				var $pagerItems = $('span.page-number');
				var $lastPagerItems = $('span.page-number:last-child');
				var outputCell = $('#countrows'); // output to DIV
				// How much items per page to show if page is load (Check if cookie exists )
					if (typeof $.cookie('numPerPage') === 'undefined'){
						//no cookie
						var numPerPage = 10;
					} else {
						//have cookie
						var numPerPage = $.cookie("numPerPage"); // Set amount of table rows per 'page' from cookie
					}
				var itemsTR = $("#dataTable tbody tr");
				var allRowCount = itemsTR.length; // count of all TR in TABLE
			// If num of pages == 1, cookie "numPerPage" is set to 1000 (show All items)
			if(numPages == 1){
				VisibleRowCountPagination();
				return;
			}

			$pagerItems.click(function() {
				// Showing record 
				currentPage = currentPage + 1;
				var startcurrentRecord = (numPerPage * currentPage) - numPerPage + 1;
				var endcurrentRecord = (numPerPage * currentPage);
				outputCell.html('Showing: <SPAN CLASS="rowcount">' + startcurrentRecord + ' - ' + endcurrentRecord + '</SPAN> of <SPAN CLASS="rowcount">' + allRowCount + '</SPAN> entries');
				});

				$lastPagerItems.click(function() {
					// Showing record for last TR's
					var startcurrentRecord = (numPerPage * currentPage) - numPerPage + 1;
				var endcurrentRecord = (numPerPage * currentPage);
				outputCell.html('Showing: <SPAN CLASS="rowcount">' + startcurrentRecord + ' - ' + allRowCount + '</SPAN> of <SPAN CLASS="rowcount">' + allRowCount + '</SPAN> entries');
				});
		});
	}

	function PaginateBySearchTerm() {
		$('#dataTable').each(function () {
			// How much items per page to show if page is load (Check if cookie exists )
			// How much TR is visible
			var outputCell = $('#span3');
			var visibleRowCount = $("#dataTable tbody tr:visible").length; // number of visible TR
			outputCell.html(visibleRowCount);

			// How much items per page to show if page is load (Check if cookie exists )
			if (typeof $.cookie('numPerPage') === 'undefined'){
				//no cookie
				var numPerPage = 10;
				$("#selectionPerPage").val("10");
			} else {
				//have cookie
				var numPerPage = $.cookie("numPerPage"); // Set amount of table rows per 'page' from cookie
				$("#selectionPerPage").val($.cookie("numPerPage"));
			}
			var currentPage = 0;
			var $table = $(this);
			var $tfoot = $(this).find('#pagination');
			$table.bind('repaginate', function () {
				$table.find('tbody tr:visible').hide().slice(currentPage * numPerPage, (currentPage + 1) * numPerPage).show();
			});
			var numRows = $table.children('tbody').children('tr:visible').length;
			var numPages = Math.ceil(numRows / numPerPage);
			var $pager = $('<DIV ID="pager" CLASS="pager">Page: </div>'); // create "pager"
			var newPage = 'newPage';
			// Clear the old pager first
			$('#pager').remove();
			// Create pagination
			for (var page = 0; page < numPages; page++) {
				$('<span class="page-number"></span>').text(page + 1).bind('click', {
					newPage: page
				}, function (event) {
					currentPage = event.data.newPage;
					$table.trigger('repaginate');
					$(this).addClass('active').siblings().removeClass('active');
				}).appendTo($pager).addClass('clickable');
			}

			// Clear the old pager first
			$('#pager').remove();
			$pager.appendTo($tfoot).find('span.page-number:first').addClass('active');
 
			$('#span4').html(numRows);
			$('#span5').html(numPages);
		});
	}

	function HidePagination() {
		$('#pagination').addClass('visibility')
		$('#numPerPage').addClass('visibility')
	}

	function ShowPagination() {
		$('#pagination').removeClass('visibility')
		$('#numPerPage').removeClass('visibility')
	}

	/* ---------------- CALL FUNCTION after loading page - only for page READER, USER ---------------- */
	if (typeof page != 'undefined') {
		if(page == 'reader' || 'user'){
			// Create TEST DIV (Call function)
			CreateTestDiv();
			// Create TFOOT (Call function)
			CreateTfoot();
		}
	}

	/* -------------- SMARTER SEARCH IN TABLES with SWOWING ENTRIES -------------- */
	/* This function replaces the standard search in the original WebIf. It is only available in Envi.
	 *
	 * NOTE: Change in Original script - for standard script I use 
	 *    if ($('body').hasClass('original') == true) { }
	 *  
	 * STANDARD SEARCH in Orgininal WebIf
	 *
	 * // search related events
	 *  $("#searchTerm").keyup(function () {
	 *    var value = $("#searchTerm").val().toLowerCase().trim();
	 *    $("#dataTable tr").each(function (index) {
	 *      if (!index) return;
	 *      $(this).find("td").each(function () {
	 *        var id = (($(this).data('sort-value') == undefined || $(this).hasClass("usercol2")) ? $(this).text() : $(this).data('sort-value').toString()).toLowerCase().trim();
	 *        var not_found = (id.indexOf(value) == -1);
	 *        $(this).closest('tr').toggle(!not_found);
	 *        return not_found;
	 *      });
	 *    });
	 *  });
	 */
	
	//Function for coloring background if value from input found
	$.extend($.expr[":"], {
		"containsNC": function(elem, i, match, array) {
			return (elem.textContent || elem.innerText || "").toLowerCase().indexOf((match[3] || "").toLowerCase()) >= 0;
		}
	});
	// Keyup function for "#searchTerm" input
	$('#searchTerm').keyup( function() {
		// coloring background
		$('#dataTable tbody tr td').removeClass('back_cell'); 
		var value= $(this).val();
		if (value.length > 0 ) {
			$('#dataTable tbody tr td:containsNC("'+ value +'")').addClass('back_cell');
		}
		//Set basic value for SearchTerm
		var that = this;
		var tableBody = $('#dataTable tbody');
		var tableRowsClass = $('#dataTable tbody tr');
		// affect all table rows on in systems table
		$('.search-sf').remove();
		tableRowsClass.each( function(i, val) {       
			//Lower text for case insensitive
			var rowText = $(val).text().toLowerCase();
			var inputText = $(that).val().toLowerCase();

			if( rowText.indexOf( inputText ) == -1 ) {
				//hide rows
				tableRowsClass.eq(i).hide(); 
			} else {
				$('.search-sf').remove();
				tableRowsClass.eq(i).show();
			}
		});
		
		// Count visible rows in table
		VisibleRowCount();
		// Show paginate table
		ShowPagination();

		if(tableRowsClass.children(':visible').length == 0) {
			// Set "colspan" for TD if no entries found by name of page - colspan = TD with hidden columns (Anticasc,CW Cycle, Group)
			if (typeof page != 'undefined') {
				if(page == 'reader'){
					colspan = "18"
				}
				if(page == 'user'){
					colspan = "23"
				}
			}
			tableBody.append('<TR CLASS="search-sf"><TD CLASS="text-muted" COLSPAN="' + colspan + '">No entries found.</TD></TR>');
			//all TR elements are hidden
			NullRowCount()
			// Hide paginate table
			HidePagination();
		}
		// Repaginate table
		PaginateBySearchTerm();
	});

	$("#searchTerm").focusout(function () {
		// Show paginate table
		// ShowPagination();
	});

	$("#searchTerm").focusin(function () {
		// Hide paginate table
		// HidePagination();
	});
	
	/* ------------------------- PAGINATION ------------------------- */
		// Create selection from Array
		var arr = [
			{val : 1000, text: 'All'},
			{val : 5, text: '5'},
			{val : 10, text: '10 - default'},
			{val : 15, text: '15'},
			{val : 20, text: '20'}
		];

		var sel = $('<select id="selectionPerPage">').appendTo('#numPerPage');
		$(arr).each(function() {
			sel.append($("<option>").attr('value',this.val).text(this.text));
		});

		// Set value after selection
		$('#selectionPerPage').change(function() {
			// value and cookie
			var numPerPage = $(this).val();
			if(numPerPage.length > 0){
				$.cookie('numPerPage', numPerPage, {
					expires: 365,path: '/'
				});
			}
			// ONLY TEST
				var selval = $(this).find("option:selected").val();
				var seltext = $(this).find("option:selected").text();
				$.cookie('selval', selval, {expires: 365,path: '/'});
				$.cookie('seltext', seltext, {expires: 365,path: '/'});
			// Repaginate table
			Paginate();
			// Count visible rows in table
			VisibleRowCountPagination();
		});
	
	/* ---------------- CALL FUNCTION after loading page - only for page READER, USER ---------------- */
	if (typeof page != 'undefined') {
		if(page == 'reader' || 'user'){
			// Create pagination for table
			Paginate();
			// Counts of all rows (Call function)
			VisibleRowCountPagination()
		}
	}
	
// ********************************************************************

}});

/* -------------------------------- ICONS ------------------------------- */
$(function () { if ($('body').hasClass('envi') == true) {
// ********************************************************************

function CreateIcons() {
	// Icon for STATUS
		var svgStatus = '<svg class="svg_icons" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="14" height="14" viewBox="0 0 14 14"><path d="M8 10.75v-1.25q0-0.109-0.070-0.18t-0.18-0.070h-0.75v-4q0-0.109-0.070-0.18t-0.18-0.070h-2.5q-0.109 0-0.18 0.070t-0.070 0.18v1.25q0 0.109 0.070 0.18t0.18 0.070h0.75v2.5h-0.75q-0.109 0-0.18 0.070t-0.070 0.18v1.25q0 0.109 0.070 0.18t0.18 0.070h3.5q0.109 0 0.18-0.070t0.070-0.18zM7 3.75v-1.25q0-0.109-0.070-0.18t-0.18-0.070h-1.5q-0.109 0-0.18 0.070t-0.070 0.18v1.25q0 0.109 0.070 0.18t0.18 0.070h1.5q0.109 0 0.18-0.070t0.070-0.18zM12 7q0 1.633-0.805 3.012t-2.184 2.184-3.012 0.805-3.012-0.805-2.184-2.184-0.805-3.012 0.805-3.012 2.184-2.184 3.012-0.805 3.012 0.805 2.184 2.184 0.805 3.012z"></path></svg>';

		$('a.menu_image1').prepend('<span class="menu_icons">' + svgStatus + '</span>');

	// Icon for LIVELOG
		var svgLivelog = '<svg class="svg_icons" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="14" height="14" viewBox="0 0 14 14"><path d="M14 10.5v1q0 0.203-0.148 0.352t-0.352 0.148h-13q-0.203 0-0.352-0.148t-0.148-0.352v-1q0-0.203 0.148-0.352t0.352-0.148h13q0.203 0 0.352 0.148t0.148 0.352zM14 7.5v1q0 0.203-0.148 0.352t-0.352 0.148h-13q-0.203 0-0.352-0.148t-0.148-0.352v-1q0-0.203 0.148-0.352t0.352-0.148h13q0.203 0 0.352 0.148t0.148 0.352zM14 4.5v1q0 0.203-0.148 0.352t-0.352 0.148h-13q-0.203 0-0.352-0.148t-0.148-0.352v-1q0-0.203 0.148-0.352t0.352-0.148h13q0.203 0 0.352 0.148t0.148 0.352zM14 1.5v1q0 0.203-0.148 0.352t-0.352 0.148h-13q-0.203 0-0.352-0.148t-0.148-0.352v-1q0-0.203 0.148-0.352t0.352-0.148h13q0.203 0 0.352 0.148t0.148 0.352z"></path></svg>';

		$('a.menu_image2').prepend('<span class="menu_icons">' + svgLivelog + '</span>');

	// Icon for CONFIG
		var svgConfig = '<svg class="svg_icons" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="14" height="14" viewBox="0 0 14 14"><path d="M8 7q0-0.828-0.586-1.414t-1.414-0.586-1.414 0.586-0.586 1.414 0.586 1.414 1.414 0.586 1.414-0.586 0.586-1.414zM12 6.148v1.734q0 0.094-0.062 0.18t-0.156 0.102l-1.445 0.219q-0.148 0.422-0.305 0.711 0.273 0.391 0.836 1.078 0.078 0.094 0.078 0.195t-0.070 0.18q-0.211 0.289-0.773 0.844t-0.734 0.555q-0.094 0-0.203-0.070l-1.078-0.844q-0.344 0.18-0.711 0.297-0.125 1.062-0.227 1.453-0.055 0.219-0.281 0.219h-1.734q-0.109 0-0.191-0.066t-0.090-0.168l-0.219-1.438q-0.383-0.125-0.703-0.289l-1.102 0.836q-0.078 0.070-0.195 0.070-0.109 0-0.195-0.086-0.984-0.891-1.289-1.313-0.055-0.078-0.055-0.18 0-0.094 0.062-0.18 0.117-0.164 0.398-0.52t0.422-0.551q-0.211-0.391-0.32-0.773l-1.43-0.211q-0.102-0.016-0.164-0.098t-0.062-0.184v-1.734q0-0.094 0.062-0.18t0.148-0.102l1.453-0.219q0.109-0.359 0.305-0.719-0.312-0.445-0.836-1.078-0.078-0.094-0.078-0.187 0-0.078 0.070-0.18 0.203-0.281 0.77-0.84t0.738-0.559q0.102 0 0.203 0.078l1.078 0.836q0.344-0.18 0.711-0.297 0.125-1.062 0.227-1.453 0.055-0.219 0.281-0.219h1.734q0.109 0 0.191 0.066t0.090 0.168l0.219 1.438q0.383 0.125 0.703 0.289l1.109-0.836q0.070-0.070 0.187-0.070 0.102 0 0.195 0.078 1.008 0.93 1.289 1.328 0.055 0.062 0.055 0.172 0 0.094-0.062 0.18-0.117 0.164-0.398 0.52t-0.422 0.551q0.203 0.391 0.32 0.766l1.43 0.219q0.102 0.016 0.164 0.098t0.062 0.184z"></path></svg>';

		$('a.menu_image3').prepend('<span class="menu_icons">' + svgConfig + '</span>');

	// Icon for READERS
		var svgReaders = '<svg class="svg_icons" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="13.1px" height="14px" viewBox="490.5 490 13.1 14" enable-background="new 490.5 490 13.1 14" xml:space="preserve"><path d="M491.6,498.1l-1,1.1c0.1-0.1,0.3-0.1,0.5-0.1H503c0.2,0,0.3,0,0.5,0.1l-1-1.1H491.6L491.6,498.1z"/><path d="M503,500H491c-0.3,0-0.6,0.3-0.6,0.6v2.9c0,0.3,0.3,0.6,0.6,0.6H503c0.3,0,0.6-0.3,0.6-0.6v-2.9 C503.5,500.2,503.3,500,503,500z M501.4,502.8c-0.5,0-0.8-0.4-0.8-0.8c0-0.5,0.4-0.8,0.8-0.8s0.8,0.4,0.8,0.8 C502.2,502.5,501.9,502.8,501.4,502.8z"/><path d="M503,492.4c0.2,0,0.3,0,0.5,0.1l-2-2.2c-0.2-0.2-0.4-0.3-0.6-0.3H497h-3.8c-0.2,0-0.5,0.1-0.6,0.3l-2,2.2 c0.2-0.1,0.3-0.1,0.5-0.1H503z"/><path d="M503,493.2H491c-0.3,0-0.6,0.3-0.6,0.6v2.9c0,0.3,0.3,0.6,0.6,0.6h1.3h9.3h1.3c0.3,0,0.6-0.3,0.6-0.6v-2.9 C503.5,493.5,503.3,493.2,503,493.2z M501.4,496.1c-0.5,0-0.8-0.4-0.8-0.8c0-0.5,0.4-0.8,0.8-0.8s0.8,0.4,0.8,0.8 C502.2,495.7,501.9,496.1,501.4,496.1z"/></svg>';

		$('a.menu_image4').prepend('<span class="menu_icons">' + svgReaders + '</span>');

	// Icon for USERS
		var svgUsers = '<svg class="svg_icons" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="11" height="14" viewBox="0 0 11 14"><path d="M11 10.977q0 0.937-0.57 1.48t-1.516 0.543h-6.828q-0.945 0-1.516-0.543t-0.57-1.48q0-0.414 0.027-0.809t0.109-0.852 0.207-0.848 0.336-0.762 0.484-0.633 0.668-0.418 0.871-0.156q0.070 0 0.328 0.168t0.582 0.375 0.844 0.375 1.043 0.168 1.043-0.168 0.844-0.375 0.582-0.375 0.328-0.168q0.477 0 0.871 0.156t0.668 0.418 0.484 0.633 0.336 0.762 0.207 0.848 0.109 0.852 0.027 0.809zM8.5 4q0 1.242-0.879 2.121t-2.121 0.879-2.121-0.879-0.879-2.121 0.879-2.121 2.121-0.879 2.121 0.879 0.879 2.121z"></path></svg>';

		$('a.menu_image5').prepend('<span class="menu_icons">' + svgUsers + '</span>');

	// Icon for SERVICES
		var svgServices = '<svg class="svg_icons" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="14" height="14" viewBox="0 0 14 14"><path d="M4 9.75v1.5q0 0.312-0.219 0.531t-0.531 0.219h-2.5q-0.312 0-0.531-0.219t-0.219-0.531v-1.5q0-0.312 0.219-0.531t0.531-0.219h2.5q0.312 0 0.531 0.219t0.219 0.531zM4 5.75v1.5q0 0.312-0.219 0.531t-0.531 0.219h-2.5q-0.312 0-0.531-0.219t-0.219-0.531v-1.5q0-0.312 0.219-0.531t0.531-0.219h2.5q0.312 0 0.531 0.219t0.219 0.531zM14 9.75v1.5q0 0.312-0.219 0.531t-0.531 0.219h-7.5q-0.312 0-0.531-0.219t-0.219-0.531v-1.5q0-0.312 0.219-0.531t0.531-0.219h7.5q0.312 0 0.531 0.219t0.219 0.531zM4 1.75v1.5q0 0.312-0.219 0.531t-0.531 0.219h-2.5q-0.312 0-0.531-0.219t-0.219-0.531v-1.5q0-0.312 0.219-0.531t0.531-0.219h2.5q0.312 0 0.531 0.219t0.219 0.531zM14 5.75v1.5q0 0.312-0.219 0.531t-0.531 0.219h-7.5q-0.312 0-0.531-0.219t-0.219-0.531v-1.5q0-0.312 0.219-0.531t0.531-0.219h7.5q0.312 0 0.531 0.219t0.219 0.531zM14 1.75v1.5q0 0.312-0.219 0.531t-0.531 0.219h-7.5q-0.312 0-0.531-0.219t-0.219-0.531v-1.5q0-0.312 0.219-0.531t0.531-0.219h7.5q0.312 0 0.531 0.219t0.219 0.531z"></path></svg>';

		$('a.menu_image6').prepend('<span class="menu_icons">' + svgServices + '</span>');

	// Icon for FILES
		var svgFiles = '<svg class="svg_icons" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="14" height="14" viewBox="0 0 14 14"><path d="M11.469 3.719q0.109 0.109 0.219 0.281h-3.687v-3.687q0.172 0.109 0.281 0.219zM7.75 5h4.25v8.25q0 0.312-0.219 0.531t-0.531 0.219h-10.5q-0.312 0-0.531-0.219t-0.219-0.531v-12.5q0-0.312 0.219-0.531t0.531-0.219h6.25v4.25q0 0.312 0.219 0.531t0.531 0.219zM9 10.75v-0.5q0-0.109-0.070-0.18t-0.18-0.070h-5.5q-0.109 0-0.18 0.070t-0.070 0.18v0.5q0 0.109 0.070 0.18t0.18 0.070h5.5q0.109 0 0.18-0.070t0.070-0.18zM9 8.75v-0.5q0-0.109-0.070-0.18t-0.18-0.070h-5.5q-0.109 0-0.18 0.070t-0.070 0.18v0.5q0 0.109 0.070 0.18t0.18 0.070h5.5q0.109 0 0.18-0.070t0.070-0.18zM9 6.75v-0.5q0-0.109-0.070-0.18t-0.18-0.070h-5.5q-0.109 0-0.18 0.070t-0.070 0.18v0.5q0 0.109 0.070 0.18t0.18 0.070h5.5q0.109 0 0.18-0.070t0.070-0.18z"></path></svg>';

		$('a.menu_image7').prepend('<span class="menu_icons">' + svgFiles + '</span>');

	// Icon for FAILBAN
		var svgFailban = '<svg class="svg_icons" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="14" height="14" viewBox="0 0 14 14"><path d="M6 1q1.633 0 3.012 0.805t2.184 2.184 0.805 3.012-0.805 3.012-2.184 2.184-3.012 0.805-3.012-0.805-2.184-2.184-0.805-3.012 0.805-3.012 2.184-2.184 3.012-0.805zM7 10.742v-1.484q0-0.109-0.070-0.184t-0.172-0.074h-1.5q-0.102 0-0.18 0.078t-0.078 0.18v1.484q0 0.102 0.078 0.18t0.18 0.078h1.5q0.102 0 0.172-0.074t0.070-0.184zM6.984 8.055l0.141-4.852q0-0.094-0.078-0.141-0.078-0.062-0.187-0.062h-1.719q-0.109 0-0.187 0.062-0.078 0.047-0.078 0.141l0.133 4.852q0 0.078 0.078 0.137t0.187 0.059h1.445q0.109 0 0.184-0.059t0.082-0.137z"></path></svg>';

		$('a.menu_image8').prepend('<span class="menu_icons">' + svgFailban + '</span>');

	// Icon for CACHEEX
		var svgCacheex = '<svg class="svg_icons" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="14" height="14" viewBox="0 0 14 14"><path d="M5.898 8.25q0 0.102-0.078 0.18l-2.594 2.594 1.125 1.125q0.148 0.148 0.148 0.352t-0.148 0.352-0.352 0.148h-3.5q-0.203 0-0.352-0.148t-0.148-0.352v-3.5q0-0.203 0.148-0.352t0.352-0.148 0.352 0.148l1.125 1.125 2.594-2.594q0.078-0.078 0.18-0.078t0.18 0.078l0.891 0.891q0.078 0.078 0.078 0.18zM12 1.5v3.5q0 0.203-0.148 0.352t-0.352 0.148-0.352-0.148l-1.125-1.125-2.594 2.594q-0.078 0.078-0.18 0.078t-0.18-0.078l-0.891-0.891q-0.078-0.078-0.078-0.18t0.078-0.18l2.594-2.594-1.125-1.125q-0.148-0.148-0.148-0.352t0.148-0.352 0.352-0.148h3.5q0.203 0 0.352 0.148t0.148 0.352z"></path></svg>';

		$('a.menu_image9').prepend('<span class="menu_icons">' + svgCacheex + '</span>');

	// Icon for SCRIPTS
		var svgScripts = '<svg class="svg_icons" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="16" viewBox="0 0 20 16"><path d="M13 11.5l1.5 1.5 5-5-5-5-1.5 1.5 3.5 3.5z"></path><path d="M7 4.5l-1.5-1.5-5 5 5 5 1.5-1.5-3.5-3.5z"></path><path d="M10.958 2.352l1.085 0.296-3 11-1.085-0.296 3-11z"></path></svg>';

		$('a.menu_image10').prepend('<span class="menu_icons">' + svgScripts + '</span>');

	// Icon for RESTART
		var svgRestart = '<svg class="svg_icons" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="14" height="14" viewBox="0 0 14 14"><path d="M12 7q0 1.219-0.477 2.328t-1.281 1.914-1.914 1.281-2.328 0.477-2.328-0.477-1.914-1.281-1.281-1.914-0.477-2.328q0-1.422 0.629-2.68t1.77-2.109q0.336-0.25 0.746-0.195t0.652 0.391q0.25 0.328 0.191 0.738t-0.387 0.66q-0.766 0.578-1.184 1.414t-0.418 1.781q0 0.813 0.316 1.551t0.855 1.277 1.277 0.855 1.551 0.316 1.551-0.316 1.277-0.855 0.855-1.277 0.316-1.551q0-0.945-0.418-1.781t-1.184-1.414q-0.328-0.25-0.387-0.66t0.191-0.738q0.242-0.336 0.656-0.391t0.742 0.195q1.141 0.852 1.77 2.109t0.629 2.68zM7 1v5q0 0.406-0.297 0.703t-0.703 0.297-0.703-0.297-0.297-0.703v-5q0-0.406 0.297-0.703t0.703-0.297 0.703 0.297 0.297 0.703z"></path></svg>';

		$('a.menu_image11').prepend('<span class="menu_icons">' + svgRestart + '</span>');

	// Icon for STYLESWITCHER
		var svgIcon = '<svg class="svg_icons" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="21px" height="21px" viewBox="99.8 99.8 21 21" enable-background="new 99.8 99.8 21 21" xml:space="preserve"><path d="M108.7,102.8l6.8,7.5l-6.8,7.5l2.7,3l9.5-10.5l-9.5-10.5L108.7,102.8z"/><path d="M102.5,120.8l9.5-10.5l-9.5-10.5l-2.7,3l6.8,7.5l-6.8,7.5L102.5,120.8z"/></svg>';
		var encodedIcon = window.btoa(svgIcon);

		$('#demo_icon').prepend('<span class="menu_icons">' + svgIcon + '</span>');
}

// Icons - create ID and CLASS
	$("#mainmenu li a").each(function (i) {
		var incremental = i + 1;
		$(this).addClass('menu_image' + incremental);
	});
	$("#mainmenu li").each(function (i) {
		var incremental = i + 1;
		$(this).attr('id', 'item' + incremental);
	});

// CreateIcons after first loading page
	CreateIcons();

// ********************************************************************
}});

$(function () { if ($('body').hasClass('original') == true) {
// ********************************************************************
function CreateIcons() {
	// Icon for STYLESWITCHER
		var svgIcon = '<svg class="svg_icons" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="21px" height="21px" viewBox="99.8 99.8 21 21" enable-background="new 99.8 99.8 21 21" xml:space="preserve"><path d="M108.7,102.8l6.8,7.5l-6.8,7.5l2.7,3l9.5-10.5l-9.5-10.5L108.7,102.8z"/><path d="M102.5,120.8l9.5-10.5l-9.5-10.5l-2.7,3l6.8,7.5l-6.8,7.5L102.5,120.8z"/></svg>';

		$('#demo_icon').prepend('<span class="menu_icons">' + svgIcon + '</span>');
}
// CreateIcons for first loading page
	CreateIcons();

// ********************************************************************
}});

/* -------------- GRAPHS FOR ENVI -------------- */

/* IF DOCUMENT READY */ 
$(function(){ 
	// http://www.smashingmagazine.com/2011/09/23/create-an-animated-bar-graph-with-html-css-and-jquery/
	if (document.URL.indexOf('readers.html') > -1) {
			$("#poll").before("<li id='reader_graph' class='configmenu'><a href=''>Graph of readers</a></li>");
	}
});

/* -------------- LIBRARY FOR ENVI -------------- */
	/*! jquery.cookie v1.4.1 | MIT */
	!function(a){"function"==typeof define&&define.amd?define(["jquery"],a):"object"==typeof exports?a(require("jquery")):a(jQuery)}(function(a){function b(a){return h.raw?a:encodeURIComponent(a)}function c(a){return h.raw?a:decodeURIComponent(a)}function d(a){return b(h.json?JSON.stringify(a):String(a))}function e(a){0===a.indexOf('"')&&(a=a.slice(1,-1).replace(/\\"/g,'"').replace(/\\\\/g,"\\"));try{return a=decodeURIComponent(a.replace(g," ")),h.json?JSON.parse(a):a}catch(b){}}function f(b,c){var d=h.raw?b:e(b);return a.isFunction(c)?c(d):d}var g=/\+/g,h=a.cookie=function(e,g,i){if(void 0!==g&&!a.isFunction(g)){if(i=a.extend({},h.defaults,i),"number"==typeof i.expires){var j=i.expires,k=i.expires=new Date;k.setTime(+k+864e5*j)}return document.cookie=[b(e),"=",d(g),i.expires?"; expires="+i.expires.toUTCString():"",i.path?"; path="+i.path:"",i.domain?"; domain="+i.domain:"",i.secure?"; secure":""].join("")}for(var l=e?void 0:{},m=document.cookie?document.cookie.split("; "):[],n=0,o=m.length;o>n;n++){var p=m[n].split("="),q=c(p.shift()),r=p.join("=");if(e&&e===q){l=f(r,g);break}e||void 0===(r=f(r))||(l[q]=r)}return l};h.defaults={},a.removeCookie=function(b,c){return void 0===a.cookie(b)?!1:(a.cookie(b,"",a.extend({},c,{expires:-1})),!a.cookie(b))}});

	/* bootstrap-tooltip.js v2.3.1 */
	!function(c){var b=function(e,d){this.init("boot_tooltip",e,d)};b.prototype={constructor:b,init:function(k,h,f){var l,d,j,e,g;this.type=k;this.$element=c(h);this.options=this.getOptions(f);this.enabled=true;j=this.options.trigger.split(" ");for(g=j.length;g--;){e=j[g];if(e=="click"){this.$element.on("click."+this.type,this.options.selector,c.proxy(this.toggle,this))}else{if(e!="manual"){l=e=="hover"?"mouseenter":"focus";d=e=="hover"?"mouseleave":"blur";this.$element.on(l+"."+this.type,this.options.selector,c.proxy(this.enter,this));this.$element.on(d+"."+this.type,this.options.selector,c.proxy(this.leave,this))}}}this.options.selector?(this._options=c.extend({},this.options,{trigger:"manual",selector:""})):this.fixTitle()},getOptions:function(d){d=c.extend({},c.fn[this.type].defaults,this.$element.data(),d);if(d.delay&&typeof d.delay=="number"){d.delay={show:d.delay,hide:d.delay}}return d},enter:function(h){var g=c.fn[this.type].defaults,f={},d;this._options&&c.each(this._options,function(e,i){if(g[e]!=i){f[e]=i}},this);d=c(h.currentTarget)[this.type](f).data(this.type);if(!d.options.delay||!d.options.delay.show){return d.show()}clearTimeout(this.timeout);d.hoverState="in";this.timeout=setTimeout(function(){if(d.hoverState=="in"){d.show()}},d.options.delay.show)},leave:function(f){var d=c(f.currentTarget)[this.type](this._options).data(this.type);if(this.timeout){clearTimeout(this.timeout)}if(!d.options.delay||!d.options.delay.hide){return d.hide()}d.hoverState="out";this.timeout=setTimeout(function(){if(d.hoverState=="out"){d.hide()}},d.options.delay.hide)},show:function(){var i,k,g,j,d,h,f=c.Event("show");if(this.hasContent()&&this.enabled){this.$element.trigger(f);if(f.isDefaultPrevented()){return}i=this.tip();this.setContent();if(this.options.animation){i.addClass("fade")}d=typeof this.options.placement=="function"?this.options.placement.call(this,i[0],this.$element[0]):this.options.placement;i.detach().css({top:0,left:0,display:"block"});this.options.container?i.appendTo(this.options.container):i.insertAfter(this.$element);k=this.getPosition();g=i[0].offsetWidth;j=i[0].offsetHeight;switch(d){case"bottom":h={top:k.top+k.height,left:k.left+k.width/2-g/2};break;case"top":h={top:k.top-j,left:k.left+k.width/2-g/2};break;case"left":h={top:k.top+k.height/2-j/2,left:k.left-g};break;case"right":h={top:k.top+k.height/2-j/2,left:k.left+k.width};break}this.applyPlacement(h,d);this.$element.trigger("shown")}},applyPlacement:function(g,h){var i=this.tip(),e=i[0].offsetWidth,l=i[0].offsetHeight,d,j,k,f;i.offset(g).addClass(h).addClass("in");d=i[0].offsetWidth;j=i[0].offsetHeight;if(h=="top"&&j!=l){g.top=g.top+l-j;f=true}if(h=="bottom"||h=="top"){k=0;if(g.left<0){k=g.left*-2;g.left=0;i.offset(g);d=i[0].offsetWidth;j=i[0].offsetHeight}this.replaceArrow(k-e+d,d,"left")}else{this.replaceArrow(j-l,j,"top")}if(f){i.offset(g)}},replaceArrow:function(f,e,d){this.arrow().css(d,f?(50*(1-f/e)+"%"):"")},setContent:function(){var e=this.tip(),d=this.getTitle();e.find(".boot_tooltip-inner")[this.options.html?"html":"text"](d);e.removeClass("fade in top bottom left right")},hide:function(){var d=this,g=this.tip(),f=c.Event("hide");this.$element.trigger(f);if(f.isDefaultPrevented()){return}g.removeClass("in");function h(){var e=setTimeout(function(){g.off(c.support.transition.end).detach()},500);g.one(c.support.transition.end,function(){clearTimeout(e);g.detach()})}c.support.transition&&this.$tip.hasClass("fade")?h():g.detach();this.$element.trigger("hidden");return this},fixTitle:function(){var d=this.$element;if(d.attr("title")||typeof(d.attr("data-original-title"))!="string"){d.attr("data-original-title",d.attr("title")||"").attr("title","")}},hasContent:function(){return this.getTitle()},getPosition:function(){var d=this.$element[0];return c.extend({},(typeof d.getBoundingClientRect=="function")?d.getBoundingClientRect():{width:d.offsetWidth,height:d.offsetHeight},this.$element.offset())},getTitle:function(){var f,d=this.$element,e=this.options;f=d.attr("data-original-title")||(typeof e.title=="function"?e.title.call(d[0]):e.title);return f},tip:function(){return this.$tip=this.$tip||c(this.options.template)},arrow:function(){return this.$arrow=this.$arrow||this.tip().find(".boot_tooltip-arrow")},validate:function(){if(!this.$element[0].parentNode){this.hide();this.$element=null;this.options=null}},enable:function(){this.enabled=true},disable:function(){this.enabled=false},toggleEnabled:function(){this.enabled=!this.enabled},toggle:function(f){var d=f?c(f.currentTarget)[this.type](this._options).data(this.type):this;d.tip().hasClass("in")?d.hide():d.show()},destroy:function(){this.hide().$element.off("."+this.type).removeData(this.type)}};var a=c.fn.boot_tooltip;c.fn.boot_tooltip=function(d){return this.each(function(){var g=c(this),f=g.data("boot_tooltip"),e=typeof d=="object"&&d;if(!f){g.data("boot_tooltip",(f=new b(this,e)))}if(typeof d=="string"){f[d]()}})};c.fn.boot_tooltip.Constructor=b;c.fn.boot_tooltip.defaults={animation:true,placement:"top",selector:false,template:'<div class="boot_tooltip"><div class="boot_tooltip-arrow"></div><div class="boot_tooltip-inner"></div></div>',trigger:"hover focus",title:"",delay:0,html:false,container:false};c.fn.boot_tooltip.noConflict=function(){c.fn.boot_tooltip=a;return this}}(window.jQuery);

	/*
	 * jQuery MiniColors: A tiny color picker built on jQuery
	 *
	 * Copyright Cory LaViska for A Beautiful Site, LLC. (http://www.abeautifulsite.net/)
	 *
	 * Licensed under the MIT license: http://opensource.org/licenses/MIT
	 *
	 */
	if(jQuery) (function($) {
		
		// Defaults
		$.minicolors = {
			defaults: {
				animationSpeed: 50,
				animationEasing: 'swing',
				change: null,
				changeDelay: 0,
				control: 'hue',
				defaultValue: '',
				hide: null,
				hideSpeed: 100,
				inline: false,
				letterCase: 'lowercase',
				opacity: false,
				position: 'bottom left',
				show: null,
				showSpeed: 100,
				theme: 'default'
			}
		};
		
		// Public methods
		$.extend($.fn, {
			minicolors: function(method, data) {
				
				switch(method) {
					
					// Destroy the control
					case 'destroy':
						$(this).each( function() {
							destroy($(this));
						});
						return $(this);
					
					// Hide the color picker
					case 'hide':
						hide();
						return $(this);
					
					// Get/set opacity
					case 'opacity':
						// Getter
						if( data === undefined ) {
							// Getter
							return $(this).attr('data-opacity');
						} else {
							// Setter
							$(this).each( function() {
								updateFromInput($(this).attr('data-opacity', data));
							});
						}
						return $(this);
					
					// Get an RGB(A) object based on the current color/opacity
					case 'rgbObject':
						return rgbObject($(this), method === 'rgbaObject');
					
					// Get an RGB(A) string based on the current color/opacity
					case 'rgbString':
					case 'rgbaString':
						return rgbString($(this), method === 'rgbaString');
					
					// Get/set settings on the fly
					case 'settings':
						if( data === undefined ) {
							return $(this).data('minicolors-settings');
						} else {
							// Setter
							$(this).each( function() {
								var settings = $(this).data('minicolors-settings') || {};
								destroy($(this));
								$(this).minicolors($.extend(true, settings, data));
							});
						}
						return $(this);
					
					// Show the color picker
					case 'show':
						show( $(this).eq(0) );
						return $(this);
					
					// Get/set the hex color value
					case 'value':
						if( data === undefined ) {
							// Getter
							return $(this).val();
						} else {
							// Setter
							$(this).each( function() {
								updateFromInput($(this).val(data));
							});
						}
						return $(this);
					
					// Initializes the control
					default:
						if( method !== 'create' ) data = method;
						$(this).each( function() {
							init($(this), data);
						});
						return $(this);
					
				}
				
			}
		});
		
		// Initialize input elements
		function init(input, settings) {
			
			var minicolors = $('<div id="minicolors" class="minicolors" />'),
				defaults = $.minicolors.defaults;
			
			// Do nothing if already initialized
			if( input.data('minicolors-initialized') ) return;
			
			// Handle settings
			settings = $.extend(true, {}, defaults, settings);
			
			// The wrapper
			minicolors
				.addClass('minicolors-theme-' + settings.theme)
				.toggleClass('minicolors-with-opacity', settings.opacity);
			
			// Custom positioning
			if( settings.position !== undefined ) {
				$.each(settings.position.split(' '), function() {
					minicolors.addClass('minicolors-position-' + this);
				});
			}
			
			// The input
			input
				.addClass('minicolors-input')
				.data('minicolors-initialized', false)
				.data('minicolors-settings', settings)
				.prop('size', 7)
				.wrap(minicolors)
				.after(
					'<div class="minicolors-panel minicolors-slider-' + settings.control + '">' + 
						'<div class="minicolors-slider">' + 
							'<div class="minicolors-picker"></div>' +
						'</div>' + 
						'<div class="minicolors-opacity-slider">' + 
							'<div class="minicolors-picker"></div>' +
						'</div>' +
						'<div class="minicolors-grid">' +
							'<div class="minicolors-grid-inner"></div>' +
							'<div class="minicolors-picker"><div></div></div>' +
						'</div>' +
					'</div>'
				);
			
			// The swatch
			if( !settings.inline ) {
				input.after('<span class="minicolors-swatch"><span class="minicolors-swatch-color"></span></span>');
				input.next('.minicolors-swatch').on('click', function(event) {
					event.preventDefault();
					input.focus();
				});
			}
			
			// Prevent text selection in IE
			input.parent().find('.minicolors-panel').on('selectstart', function() { return false; }).end();
			
			// Inline controls
			if( settings.inline ) input.parent().addClass('minicolors-inline');
			
			updateFromInput(input, false);
			
			input.data('minicolors-initialized', true);
			
		}
		
		// Returns the input back to its original state
		function destroy(input) {
			
			var minicolors = input.parent();
			
			// Revert the input element
			input
				.removeData('minicolors-initialized')
				.removeData('minicolors-settings')
				.removeProp('size')
				.removeClass('minicolors-input');
			
			// Remove the wrap and destroy whatever remains
			minicolors.before(input).remove();
			
		}
		
		// Shows the specified dropdown panel
		function show(input) {
			
			var minicolors = input.parent(),
				panel = minicolors.find('.minicolors-panel'),
				settings = input.data('minicolors-settings');
			
			// Do nothing if uninitialized, disabled, inline, or already open
			if( !input.data('minicolors-initialized') || 
				input.prop('disabled') || 
				minicolors.hasClass('minicolors-inline') || 
				minicolors.hasClass('minicolors-focus')
			) return;
			
			hide();
			
			minicolors.addClass('minicolors-focus');
			panel
				.stop(true, true)
				.fadeIn(settings.showSpeed, function() {
					if( settings.show ) settings.show.call(input.get(0));
				});
			
		}
		
		// Hides all dropdown panels
		function hide() {
			
			$('.minicolors-input').each( function() {
				
				var input = $(this),
					settings = input.data('minicolors-settings'),
					minicolors = input.parent();
				
				// Don't hide inline controls
				if( settings.inline ) return;
				
				minicolors.find('.minicolors-panel').fadeOut(settings.hideSpeed, function() {
					if(minicolors.hasClass('minicolors-focus')) {
						if( settings.hide ) settings.hide.call(input.get(0));
					}
					minicolors.removeClass('minicolors-focus');
				});			
							
			});
		}
		
		// Moves the selected picker
		function move(target, event, animate) {
			
			var input = target.parents('.minicolors').find('.minicolors-input'),
				settings = input.data('minicolors-settings'),
				picker = target.find('[class$=-picker]'),
				offsetX = target.offset().left,
				offsetY = target.offset().top,
				x = Math.round(event.pageX - offsetX),
				y = Math.round(event.pageY - offsetY),
				duration = animate ? settings.animationSpeed : 0,
				wx, wy, r, phi;
				
			
			// Touch support
			if( event.originalEvent.changedTouches ) {
				x = event.originalEvent.changedTouches[0].pageX - offsetX;
				y = event.originalEvent.changedTouches[0].pageY - offsetY;
			}
			
			// Constrain picker to its container
			if( x < 0 ) x = 0;
			if( y < 0 ) y = 0;
			if( x > target.width() ) x = target.width();
			if( y > target.height() ) y = target.height();
			
			// Constrain color wheel values to the wheel
			if( target.parent().is('.minicolors-slider-wheel') && picker.parent().is('.minicolors-grid') ) {
				wx = 75 - x;
				wy = 75 - y;
				r = Math.sqrt(wx * wx + wy * wy);
				phi = Math.atan2(wy, wx);
				if( phi < 0 ) phi += Math.PI * 2;
				if( r > 75 ) {
					r = 75;
					x = 75 - (75 * Math.cos(phi));
					y = 75 - (75 * Math.sin(phi));
				}
				x = Math.round(x);
				y = Math.round(y);
			}
			
			// Move the picker
			if( target.is('.minicolors-grid') ) {
				picker
					.stop(true)
					.animate({
						top: y + 'px',
						left: x + 'px'
					}, duration, settings.animationEasing, function() {
						updateFromControl(input, target);
					});
			} else {
				picker
					.stop(true)
					.animate({
						top: y + 'px'
					}, duration, settings.animationEasing, function() {
						updateFromControl(input, target);
					});
			}
			
		}
		
		// Sets the input based on the color picker values
		function updateFromControl(input, target) {
			
			function getCoords(picker, container) {
				
				var left, top;
				if( !picker.length || !container ) return null;
				left = picker.offset().left;
				top = picker.offset().top;
				
				return {
					x: left - container.offset().left + (picker.outerWidth() / 2),
					y: top - container.offset().top + (picker.outerHeight() / 2)
				};
				
			}
			
			var hue, saturation, brightness, x, y, r, phi,
				
				hex = input.val(),
				opacity = input.attr('data-opacity'),
				
				// Helpful references
				minicolors = input.parent(),
				settings = input.data('minicolors-settings'),
				swatch = minicolors.find('.minicolors-swatch'),
				
				// Panel objects
				grid = minicolors.find('.minicolors-grid'),
				slider = minicolors.find('.minicolors-slider'),
				opacitySlider = minicolors.find('.minicolors-opacity-slider'),
				
				// Picker objects
				gridPicker = grid.find('[class$=-picker]'),
				sliderPicker = slider.find('[class$=-picker]'),
				opacityPicker = opacitySlider.find('[class$=-picker]'),
				
				// Picker positions
				gridPos = getCoords(gridPicker, grid),
				sliderPos = getCoords(sliderPicker, slider),
				opacityPos = getCoords(opacityPicker, opacitySlider);
			
			// Handle colors
			if( target.is('.minicolors-grid, .minicolors-slider') ) {
				
				// Determine HSB values
				switch(settings.control) {
					
					case 'wheel':
						// Calculate hue, saturation, and brightness
						x = (grid.width() / 2) - gridPos.x;
						y = (grid.height() / 2) - gridPos.y;
						r = Math.sqrt(x * x + y * y);
						phi = Math.atan2(y, x);
						if( phi < 0 ) phi += Math.PI * 2;
						if( r > 75 ) {
							r = 75;
							gridPos.x = 69 - (75 * Math.cos(phi));
							gridPos.y = 69 - (75 * Math.sin(phi));
						}
						saturation = keepWithin(r / 0.75, 0, 100);
						hue = keepWithin(phi * 180 / Math.PI, 0, 360);
						brightness = keepWithin(100 - Math.floor(sliderPos.y * (100 / slider.height())), 0, 100);
						hex = hsb2hex({
							h: hue,
							s: saturation,
							b: brightness
						});
						
						// Update UI
						slider.css('backgroundColor', hsb2hex({ h: hue, s: saturation, b: 100 }));
						break;
					
					case 'saturation':
						// Calculate hue, saturation, and brightness
						hue = keepWithin(parseInt(gridPos.x * (360 / grid.width()), 10), 0, 360);
						saturation = keepWithin(100 - Math.floor(sliderPos.y * (100 / slider.height())), 0, 100);
						brightness = keepWithin(100 - Math.floor(gridPos.y * (100 / grid.height())), 0, 100);
						hex = hsb2hex({
							h: hue,
							s: saturation,
							b: brightness
						});
						
						// Update UI
						slider.css('backgroundColor', hsb2hex({ h: hue, s: 100, b: brightness }));
						minicolors.find('.minicolors-grid-inner').css('opacity', saturation / 100);
						break;
					
					case 'brightness':
						// Calculate hue, saturation, and brightness
						hue = keepWithin(parseInt(gridPos.x * (360 / grid.width()), 10), 0, 360);
						saturation = keepWithin(100 - Math.floor(gridPos.y * (100 / grid.height())), 0, 100);
						brightness = keepWithin(100 - Math.floor(sliderPos.y * (100 / slider.height())), 0, 100);
						hex = hsb2hex({
							h: hue,
							s: saturation,
							b: brightness
						});
						
						// Update UI
						slider.css('backgroundColor', hsb2hex({ h: hue, s: saturation, b: 100 }));
						minicolors.find('.minicolors-grid-inner').css('opacity', 1 - (brightness / 100));
						break;
					
					default:
						// Calculate hue, saturation, and brightness
						hue = keepWithin(360 - parseInt(sliderPos.y * (360 / slider.height()), 10), 0, 360);
						saturation = keepWithin(Math.floor(gridPos.x * (100 / grid.width())), 0, 100);
						brightness = keepWithin(100 - Math.floor(gridPos.y * (100 / grid.height())), 0, 100);
						hex = hsb2hex({
							h: hue,
							s: saturation,
							b: brightness
						});
						
						// Update UI
						grid.css('backgroundColor', hsb2hex({ h: hue, s: 100, b: 100 }));
						break;
					
				}
			
				// Adjust case
				input.val( convertCase(hex, settings.letterCase) );
				
			}
			
			// Handle opacity
			if( target.is('.minicolors-opacity-slider') ) {
				if( settings.opacity ) {
					opacity = parseFloat(1 - (opacityPos.y / opacitySlider.height())).toFixed(2);
				} else {
					opacity = 1;
				}
				if( settings.opacity ) input.attr('data-opacity', opacity);
			}
			
			// Set swatch color
			swatch.find('SPAN').css({
				backgroundColor: hex,
				opacity: opacity
			});
			
			// Handle change event
			doChange(input, hex, opacity);
			
		}
		
		// Sets the color picker values from the input
		function updateFromInput(input, preserveInputValue) {
			
			var hex,
				hsb,
				opacity,
				x, y, r, phi,
				
				// Helpful references
				minicolors = input.parent(),
				settings = input.data('minicolors-settings'),
				swatch = minicolors.find('.minicolors-swatch'),
				
				// Panel objects
				grid = minicolors.find('.minicolors-grid'),
				slider = minicolors.find('.minicolors-slider'),
				opacitySlider = minicolors.find('.minicolors-opacity-slider'),
				
				// Picker objects
				gridPicker = grid.find('[class$=-picker]'),
				sliderPicker = slider.find('[class$=-picker]'),
				opacityPicker = opacitySlider.find('[class$=-picker]');
			
			// Determine hex/HSB values
			hex = convertCase(parseHex(input.val(), true), settings.letterCase);
			if( !hex ){
				hex = convertCase(parseHex(settings.defaultValue, true), settings.letterCase);
			}
			hsb = hex2hsb(hex);
			
			// Update input value
			if( !preserveInputValue ) input.val(hex);
			
			// Determine opacity value
			if( settings.opacity ) {
				// Get from data-opacity attribute and keep within 0-1 range
				opacity = input.attr('data-opacity') === '' ? 1 : keepWithin(parseFloat(input.attr('data-opacity')).toFixed(2), 0, 1);
				if( isNaN(opacity) ) opacity = 1;
				input.attr('data-opacity', opacity);
				swatch.find('SPAN').css('opacity', opacity);
				
				// Set opacity picker position
				y = keepWithin(opacitySlider.height() - (opacitySlider.height() * opacity), 0, opacitySlider.height());
				opacityPicker.css('top', y + 'px');
			}
			
			// Update swatch
			swatch.find('SPAN').css('backgroundColor', hex);
			
			// Determine picker locations
			switch(settings.control) {
				
				case 'wheel':
					// Set grid position
					r = keepWithin(Math.ceil(hsb.s * 0.75), 0, grid.height() / 2);
					phi = hsb.h * Math.PI / 180;
					x = keepWithin(75 - Math.cos(phi) * r, 0, grid.width());
					y = keepWithin(75 - Math.sin(phi) * r, 0, grid.height());
					gridPicker.css({
						top: y + 'px',
						left: x + 'px'
					});
					
					// Set slider position
					y = 150 - (hsb.b / (100 / grid.height()));
					if( hex === '' ) y = 0;
					sliderPicker.css('top', y + 'px');
					
					// Update panel color
					slider.css('backgroundColor', hsb2hex({ h: hsb.h, s: hsb.s, b: 100 }));
					break;
				
				case 'saturation':
					// Set grid position
					x = keepWithin((5 * hsb.h) / 12, 0, 150);
					y = keepWithin(grid.height() - Math.ceil(hsb.b / (100 / grid.height())), 0, grid.height());
					gridPicker.css({
						top: y + 'px',
						left: x + 'px'
					});				
					
					// Set slider position
					y = keepWithin(slider.height() - (hsb.s * (slider.height() / 100)), 0, slider.height());
					sliderPicker.css('top', y + 'px');
					
					// Update UI
					slider.css('backgroundColor', hsb2hex({ h: hsb.h, s: 100, b: hsb.b }));
					minicolors.find('.minicolors-grid-inner').css('opacity', hsb.s / 100);
					break;
				
				case 'brightness':
					// Set grid position
					x = keepWithin((5 * hsb.h) / 12, 0, 150);
					y = keepWithin(grid.height() - Math.ceil(hsb.s / (100 / grid.height())), 0, grid.height());
					gridPicker.css({
						top: y + 'px',
						left: x + 'px'
					});				
					
					// Set slider position
					y = keepWithin(slider.height() - (hsb.b * (slider.height() / 100)), 0, slider.height());
					sliderPicker.css('top', y + 'px');
					
					// Update UI
					slider.css('backgroundColor', hsb2hex({ h: hsb.h, s: hsb.s, b: 100 }));
					minicolors.find('.minicolors-grid-inner').css('opacity', 1 - (hsb.b / 100));
					break;
				
				default:
					// Set grid position
					x = keepWithin(Math.ceil(hsb.s / (100 / grid.width())), 0, grid.width());
					y = keepWithin(grid.height() - Math.ceil(hsb.b / (100 / grid.height())), 0, grid.height());
					gridPicker.css({
						top: y + 'px',
						left: x + 'px'
					});
					
					// Set slider position
					y = keepWithin(slider.height() - (hsb.h / (360 / slider.height())), 0, slider.height());
					sliderPicker.css('top', y + 'px');
					
					// Update panel color
					grid.css('backgroundColor', hsb2hex({ h: hsb.h, s: 100, b: 100 }));
					break;
					
			}
			
			// Fire change event, but only if minicolors is fully initialized
			if( input.data('minicolors-initialized') ) {
				doChange(input, hex, opacity);
			}
			
		}
		
		// Runs the change and changeDelay callbacks
		function doChange(input, hex, opacity) {
			
			var settings = input.data('minicolors-settings'),
				lastChange = input.data('minicolors-lastChange');
			
			// Only run if it actually changed
			if( !lastChange || lastChange.hex !== hex || lastChange.opacity !== opacity ) {
				
				// Remember last-changed value
				input.data('minicolors-lastChange', {
					hex: hex,
					opacity: opacity
				});
				
				// Fire change event
				if( settings.change ) {
					if( settings.changeDelay ) {
						// Call after a delay
						clearTimeout(input.data('minicolors-changeTimeout'));
						input.data('minicolors-changeTimeout', setTimeout( function() {
							settings.change.call(input.get(0), hex, opacity);
						}, settings.changeDelay));
					} else {
						// Call immediately
						settings.change.call(input.get(0), hex, opacity);
					}
				}
				input.trigger('change').trigger('input');
			}
		
		}
		
		// Generates an RGB(A) object based on the input's value
		function rgbObject(input) {
			var hex = parseHex($(input).val(), true),
				rgb = hex2rgb(hex),
				opacity = $(input).attr('data-opacity');
			if( !rgb ) return null;
			if( opacity !== undefined ) $.extend(rgb, { a: parseFloat(opacity) });
			return rgb;
		}
		
		// Genearates an RGB(A) string based on the input's value
		function rgbString(input, alpha) {
			var hex = parseHex($(input).val(), true),
				rgb = hex2rgb(hex),
				opacity = $(input).attr('data-opacity');
			if( !rgb ) return null;
			if( opacity === undefined ) opacity = 1;
			if( alpha ) {
				return 'rgba(' + rgb.r + ', ' + rgb.g + ', ' + rgb.b + ', ' + parseFloat(opacity) + ')';
			} else {
				return 'rgb(' + rgb.r + ', ' + rgb.g + ', ' + rgb.b + ')';
			}
		}
		
		// Converts to the letter case specified in settings
		function convertCase(string, letterCase) {
			return letterCase === 'uppercase' ? string.toUpperCase() : string.toLowerCase();
		}
		
		// Parses a string and returns a valid hex string when possible
		function parseHex(string, expand) {
			string = string.replace(/[^A-F0-9]/ig, '');
			if( string.length !== 3 && string.length !== 6 ) return '';
			if( string.length === 3 && expand ) {
				string = string[0] + string[0] + string[1] + string[1] + string[2] + string[2];
			}
			return '#' + string;
		}
		
		// Keeps value within min and max
		function keepWithin(value, min, max) {
			if( value < min ) value = min;
			if( value > max ) value = max;
			return value;
		}
		
		// Converts an HSB object to an RGB object
		function hsb2rgb(hsb) {
			var rgb = {};
			var h = Math.round(hsb.h);
			var s = Math.round(hsb.s * 255 / 100);
			var v = Math.round(hsb.b * 255 / 100);
			if(s === 0) {
				rgb.r = rgb.g = rgb.b = v;
			} else {
				var t1 = v;
				var t2 = (255 - s) * v / 255;
				var t3 = (t1 - t2) * (h % 60) / 60;
				if( h === 360 ) h = 0;
				if( h < 60 ) { rgb.r = t1; rgb.b = t2; rgb.g = t2 + t3; }
				else if( h < 120 ) {rgb.g = t1; rgb.b = t2; rgb.r = t1 - t3; }
				else if( h < 180 ) {rgb.g = t1; rgb.r = t2; rgb.b = t2 + t3; }
				else if( h < 240 ) {rgb.b = t1; rgb.r = t2; rgb.g = t1 - t3; }
				else if( h < 300 ) {rgb.b = t1; rgb.g = t2; rgb.r = t2 + t3; }
				else if( h < 360 ) {rgb.r = t1; rgb.g = t2; rgb.b = t1 - t3; }
				else { rgb.r = 0; rgb.g = 0; rgb.b = 0; }
			}
			return {
				r: Math.round(rgb.r),
				g: Math.round(rgb.g),
				b: Math.round(rgb.b)
			};
		}
		
		// Converts an RGB object to a hex string
		function rgb2hex(rgb) {
			var hex = [
				rgb.r.toString(16),
				rgb.g.toString(16),
				rgb.b.toString(16)
			];
			$.each(hex, function(nr, val) {
				if (val.length === 1) hex[nr] = '0' + val;
			});
			return '#' + hex.join('');
		}
		
		// Converts an HSB object to a hex string
		function hsb2hex(hsb) {
			return rgb2hex(hsb2rgb(hsb));
		}
		
		// Converts a hex string to an HSB object
		function hex2hsb(hex) {
			var hsb = rgb2hsb(hex2rgb(hex));
			if( hsb.s === 0 ) hsb.h = 360;
			return hsb;
		}
		
		// Converts an RGB object to an HSB object
		function rgb2hsb(rgb) {
			var hsb = { h: 0, s: 0, b: 0 };
			var min = Math.min(rgb.r, rgb.g, rgb.b);
			var max = Math.max(rgb.r, rgb.g, rgb.b);
			var delta = max - min;
			hsb.b = max;
			hsb.s = max !== 0 ? 255 * delta / max : 0;
			if( hsb.s !== 0 ) {
				if( rgb.r === max ) {
					hsb.h = (rgb.g - rgb.b) / delta;
				} else if( rgb.g === max ) {
					hsb.h = 2 + (rgb.b - rgb.r) / delta;
				} else {
					hsb.h = 4 + (rgb.r - rgb.g) / delta;
				}
			} else {
				hsb.h = -1;
			}
			hsb.h *= 60;
			if( hsb.h < 0 ) {
				hsb.h += 360;
			}
			hsb.s *= 100/255;
			hsb.b *= 100/255;
			return hsb;
		}
		
		// Converts a hex string to an RGB object
		function hex2rgb(hex) {
			hex = parseInt(((hex.indexOf('#') > -1) ? hex.substring(1) : hex), 16);
			return {
				r: hex >> 16,
				g: (hex & 0x00FF00) >> 8,
				b: (hex & 0x0000FF)
			};
		}
		
		// Handle events
		$(document)
			// Hide on clicks outside of the control
			.on('mousedown.minicolors touchstart.minicolors', function(event) {
				if( !$(event.target).parents().add(event.target).hasClass('minicolors') ) {
					hide();
				}
			})
			// Start moving
			.on('mousedown.minicolors touchstart.minicolors', '.minicolors-grid, .minicolors-slider, .minicolors-opacity-slider', function(event) {
				var target = $(this);
				event.preventDefault();
				$(document).data('minicolors-target', target);
				move(target, event, true);
			})
			// Move pickers
			.on('mousemove.minicolors touchmove.minicolors', function(event) {
				var target = $(document).data('minicolors-target');
				if( target ) move(target, event);
			})
			// Stop moving
			.on('mouseup.minicolors touchend.minicolors', function() {
				$(this).removeData('minicolors-target');
			})
			// Show panel when swatch is clicked
			.on('mousedown.minicolors touchstart.minicolors', '.minicolors-swatch', function(event) {
				var input = $(this).parent().find('.minicolors-input');
				event.preventDefault();
				show(input);
			})
			// Show on focus
			.on('focus.minicolors', '.minicolors-input', function() {
				var input = $(this);
				if( !input.data('minicolors-initialized') ) return;
				show(input);
			})
			// Fix hex on blur
			.on('blur.minicolors', '.minicolors-input', function() {
				var input = $(this),
					settings = input.data('minicolors-settings');
				if( !input.data('minicolors-initialized') ) return;
				
				// Parse Hex
				input.val(parseHex(input.val(), true));
				
				// Is it blank?
				if( input.val() === '' ) input.val(parseHex(settings.defaultValue, true));
				
				// Adjust case
				input.val( convertCase(input.val(), settings.letterCase) );
				
			})
			// Handle keypresses
			.on('keydown.minicolors', '.minicolors-input', function(event) {
				var input = $(this);
				if( !input.data('minicolors-initialized') ) return;
				switch(event.keyCode) {
					case 9: // tab
						hide();
						break;
					case 13: // enter
					case 27: // esc
						hide();
						input.blur();
						break;
				}
			})
			// Update on keyup
			.on('keyup.minicolors', '.minicolors-input', function() {
				var input = $(this);
				if( !input.data('minicolors-initialized') ) return;
				updateFromInput(input, true);
			})
			// Update on paste
			.on('paste.minicolors', '.minicolors-input', function() {
				var input = $(this);
				if( !input.data('minicolors-initialized') ) return;
				setTimeout( function() {
					updateFromInput(input, true);
				}, 1);
			});
		
	})(jQuery);
