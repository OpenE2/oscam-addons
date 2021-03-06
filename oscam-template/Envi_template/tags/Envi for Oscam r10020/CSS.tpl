/* 
 * Envi Template - Template with responsive design
 *
 * Author skyndas for Streamboard Team
 */

/* CONTENT
=====================================
	###### ORIGINAL WEBIF from STREAMBOARD

	###### ENVI TEMPLATE WEBIF for STREAMBOARD
		== CORRECTION ORIGINAL WEBIF FOR ENVI TEMPLATE

		== ENVI TEMPLATE
*/

/* ################################# ORIGINAL WEBIF from STREAMBOARD #################################
 * Table of Content
=====================================
	# 1. RESET
	# 2. BASIC DIVISION PAGES
	# 3. BASIC SETTINGS
	# 4. LINKS
	# 5. MAIN MENU
	# 6. SUBNAV
	# 7. TABLE
		- STATUS
		- CONFIG
		- READERS
		- USERS
		- SERVICES
		- FAILBAN
		- CACHEEX
		- OTHER TABLES
	# 8. TABLE TR
	# 9. TABLE TH
	# 10. TABLE TD
	# 11. DIV
	# 12. TEXTAREA,SELECT,INPUT
	# 13. IMAGE
	# 14. SPAN
	# 15. GRAPH
	# 16. SORTING IN TABLE
	# 17. POLLING
	# 18. ECM BAR HISTORY
	# 19. FILE MENU
	# 20. OTHER SETTINGS
===================================== */

/* **************** 1. RESET  */
* {margin:0;padding:0}

/* **************** 2. BASIC DIVISION PAGES */
html,body,* html #wrapper {height:100%}
#wrapper {position:relative;min-height:100%}
#content {margin-bottom:0;padding:0 8px 115px}
#footer {position:absolute;bottom:0;width:100%}

/* **************** 3. BASIC SETTINGS - BODY,P,H4,LI,B */
body {
	font-family:Arial;
	font-size:11px;
	text-align:center;
	background-color:#FFF;
	color:#000;
	text-decoration:none
}
/* pre_shutdown.html */
h4 {
	font-size:18px;
	line-height:9px;
	margin:20px 0;
	color:#F00
}
/* shutdown.html, autoconf.html */
p.text-large-red {
	font-weight:700;
	font-size:large;
	color:red
}
/* file.html, script.html */
#filename,#filesubmit {
	font-weight:700;
	font-size:14px
}
#filesubmit {
	height:20px
}
li {
	list-style:none
}
/* readerstats.html for P */
#text_totalecm {
	font-weight:bold;
	margin-top:5px
}
/* footer.html */
li.styleauthor:after {
	content:"Streamboard Team"
}
/* Solution for vertical align in tbody.statusecminfo */
tbody.statusecminfo tr:nth-child(5) td:last-child b {
	position:relative;
	top:1px
}

/* **************** 4. LINKS */
a {
	text-decoration:none;
}
a:link, a:visited, a:active {
	color:#050840
}
a:hover {
	color:#FF9E5F
}
/* logpage_debugmenu.html */
a.debugl:link {
	margin:0 1px
}
a.debugl:hover, a.debugs:hover {
	background-color:#A00;
	color:#FFF
}
/* module-webif.c  */
a.debugls:link {
	padding:1px 2px 2px
}
a.debugls:link, a.debugls:visited {
	background-color:#A00;
	color:#FFF
}
/* cccamentitletooltip.html, foundentitlements.html, noentitlements.html and module-webif.c */
a.tooltip,
a.tooltip1 {
	position:relative;
	cursor:default
}
a.tooltip span,
a.tooltip1 span {
	display:none;
	z-index:99;
	white-space:nowrap
}
a.tooltip1 {
	color:red
}
a:hover span {
	display:block;
	position:absolute;
	top:1em;
	right:2em;
	padding:4px;
	font-weight:normal;
	text-align:left;
	background-color:#FFC;
	border:1px solid #000;
	color:#000
}
a img.icon {
	background-color:#A00
}
a:hover img.icon {
	background-color:red
}
span a {
	text-align:center
}
td.statuscol4 a,
td.statuscol9 a,
td.statuscol13 a {
	text-align:center
}
/* module-webif.c class for services.html */
div.sidlistclose a {
	padding:0 3px;
	color:#FFF
}
/* help link readers/servicesedit/useredit/config.html */
form table a {
	cursor:pointer
}

/* **************** 5. MAIN MENU */
#main {}
#mainmenu {
	height:27px;
	padding-top:6px;
	white-space:nowrap;
	display:inline-block;
	position:relative;
	background-color:#FFF
}
#mainmenu li {
	display:inline;
	margin:0 2px;
	padding:4px 3px 3px;
	font-size:18px;
	font-weight:700
}
li.menu a,li.menu a:hover,
li.menu_selected a,li.menu_selected a:hover {
	color:#050840
}
li.menu:hover, li.menu_selected, 
li.configmenu:hover, li.configmenu_selected {
	background-color:#DDD
}

/* **************** 6. SUBNAV */
#subnav {}
#nav {
	height:22px;
	white-space:nowrap
}
#nav li {
	display:inline-block;
	position:relative;
	margin:0 2px;
	padding:0 3px;
	font-size:14px
}
li.configmenu a, li.configmenu a:hover,
li.configmenu_selected a, li.configmenu_selected a:hover {
	color:#050840
}

/* **************** 7. TABLE */
table {
	border-spacing:1px;
	border:0;
	margin:0 auto
}

/* ------- STATUS ------- */
/* status.html */
table.status {
	width:100%;
	empty-cells:show;
	background-color:#FFF
}
/* Table statusmeminfo	- in status_systeminfo.html
 * Table statususerinfo	- in status_userinfo.html
 * Table statuscacheexinfo	- in status_cacheexinfo.html
 */
table.infotable {
	width:60%;
	white-space:nowrap
}

/* ------- CONFIG ------- */
/* for all part in CONFIGURATION item */
/* include readerconfig.html & user_edit.html */
table.config, table.configreader,table.configuser {
	width:80%;
 	margin-bottom:-1px;
	max-width:610px;
	white-space:nowrap
}

/* ------- READERS ------- */
/* readers.html */
table.readers {
	width:100%
}
#newreader table, #searchTable table.readers {
	border-spacing:1px 0px;
	margin-top:1px
}
/* entitlements_bit.html, entitlements_cccambit.html */
table.stats {}
/* emm.html */
table.writeemm {}
/* emm_running.html */
table.emmrunning {}
/* readerstats.html */
table.statsbalance td:last-child {
	line-height:20px;
	width:125px
}
table.statsbalance td:last-child img.icon {
	float:right;
	margin-left:10px
}

/* ------- USERS ------- */
/* userconfig.html */
table.users {
	width:100%
}
#newuser table, #searchTable table.users {
	border-spacing:1px 0px;
	margin-top:1px
}

/* ------- SERVICES ------- */
/* services.html */
#addnewservice,#servicesedit,table.configservices {
	width:40%;
	max-width:510px;
	text-align:center
}
#addnewservice {
	border-spacing:1px 0px;
	margin-top:1px
}
/* services_edit.html */
table.configservices {
 	margin-bottom:-1px;
	text-align:left
}

/* ------- FAILBAN ------- */
/* failban.html */
table.failban {}

/* ------- CACHEEX ------- */
/* cacheex.html */
table.cacheex, table#dataTable.stats {
	width:80%
}
table#cachexstats {
	width:50%;
	max-width:1300px;
	white-space:nowrap;
	margin:20px auto 0
}

/* ------- OTHER TABLES ------- */
/* for settings in configuration of readers and users */
/* inline table in config, readerconfig.html & user_edit.html */
.invisible table {
	border-spacing:0; 
	margin-left:0
}
/* user_edit.html, readerconfig.html */
td.subservice {}
table.subservicetable {
	width:100%;
	background-color:#FFF
}

/* **************** 8. TABLE TR */
/* for entitlement of readers */
tr.e_valid td, tr.e_expired td, tr.e_header td {
	font-family:"Courier New", monospace
}
/* hiding formatline for width of firstrow in config, readers and users / width in info */
tr.configfirstrow, tr.configfirstrow td,
tr.infocolswidth, tr.infocolswidth td, tr.infocolswidth th {
	border:0;
	height:0;
	padding:0
}
/* rowcolors for cacheex rows in cachex depend on status */
tr.e_valid td {background-color:#E6FEBF}
tr.e_expired td {background-color:#FFF3E7}
/* rowcolors for users rows in unserconfig.html depend on status */
tr.online td.usercol6 {background-color:#949494;color:#FFF}
tr.online td {background-color:#BFA}
tr.offline td {}
tr.expired td {background-color:#FBA}
tr.connected td {background-color:#FFA}
tr.disabled td {}
tr.disabled td:first-child img.icon,
tr.disabledreader td:first-child img.icon {background-color:#0A0}
/* colors for status rows in status.html depend on status */
tr.a td {background-color:#3F0}
tr.c td {background-color:#F1F5E6}
tr.s td, tr.l td,
tr.n td,tr.h td {background-color:#E1E1EF}
tr.r td {background-color:#FFF3E7}
tr.p td, tr.scanusbsubhead td {background-color:#FDFBE1}

/* **************** 9. TABLE TH */
th {
	height:10px;
	padding:5px;
	background-color:#CCC
}
th.right {
	text-align:right
}
/* status_cacheexinfo.html, status_systeminfo.html, status_userinfo.html */
th.nameinfo {
	text-transform:uppercase;
	text-align:left;
	background-color:#999
}
th .nameinfo_second {
	text-transform:none;
	font-weight:normal
}
table.infotable th:first-child {
	width:100px
}
/* status.html */
th.statuscol0 {
	width:0
}
/* readerconfig.html */
th.withservices, th.notservices, th.lbservices {}

/* **************** 10. TABLE TD */
td {
	height:10px;
	text-align:left;
	padding:5px;
	background-color:#EEE
}
/* width of firstrow in config, readers and users */
.configfirstrow td:first-child {
	width:140px
}
/* height config, readers and users */
.config td, .configreader td, .configuser td {
	height:22px
}
/* for inline table in config, user_edit.html, readerconfig.html */
td.subservice, td.invisible {
	padding:0px
}
/* services.html */
#servicesedit td {
	text-align:center
}
/* readerstatsnotfound.html, readerstatstimeoutbit.html
 * status_*headline.html */
td.subheadline {
	height:10px;
	padding:5px;
	background-color:#CCC;
	text-align:center
}
td.subheadline p {
	float:left;
	text-align:left;
	font-weight:bold;
	margin-top:4px
}
/* default alignment for all rows status.html/userconfig.html/readers.html */
td.centered,
td[class*='statuscol'],		/* shorthand notation td[class*='statuscol'] for  td.statuscol0 -  td.statuscol16 */
td[class*='usercol'],		/* shorthand notation td[class*='usercol'] for  td.usercol0 -  td.usercol25 */
td[class*='readercol'] {	/* shorthand notation td[class*='readercol'] for  td.readercol0 -  td.readercol17 */
	text-align:center
}
td.statuscol0 {
	width:10px
}
td.statuscol1 {
	width:0
}
.usercol1 img{
	vertical-align:middle
}
/* readerconfig_sidokbit.html */
td.servicescol1, td.servicescol2, td.servicescol3 {
	width:30%
}
/* Actionbutton readers.html */
td.readercol13,td.readercol14,
td.readercol15 {
	min-width:22px
}
/* cols width info status and users.html */
.infocolswidth td {
	width:7.5%
}

/* **************** 11. DIV */
/* Log status.html, livelog.html, file.html */
div.log, div#livelog, textarea.editor, div.sidlist {
	font-family:"Courier New", monospace;
	text-align:left;
	border:1px dotted #AAA;
	background-color:#FAFAFA;
	color:#666
}
div.log {
	margin:20px 0 0;
	padding:4px
}
/* module-webif.c class for services.html */
div.sidlist {
	padding:2px;
	background-color:#FFFDF5
}
div.sidlistclose {
	float:right;
	background-color:red;
	color:#FFF
}
/* message.html */
div.message {
	font-size:12px;
	font-weight:700;
	margin:5px 0
}
/* file.html */
div.filterform {
	margin:5px 0
}
/* pre_autoconf.html, pre_shutdown.html */
div.warning {
	margin:42px 0 14px
}
/* logobit.html - Logo for Oscam */
div.logo {
	position:absolute;
	top:6px;
	left:9px;
	z-index:0
}
/* READERS and USERS items */
div.groups {
	cursor:default;
	overflow:hidden;
	margin:0 auto;
	text-align:center;
	word-wrap:normal;
	width:40px
}
/* footer.html */
div.footer {
	background-color:#EEE;
	border-top:3px solid #CCC
}
div.footer li {
	margin:5px
}
/* status.html, main DIV for statistics info */
div.info {
	max-width:1300px;
	white-space:nowrap;
	margin:14px auto 0
}
/* debugmenu	- status_sdebug.html
 * logmenu		- file.html
*/
div.debugmenu, div.logmenu {
	font-size:12px;
	line-height:16px;
	margin-top:10px
}
#regexdatainput {
	margin-top:10px
}
/* entitlements_cccambit.html */
div.cccamentitlementtotals,
div.cccamentitlementcontrols {
	font-weight:bold;
	margin-top:5px
}
/* definition only for show or hide columns or DIV
 * #newuser		- in userconfig.html
 * #newreader	- in readers.html
 * #exp, #cwc, #acasc - only in module-webif.c for show/hide columns in userconfig.html
 */
#newuser, #newreader,
.exp, .cwc, .acas, .grp, .hidden {
	display:none
}

/* **************** 12. TEXTAREA,SELECT,INPUT */
/* texteditor in file.html */
textarea.editor {
	font-size:11px;
	width:100%;
	max-width:1500px;
	height:556px;
	margin:0 auto 10px;
	padding:4px
}
/* textarea for config */
textarea.bt {
	width:380px; 
	font-size:12px
}
/* generaly settings for all select */
select {
	padding:2px
}
/* generaly settings for all input */
input,textarea {
	-moz-box-sizing:border-box;
	box-sizing:border-box
}
/* generaly settings for all checkbox input */
input[type=checkbox] {
	cursor:pointer
}
/* generaly settings for all text input */
input[type=text] {
	padding:2px;
	width:380px
}
input.short[type=text] {
	width:52px
}
input.colorinput[type=text] {
    width:60px
}
input.medium[type=text] {
	width:125px
}
input.longer[type=text] {
	width:220px
}
.readers input[type=text],
#addnewservice input[type=text],
.users input[type=text],
.cacheex input[type=text] {
	text-align:center;
	background-color:#F8F8F8;
	width:180px
}
/* all config input they are with units e.g. sec or min in config.html */
input.withunit {
	text-align:left
}
/* solution for align vertical checkbox with text */
input[type=checkbox] {
	vertical-align:text-bottom;
	_vertical-align:middle;
	margin-right:5px
}
/* generaly settings for all buttons/submits */
input[type=button], input[type=submit] {
	-webkit-appearance:none;
	border-radius:3px;
	border:1px solid #AAA;
	cursor:pointer;
	text-align:center;
	padding:0 2px;
	margin:0 3px;
	display:inline-block;
	width:70px;
	height:20px;
	color:#333;
	background-color:#F8F8F8
}

/* generaly hover settings for all buttons/submits */
input[type=button]:hover, input[type=submit]:hover {
	background-color:#F2F2F2;
	box-shadow:inset 1px 1px #555;
	padding:0px 1px 0px 3px
}
/* only for statusheadline button in status.html */
td.subheadline input[type=button] {
	float:right;
	margin:0 0 0 2px;
	width:95px;
	font-weight:normal
}
/* only for save button lb/cccam control in config.html */
.configcontrol input[type=submit] {
	width:115px
}
/* only for button in readers.html/userconfig.html/services.html for addnew */
.users input[type=submit], .readers input[type=submit], #addnewservice input[type=submit] {
	margin-left:10px
}
/* only for diasabled button in file.html*/
#filesubmit input[type=submit]:disabled {
	display:none
}
/* only save button in config.html/readerconfig.html/services.html */
td.configcolsave {
	text-align:center
}
/* settings for first option in select
 * otherdropdown	- in script.html, menu.html
 */
#otherdropdown {
	margin:5px
}
#otherdropdown option:first-child {
    display:none
}
/* for extract in script.html */ 
div.extract {
        width: 750px;
        margin: 10px auto;
	text-align: left;
}
div.extract pre {
        min-height: 100px;
	margin: 10px 0;
        padding: 10px;
	font-family: courier,monospace;
        border:1px dotted #AAA;
	white-space: pre
}

/* **************** 13. IMAGE */
/* generaly settings for images */
img {
	border:0 solid
}
/* for icons with following Action */
img.icon {
	border-radius:4px;
	width:22px;
	height:22px;
	max-height:22px;
	background-color:#A00
}
/* statususericon	- in STATUS item
 * protoicon		- in STATUS, READERS item
 * usericon			- in USERS item
 * readericon		- in READERS item
 */
img.statususericon, img.protoicon,
img.usericon, img.readericon {
	min-height:15px;
	height:auto;
	max-height:22px;
	max-width:150px
}
/* ECM Restarticon */
.statusecminfo img{
	vertical-align:middle
}
/* logo IC_LOGO.tpL */
div.logo img {
	max-height:44px
}
div.logo svg.OSCam_logo {
	fill:#111111
}

td#out.centered img,
td#in.centered img {
	margin:0 10px -2px
}

/* **************** 14. SPAN */
/* module-webif.c and userconfig_notify.html */
span.span_notifier {
	margin-left:2px;
	padding:1px 3px;
	color:#FFF;
	background-color:red
}
/* module-webif.c value for STATUS item ( more info in Changeset 6668 by alno )
 * Class for formating values in statusview column "Idle"
 * In new WebIf column Idle is not used. Info about Idle is in title */
span.idlesec_normal, span.idlesec_alert {
	font-size:9px;
	color:red
}
/* readerconfig_cccambit.html, user_edit_anticasc.html and user_edit_cccam.html */
span.global_conf {
	font-size:12px;
	cursor:default;
	padding:4px;
	color:blue
}
/* entitlements.html, readerconfig.html and user_edit.html */
span.text_entitle {
	display:inline-block;
	font-weight:700
}
/* cachex status */
span.e_expired {background-color:#FFF3E7}
.span, span {
	text-align:center
}

/* **************** 15. GRAPH */
svg.graph {background-color:#F0F0F0;font-family:Arial;font-size:9px}
rect.graph_bg {fill:white}
rect.graph_button {fill:#A9D0F5}
text.graph_error {text-anchor:middle;fill:red}
text.graph_top_txt {text-anchor:end}
text.graph_grid_txt {text-anchor:end;fill:gray}
path.graph_grid {stroke-opacity:0.5;stroke-width:0.7px;stroke:gray}
path.graph_curve {stroke-opacity:0.8;stroke-width:0.7px;fill:none}

/* **************** 16. SORTING IN TABLE */
.users th {
	font-size:11px
}
.sortable {
	background-image: url(data:image/png;base64,R0lGODlhBQAIAJEAAAAAAP///yMtMP///yH5BAEAAAMALAAAAAAFAAgAAAIL3GQnuJ2f2lLI1AIAOw==);
	background-repeat:no-repeat;
	background-position:4px center;
	cursor:pointer;
	padding-left:12px;
	padding-right:8px
}
.sorting-asc, .sorting-desc {
	background-color:#999
}
.sorting-desc {
	background-image: url(data:image/png;base64,R0lGODlhBQADAJEAAAAAAP///yMtMP///yH5BAEAAAMALAAAAAAFAAMAAAIFlD03K1sAOw==);
	background-repeat:no-repeat;
	background-position:4px center;
	cursor:pointer;
	padding-left:10px;
	padding-right:8px
}
.sorting-asc {
	background-image: url(data:image/png;base64,R0lGODlhBQADAJEAAAAAAP///yMtMP///yH5BAEAAAMALAAAAAAFAAMAAAIF3GQnuF0AOw==);
	background-repeat:no-repeat;
	background-position:4px center;
	cursor:pointer;
	padding-left:10px;
	padding-right:8px
}

/* **************** 17. POLLING */
/*  for UL in logpoll.html */
#livelog {
	resize:vertical;
	height:574px;
	max-width:1500px;
	overflow-y:auto;
	margin:1px auto 15px;
	padding:0px 4px
}
#livelogdata {}
li.regex, li.regexdata_nav, li.regexdata_save{
	white-space:nowrap
}
input.regexinput {
	cursor:text;
	padding:2px;
	margin:3px 15px 1px 3px;
	width:400px
}
.regexdata_nav input {
	width:100px
}
.regexdata_save input {
	width:90px;
	margin-top:10px
}
.colorPicker_def_color {
	color:#ddd
}
.colorPicker_def_fcolor {
	color:#00f
}
div.colorPicker-picker {
	height:16px;
	width:16px;
	display:inline;
	margin:3px;
	padding:4px 8px;
	border:1px solid #ccc;
	cursor:pointer;
	line-height:16px;
	font-size:0.75em;
	font-weight:bold;
	text-align:center
}
div.colorPicker-palette {
	width:110px;
	position:absolute;
	border:1px solid #598FEF;
	background-color:#EFEFEF;
	padding:2px;
	z-index:9999
}
div.colorPicker_hexWrap {width:100%;float:left}
div.colorPicker_hexWrap label {font-size:95%;color:#2F2F2F;margin:5px 2px;width:25%}
div.colorPicker_hexWrap input {margin:5px 2px;padding:0;font-size:95%;border:1px solid #000;width:65%}

div.colorPicker-swatch {
	height:12px;
	width:12px;
	border:1px solid #000;
	margin:2px;
	float:left;
	cursor:pointer;
	line-height:12px
}
/* User-Page polling */
#inc,#dec {
	padding:0 3px;
	margin:-3px 3px;
	border:none;
	background-color:#A00;
	color:#FFF;
	cursor:pointer;
	border-radius:4px;
	font-size:14px;
	font-weight:700;
	width:22px;
	height:22px
}
#inc:hover,#dec:hover {
	background-color:red
}
#nav li.pollselect {
	display:inline;
	position:absolute;
	right:10px
}
input.pintervall {
	font-size:14px;
	font-weight:500;
	width:18px;
	height:18px;
	color:#000;
	background-color:transparent;
	border:none;
	border-radius:4px;
	text-align:center;
	margin:0 4px;
	padding:0
}
/* polling heartbeat */
#picolor {
	background-color:#A00
}

/* **************** 18. ECM BAR HISTORY */
#chart {
	position:absolute;
	width: 150px;
	height: 90px;
	border: 1px dotted #F00;
	background-color: #EAEAEA;
	padding:3px;
	z-index:1000
}
#charthead {
	background-color:transparent;
	width:100%;
	height:5px
}
#graph {
	width:98%;
	bottom:0;
	position:absolute
}
.disabledtable {
    opacity:0.5
}
/* Statuspage Functions: Generate a Bar for Barchart */
div.bar {
	width:5px;
	margin:2px;
	display:inline-block;
	position:relative;
	background-color:#AEAEAE;
	vertical-align:baseline
}

/* **************** 19. FILE MENU */
/* For filemenu - change dropdown menu */
.drop .subcaret {
	margin-top:7px;
	margin-left:7px
}
.subcaret {
	display:inline-block;
	width:0;
	height:0;
	vertical-align:top;
	border-top:4px solid #606060;
	border-right:4px solid transparent;
	border-left:4px solid transparent;
	content:"";
	opacity:1;
	filter:alpha(opacity=100)
}
#nav ul.dropdown_nav li {
	margin:0;
	padding:1px 0;
	width:100%
}
#nav li ul.dropdown_nav li a {
	color:#000;
	padding:0 5px;
	display:block
}
#nav li ul.dropdown_nav {
	display:none;
	white-space:normal;
	position:absolute;
	text-align:left;
	top:16px;
	right:0;
	width:auto;
	background-color:#FFF;
	border:1px solid #DDD
}
#nav li:hover ul.dropdown_nav {
	display:block
}

/* **************** 20. OTHER SETTINGS */

/* REMOVE MEDIA QUERIES FROM ORGINAL CSS STYLE - IT IS STUPID SETTINGS ONLY FOR IPHONE 
 * iPhone
 * iPhone Landscape
 * iPad Landscape
 */

/* ################################# ENVI TEMPLATE WEBIF for STREAMBOARD ################################# */
/* ============================= CORRECTION ORIGINAL WEBIF FOR ENVI TEMPLATE ============================= */

/* footer.html */
div.footer ul {
	margin:5px
}
div.footer li {
	margin:0
}
div.footer b {}

ul.textfooter {
	margin:5px 0
}
ul.textfooter,  ul.textfooter ul {
	list-style-type:none
}
ul.textfooter li {
	display:inline
}
div.styleswitcher {
	position: absolute;
	bottom: 34px;
	right: 52px;
	color:#656565
}
div.footer ul.addClass {
	margin:3px;
}
div.footer ul.addClass li {
	margin-bottom:5px;
}

/* Popup info about Envi Template*/
div.envi_info {
	position: absolute;
	bottom: 5px;
	right: 35px;
}
.modalDialog {
	position: fixed;
	font-family: Arial, Helvetica, sans-serif;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	background: rgba(0,0,0,0.8);
	z-index: 99999;
	opacity:0;
	-webkit-transition: opacity 400ms ease-in;
	-moz-transition: opacity 400ms ease-in;
	transition: opacity 400ms ease-in;
	pointer-events: none;
}
.modalDialog:target {
	opacity:1;
	pointer-events: auto;
}
.modalDialog > div {
	width: 400px;
	position: relative;
	margin: 10% auto;
	padding: 13px 20px;
	background-color: #FFF;
}
.modalDialog > div > table {
	width: 90%;
	margin: 10px auto
}
.modalDialog p {
	text-align: left;
	line-height: 16px
}
.modalDialog p.thanks {
	color: #BBB
}
.modalDialog hr {
	margin: 5px 0px
}
.close {
	background: #606061;
	color: #FFF !important;
	line-height: 25px;
	position: absolute;
	right: -12px;
	text-align: center;
	top: -10px;
	width: 24px;
	text-decoration: none;
	font-weight: bold;
	-webkit-border-radius: 12px;
	-moz-border-radius: 12px;
	border-radius: 12px;
	-moz-box-shadow: 1px 1px 3px #000;
	-webkit-box-shadow: 1px 1px 3px #000;
	box-shadow: 1px 1px 3px #000;
}

.close:hover {
	background-color: #000;
	color: #FFF
}

/* jQuery Style Switcher for Designers */
.demo_changer {
	z-index: 900;
	position: absolute;
	left: -165px;
	bottom: 10px;
}

.demo_changer.active {
    left: 0px;
}

.line {
	border-bottom: 1px solid #E0E0E0;
	clear: both;
	margin: 10px !important
}

.demo_changer .demo_icon{
	background-color: rgba(255, 255, 255, 0.8);
	background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAMAAADXqc3KAAAAS1BMVEUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADmYDp0AAAAGHRSTlMAB3Laye98qCGVEPeNgkfhvJxlXT4vshgFDlz8AAAAxklEQVQYGWXBB5LCMAAEwVWWc4b5/0tPhsInQ7e+2EYaon55omXSr5nCG91Z53nxPqo2AKk1C9DoxkIrmY6oOwutZDqsbnogGdMAvd5yaiRZ56HrwLtBbxsYnTyFNzo187NNsGl3oxzW4nQ6IASKCSbFXuoHvSxcRtV2wA1NgEm1NsFspBxgM7oEil1FT7Hog9OhIlI89DFaB1GS8ZDWQ/9WIObjAV2r2sZHeKqSA5dZlezCujp4jAtJtZwlC09pN/o2EnT3B9qZEIrL4gjtAAAAAElFTkSuQmCC);
	background-repeat:no-repeat;
	background-position: center;
	box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.3);
	cursor: pointer;
	float: right;
	height: 40px;
	width: 40px;
	border-radius: 0px 2px 2px 0px;
	-moz-border-radius: 0px 2px 2px 0px;
	-webkit-border-radius: 0px 2px 2px 0px;
	top: 275px;
	position: relative
}

.demo_changer .form_holder {
	background: #fff;
	float: right;
	box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.3);
	width: 160px;
	padding: 0 0 10px 0;
	border: 1px solid #DDD;
}

div.styleswitcher {
	position: static;
	color:#212121
}
div.envi_info {
	position: static
}
div.footer ul.addClass {
	margin: 3px auto;
	width: 50%
}
.section-label {
    font-weight: bold;
    padding: 5px 10px;
    margin: 0px 0px 5px;
    background: none repeat scroll 0% 0% #EEE;
    color: #333;
    text-shadow: 1px 1px 0px #FFF;
    border-bottom: 1px solid #DDD;
    text-align: left;
}
ul.backchange {
    width:auto;
    height:40px;
    line-height:40px;
    padding: 0 10px;
}
ul.backchange li {
    list-style:none;
    cursor: pointer;
   	margin: 0px 4px;
	padding: 1px 7px;
    display:inline-block;
    border: 3px solid #E1E1E1;
    display:inline;
    box-shadow: 0px -1px 2px rgba(0, 0, 0, 0.2);
}
ul.patchange {
    width:auto;
    height:40px;
    line-height:40px;
    padding: 0 10px;
}
ul.patchange li {
    list-style:none;
    cursor: pointer;
    margin: 0px 4px;
	padding: 1px 7px;
    display:inline-block;
    border: 3px solid #E1E1E1;
    display:inline;
    box-shadow: 0px -1px 2px rgba(0, 0, 0, 0.2);
}
ul.colchange {
    width:auto;
    height:40px;
    line-height:40px;
    padding: 0 10px;
}
ul.colchange li {
    list-style:none;
    cursor: pointer;
    margin: 0px 4px;
	padding: 1px 7px;
    display:inline-block;
    border: 3px solid #E1E1E1;
    display:inline;
    box-shadow: 0px -1px 2px rgba(0, 0, 0, 0.2);
}
.background_1 {
    
}
.background_2 {
    background: #a5a5a5 !important;
}
.background_3 {
    background: #7f7f7f !important;
}
.background_4 {
    background: #222 !important;
}
.background_5 {
    background: #0c0c0c !important;
}
.patchange_1 {
    
}
.patchange_2 {
    background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAYAAAAGAQMAAADaAn0LAAAABlBMVEUAAAA1NTVzRZghAAAAAnRSTlMACpZGJCYAAAAUSURBVAjXY2hgYGHgYBBgUGBwAAAG2AD9kGTj9QAAAABJRU5ErkJggg==) !important;
}
.patchange_3 {
    background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABUAAAAVBAMAAABbObilAAAAElBMVEUbGxsfHx8kJCQYGBgnJychISG0pNZmAAAAt0lEQVQI1w2OPXLGIAxEl79eMRxAGOjBE3pwkp6xyf2v8qmQCs3T7gMK/txoQ/0Q7Ar+8BtPI8w2lcw1HIOOFGib29wV7WzTDZfsS7goC5/rUEP4obkvvazwgTJKlXfhZWvWPtDCQZsKCubFmH328f1KIUDZ3K2o6FKFHFmnYB4wHskuiI01Y1hhg9k4IQ49Si7bJc6vGPtt/uvCraaLna83EMix8L64BdTfJpk22S/gNJkeOhHBH1B8H/+/MylCAAAAAElFTkSuQmCC) !important;
}
.patchange_4 {
    background: #222 !important;
}
.patchange_5 {
    background: #0c0c0c !important;
}
.colchange_1 {
    
}
li.colchange_2 {
    background: #a5a5a5 !important;
}
.colchange_2 {
    color: #a5a5a5 !important;
}
li.colchange_3 {
    background: #7f7f7f !important;
}
.colchange_3 {
    color: #7f7f7f !important;
}
li.colchange_4 {
    background: #222 !important;
}
.colchange_4 {
    color: #222 !important;
}
li.colchange_5 {
    background: #0c0c0c !important;
}
.colchange_5 {
    color: #0c0c0c !important;
}

/* ==================================================================  ENVI TEMPLATE */
/* **************** 1. BASIC DIVISION PAGES */
.envi #content {padding:80px 8px 125px}

/* **************** 2. BASIC SETTINGS - BODY,P,H4,LI */
body.envi {
	background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAMAQMAAABRKa/CAAAABlBMVEXy8vLk5OTQOLQ5AAAAD0lEQVQI12Po6GCAAVxsAEfcAzFIfEGeAAAAAElFTkSuQmCC');
}
/* file.html, script.html */
.envi #filename {
	margin-top: 0
}

/* **************** 3. BASIC SETTINGS - BODY,P,H4,LI,B */
/* footer.html */
.envi div.footer li.styleauthor b:after {
	content:"Skyndas"
}
.envi li.styleauthor:after {
	content:" for Streamboard Team"
}

/* **************** 5. MAIN MENU */
.envi #main {
	width:100%;
	height:40px;
	position:fixed;
	right:0;
	left:0;
	top:0;
	z-index:1050;

	/* BACKGROUND COLOR */
	background: #131517;

	/* BOX SHADOW */
	box-shadow:0px 1px 4px #5e5e5e
}
.envi #mainmenu {
	height:27px;
	padding-top:0;
	white-space:nowrap;
	display:inline-block;
	position:relative;
	margin-top:14px;
	text-shadow:1px 1px 1px #000;
	background: none
}
.envi #mainmenu li {
	display:inline;
	padding:3px 8px 3px;
	font-size:12px;
	font-weight:700;
	font-family: "Helvetica Neue","Helvetica",Arial,sans-serif;
	text-transform: uppercase;
	text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.3);
	border-right: 1px solid #0A0B0C;
	border-left: 1px solid #2E3236;
	margin-left: -5px
	
}
.envi #mainmenu li:first-child {
	border-left: none;
}
.envi #mainmenu li:last-child {
	border-right: none;
}
.envi li.menu a,.envi li.menu a:hover,
.envi li.menu_selected a,.envi li.menu_selected a:hover {
	background: none
}

.envi li.menu:hover,.envi li.menu_selected, 
.envi li.configmenu:hover,.envi li.configmenu_selected {
	background: none
}

.envi li.menu a {
	color:#FFF;
}
.envi li.menu:hover a {
	color:#F00423;
	transition:all 0.5s ease 0s
}
.envi li.menu_selected a {
	color: #F00423
}

/* **************** 6. SUBNAV */
.envi #subnav {
	position: fixed;
	top: 37px;
	left: 0;
	right: 0;
	padding:6px 0px 4px 0px;
	z-index:1040;
	border: 1px solid #e5e5e5;

	/* GRADIENT */
	/* Old browsers */
	background: #EEEEEE;
	/* Webkit (Chrome/Safari4+) */
	background-image: -webkit-gradient(linear,left bottom,left top,color-stop(0, #F5F5F5),color-stop(1, #EEEEEE));
	/* Opera */
	background-image: -o-linear-gradient(top, #F5F5F5 0%, #EEEEEE 100%);
	/* Firefox */
	background-image: -moz-linear-gradient(top, #F5F5F5 0%, #EEEEEE 100%);
	/* Webkit (Chrome10+/Safari5.1+) */
	background-image: -webkit-linear-gradient(top, #F5F5F5 0%, #EEEEEE 100%);
	/* IE10+ */
	background-image: -ms-linear-gradient(top, #F5F5F5 0%, #EEEEEE 100%);
	/* W3C Markup, IE10 Release Preview */
	background-image: linear-gradient(to top, #F5F5F5 0%, #EEEEEE 100%);

	/* BOX SHADOW */
	-webkit-box-shadow: inset 0 1px 0 #fff, 0 1px 5px rgba(0,0,0,.1); 
	-moz-box-shadow: 	inset 0 1px 0 #fff, 0 1px 5px rgba(0,0,0,.1); 
	box-shadow: 		inset 0 1px 0 #fff, 0 1px 5px rgba(0,0,0,.1)
}
.envi #nav {
	height:22px;
	white-space:nowrap
}
.envi #nav li {
	display:inline-block;
	position:relative;
	margin:2px 2px;
	padding:0 3px;
	font-size:14px
}
.envi #nav li.pollselect {
    position: absolute
}
.envi li.configmenu a,.envi li.configmenu a:hover,
.envi li.configmenu_selected a,.envi li.configmenu_selected a:hover {
	color:#050840
}
.envi #nav a {
	padding:8px 5px;
	margin:-5px;
	color: #2e2e2e;
	font-size:12px
}
.envi #nav li.configmenu_selected > a:link,
.envi #nav li.configmenu_selected > a:visited,
.envi #nav li.configmenu_selected > a:active,
.envi #nav li.configmenu > a:hover {
	color: #D80320
}

/* **************** 7. TABLE */
/* ------- SERVICES ------- */
/* services.html */
.envi #newservice {
	margin-top:0
}
/* ------- READERS ------- */
/* emm.html */
.envi table.writeemm {
	margin-top:0
}
/* emm_running.html */
.envi table.emmrunning {
	margin-top:0
}
/* ------- USERS ------- */
/* userconfig.html */
.envi table.users {
	border-spacing:0;
	border-bottom: 1px solid #222
}
.envi #newuser table,
.envi #searchTable table.users {
	border-spacing:0px;
	border-bottom: none
}
.envi table.infotable {
	border-bottom: 1px solid #222;
	background-color: #FFF
}
/* cacheex.html */ 
.envi table.cacheex {
    border-spacing: 0px;
    border-bottom: 1px solid #222
}
.envi table.stats {
    border-spacing: 0px;
    border-bottom: 1px solid #222
}

/* **************** 8. TABLE TR */
/* rowcolors for users rows in unserconfig.html depend on status */
.envi tr.online td.usercol6 {
	background-color:#BFA;
	color: #000
}

/* **************** 9. TABLE TH */
/* status_cacheexinfo.html, status_systeminfo.html, status_userinfo.html */
.envi th.nameinfo {
	background-color:#222;
	color: #FFF
}
/* userconfig.html */
.envi table.users th {
	border-right: 1px dotted #666;
	background-color: #222;
	color: #FFF;
	border-top: 1px solid #FFF
}
.envi table.users th:last-child {
	border-right: none
}
/* cacheex.html */
.envi table.stats th {
	border-right: 1px dotted #666;
	background-color: #222;
	color: #FFF;
	border-top: 1px solid #FFF
}
.envi table.stats th:last-child {
	border-right: none
}
/* Background color for th */
.envi table.config th,
.envi table.configreader th,
.envi table.configuser th,
.envi table.cacheex th,
.envi table.failban th,
.envi #servicesedit th,
.envi #addnewservice th {
    background-color: #222;
    color: #FFF
}

/* **************** 10. TABLE TD */
/* userconfig.html */
.envi table.users td {
	border-right: 1px dotted #999
}
.envi table.users td:last-child {
	border-right: none;
}

/* Solution for coloring first TD in table .config, .configreader, .configuser */
.envi table.config td:first-child,
.envi table.configreader td:first-child,
.envi table.configuser td:first-child {
    background-color: #CCC
}
.envi table.config tr:nth-last-child(-n+2) td:first-child,
.envi table.configreader tr:nth-last-child(-n+2) td:first-child,
.envi table.configuser tr:nth-last-child(-n+2) td:first-child {
    background-color: #EEE
}
.envi table.subservicetable td:first-child {
    background-color: #EEE
}
/* Border bottom for whole TR in .config, configreader, .configuser */
.envi table.config td,
.envi table.configreader td,
.envi table.configuser td {
    border-bottom: 1px dotted #999
}
.envi table.subservicetable td {
    border-bottom:none
}
.envi table.config tr:nth-last-child(-n+3) td,
.envi table.configreader tr:nth-last-child(-n+3) td,
.envi table.configuser tr:nth-last-child(-n+3) td {
    border-bottom: none
}
/* **************** 11. DIV */
/* Log status.html, livelog.html, file.html */
.envi div#livelog {
	margin-top:0
}
/* logobit.html - Logo for Oscam */
.envi div.logo {
	position: fixed;
	z-index:1060
}
/* footer.html */
.envi div.footer {
	background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAQAAAAEAQMAAACTPww9AAAABlBMVEUYGBgRERGrUlCvAAAADklEQVQI12M4AIQGDAYACcgB4WUKpxgAAAAASUVORK5CYII=);
	border-top:10px solid #000
}
.envi div.footer li {
	color:#656565
}
.envi div.footer b {
	color:#999
}
.envi div.footer li.styleauthor b {
	color:#BD0000;
	text-shadow:1px 1px 1px #000
}
.envi div.styleswitcher a,
.envi div.envi_info a {
	color:#999
}
.envi div.styleswitcher a:hover,
.envi div.envi_info a:hover {
	color:#FF6D00
}

/* **************** 12. TEXTAREA,SELECT,INPUT */
.envi #otherdropdown option {
    margin:5px
}
/* **************** 13. IMAGE */
/* logo IC_LOGO.tpL */
.envi div.logo img {
    max-height: 28px
}
.envi div.logo svg.OSCam_logo {
	fill:#ffffff;
	height:28px;
	width:28px
}

/* **************** 16. SORTING IN TABLE */
.envi .sortable {
	background-image: url(data:image/png;base64,R0lGODlhBQAIAJEAAAAAAP///4CAgP///yH5BAEAAAMALAAAAAAFAAgAAAIL3GQnuJ2f2lLI1AIAOw==);
}
.envi .sorting-desc{
	background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAADAQMAAABh+Fe7AAAABlBMVEUAAACAgICSabkkAAAAAXRSTlMAQObYZgAAAA5JREFUCNdj+MFQwKAAAAZOAYkOHHR7AAAAAElFTkSuQmCC);
}
.envi .sorting-asc{
	background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAADAQMAAABh+Fe7AAAABlBMVEUAAACAgICSabkkAAAAAXRSTlMAQObYZgAAAA5JREFUCNdjUGAoYPgBAALuAYlvcnaaAAAAAElFTkSuQmCC);
}
/* **************** 19. FILE MENU */
/* For filemenu - change dropdown menu */
.envi #nav ul.dropdown_nav li a {
	margin:0
}

/* **************** 21. TOOLTIP */
.envi .boot_tooltip {
	position: absolute;
	z-index: 1010;
	display: block;
	visibility: visible;
	padding: 5px;
	font-size: 12px;
	opacity: 0;
	filter: alpha(opacity=0)
}
.envi .boot_tooltip.in {
	opacity: 1;
	filter: alpha(opacity=100)
}
.envi .boot_tooltip.top {
	margin-top: -2px
}
.envi .boot_tooltip.right {
	margin-left: 2px
}
.envi .boot_tooltip.bottom {
	margin-top: 2px
}
.envi .boot_tooltip.left {
	margin-left: -2px
}
.envi .boot_tooltip.top .boot_tooltip-arrow {
	bottom: 0;
	left: 50%;
	margin-left: -5px;
	border-left: 5px solid transparent;
	border-right: 5px solid transparent
}
.envi .boot_tooltip.left .boot_tooltip-arrow {
	top: 50%;
	right: 0;
	margin-top: -5px;
	border-top: 5px solid transparent;
	border-bottom: 5px solid transparent
}
.envi .boot_tooltip.bottom .boot_tooltip-arrow {
	top: 0;
	left: 50%;
	margin-left: -5px;
	border-left: 5px solid transparent;
	border-right: 5px solid transparent
}
.envi .boot_tooltip.right .boot_tooltip-arrow {
	top: 50%;
	left: 0;
	margin-top: -5px;
	border-top: 5px solid transparent;
	border-bottom: 5px solid transparent
}
.envi .boot_tooltip-inner {
	max-width: 200px;
	padding: 3px 8px;
	text-align: center;
	text-decoration: none;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px
}
.envi .boot_tooltip-arrow {
	position: absolute;
	width: 0;
	height: 0
}
/* Tooltip color */
.envi .boot_tooltip-inner {
	color: #fff;	
	background-color: #333
}
.envi .boot_tooltip.top .boot_tooltip-arrow {
	border-top: 5px solid #333
}
.envi .boot_tooltip.left .boot_tooltip-arrow {
	border-left: 5px solid #333
}
.envi .boot_tooltip.bottom .boot_tooltip-arrow {
	border-bottom: 5px solid #333
}
.envi .boot_tooltip.right .boot_tooltip-arrow {
	border-right: 5px solid #333
}
/* ################################# RESPONSIVE DESIGN for STREAMBOARD ################################# */

/* **************** 5. MAIN MENU */
/* checkbox for show/hide main menu 
 * (it is used only for showing main menu on mobile device) 
 * for desktops browser is not used */
#toggle, #subtoggle {display:none}

/* ################ DESKTOPS ################ */

/* ################ MOBILE PHONES ################ */

@media screen and (max-width: 360px) and (max-aspect-ratio: 13/9) {

/* **************** 1. BASIC DIVISION PAGES */
	#content {
		padding: 0px 0px 280px;
	}

/* **************** 3. BASIC SETTINGS - BODY,P,H4,LI,B */
		/* pre_shutdown.html */
		h4 {
			line-height:1.2em;
		}
		/* file.html, script.html */
		#filename,#filesubmit {
			font-size:1.5em
		}
		/* footer.html */
		div.footer li.styleauthor b:after {
			content:"Skyndas"
		}
		li.styleauthor:after {
			content:" for Streamboard Team"
		}

/* **************** 5. MAIN MENU */
	/* checkbox for show/hide main menu */
		#toggle:checked ~ #mainmenu {
			display:block;
			opacity:1;
			z-index: 1050
		}
	/* label for checkbox */
		.toggle {
			display:block;
			position:relative;
			cursor:pointer;
			-webkit-touch-callout:none;
			-webkit-user-select:none;
			user-select:none;
			z-index: 1050
		}
		.toggle:after {
			content:'\2261 \00a0 \00a0 Main menu';
			display:block;
			width:100%;
			padding:13px 50px;
			background-color:#000;
			text-align:center;
			font-size:1.5em;
			font-weight:700;
			color:#FFF;
			-webkit-transition: all 0.5s linear;
			-moz-transition: all 0.5s linear;
			-o-transition: all 0.5s linear;
			transition: all 0.5s linear;
			-webkit-box-sizing: border-box;
			-moz-box-sizing: border-box;
			box-sizing: border-box;

			/* BOX SHADOW */
			-webkit-box-shadow: 0 8px 6px -6px  rgba(50, 50, 50, 0.32);
			-moz-box-shadow:    0 8px 6px -6px  rgba(50, 50, 50, 0.32);
			box-shadow:         0 8px 6px -6px  rgba(50, 50, 50, 0.32)
		}
		.toggle:hover:after{
			background: #000
		}
		#toggle:checked + .toggle:after{
			content:'Close Menu';
			color: #F00;
			text-shadow: 1px 1px 2px #000
		}

	/* main menu */
		#main {
			height:46px
		}
		#mainmenu, #mainmenu > li, #mainmenu > li > a{ 
			height: auto
		}
		#mainmenu { 
			display:none;
			opacity:0;
			width:60%;
			position:absolute;
			left:0;
			padding-top:0;
			margin-top:0
		}
		#mainmenu > li {
			display:block;
			width:100%;
			margin:0;
			background:#DDD;
			border-bottom: 1px solid #CCC;
			font-size:1.5em;
			font-weight:700;
			padding: 0
		}
		#mainmenu > li:hover {
			background:#CCC;
		}
		li.menu a {
			color:#000;
			font-weight:700
		}
		li.menu_selected a {
			color:#F00;
			background:#CCC
		}
		#mainmenu > li:last-child {
			border-bottom:2px solid black;

			/* BOX SHADOW */
			-webkit-box-shadow: 0 8px 6px -6px  rgba(50, 50, 50, 0.32);
			-moz-box-shadow:    0 8px 6px -6px  rgba(50, 50, 50, 0.32);
			box-shadow:         0 8px 6px -6px  rgba(50, 50, 50, 0.32)
		}
		#mainmenu > li > a {
			width:100%;
			text-decoration:none;
			display: block;
			padding: 10px;
			-webkit-box-sizing:border-box;
			-moz-box-sizing:border-box; 
			box-sizing:border-box
		}
		span.span_notifier {
			margin-left:5px;
			font-weight:700
		}
/* **************** 6. SUBNAV */
	/* checkbox for show/hide subnav */
		#subtoggle:checked ~ #nav {display:block;opacity:1}
	/* label for checkbox */
		.subtoggle {
			display:block;
			position:relative;
			cursor:pointer;
			-webkit-touch-callout:none;
			-webkit-user-select:none;
			user-select:none
		}
		.subtoggle:after {
			content:'Submenu \25bc';
			display:block;
			width:100%;
			padding:10px 50px;
			background-color:#707070;
			text-align:center;
			font-size:1.3em;
			font-weight:700;
			color:#FFF;
			-webkit-transition: all 0.5s linear;
			-moz-transition: all 0.5s linear;
			-o-transition: all 0.5s linear;
			transition: all 0.5s linear;
			-webkit-box-sizing: border-box;
			-moz-box-sizing: border-box;
			box-sizing: border-box;

			/* BOX SHADOW */
			-webkit-box-shadow: 0 8px 6px -6px  rgba(50, 50, 50, 0.32);
			-moz-box-shadow:    0 8px 6px -6px  rgba(50, 50, 50, 0.32);
			box-shadow:         0 8px 6px -6px  rgba(50, 50, 50, 0.32)
		}
		.subtoggle:hover:after{}
		#subtoggle:checked + .subtoggle:after{
			content:'Close Submenu \25b2'
		}

	/* subnav */
		#subnav {
			padding: 0;
			border: none;
			z-index: 1050
		}
		#nav { 
			display:none;
			opacity:0;
			width:65%;
			position:absolute;
			right:0;
			padding-top:0;
			margin-top:0;
			z-index: 1040
		}
		#nav > li {
			display:block;
			width:100%;
			margin:0;
			background:#EDEDED;
			font-size:1.3em;
			font-weight:400;
			padding: 0
		}
		#nav > li > a {
			width:100%;
			text-decoration:none;
			display: block;
			padding: 10px;
			-webkit-box-sizing:border-box;
			-moz-box-sizing:border-box; 
			box-sizing:border-box
		}
		#nav > li:last-child {
			border-bottom: 2px solid black;
			border-top: 1px solid #CFCFCF;
			margin-bottom: 20px;

			/* BOX SHADOW */
			-webkit-box-shadow: 0 8px 6px -6px  rgba(50, 50, 50, 0.32);
			-moz-box-shadow:    0 8px 6px -6px  rgba(50, 50, 50, 0.32);
			box-shadow:         0 8px 6px -6px  rgba(50, 50, 50, 0.32)
		}
		#nav li.pollselect {
			display: block;
			position: relative;
			right: 0;
			padding: 10px 0
		}
		#nav > li > b {
			line-height:2em
		}
/* **************** 7. TABLE */
	/* ------- SERVICES ------- */
	#addnewservice {
		width: 100%;
		padding: 0 10px;
		border-bottom: 1px solid #CCC;
		margin-bottom: 20px
	}

/* **************** 9. TABLE TH */
	#addnewservice th {
		font-size: 1.5em;
		text-align: left;
		padding-bottom: 16px;
		background-color: transparent
	}
/* **************** 11. DIV */
	/* logobit.html - Logo for Oscam */
	div.logo {
		top: 0;
		left: 0;
		z-index: 1060;
		padding: 9px;
		background-color: #2C2C2C
	}
	/* pre_autoconf.html, pre_shutdown.html */
	div.warning {
		line-height: 1.5em;
		font-size: 1.2em;
	}

/* **************** 12. TEXTAREA,SELECT,INPUT */
	#addnewservice input[type=text] {
		height: 35px;
		float: left;
		width: 100%;
		margin: 15px 0
	}
	#addnewservice input[type=submit] {
		float: left;
		margin-left: 0
	}
	/* script.html */
	#scriptselect {
		height: 35px;
		margin: 15px 0;
		width: 80%
	}
	/* generaly settings for all buttons/submits */
	input[type=button], input[type=submit] {
		width: auto;
		height: auto;
		background-color: #F0F0F0;
		padding: 0.75em 1.2em
	}
	/* generaly hover settings for all buttons/submits */
	input[type=button]:hover, input[type=submit]:hover {
		background-color: #DDD;
		padding: 0.75em 1.2em
	}
/* **************** 13. IMAGE */
	div.logo svg.OSCam_logo {
		fill:#ffffff;
		height:28px;
		width:28px;
	}

/* **************** 17. POLLING */
	#inc,#dec {
		width: 27px;
		height: 27px;
	}
/* **************** X. FOOTER */
	div.footer  {
		height: auto;
		padding-bottom: 10px;
	}
	div.footer ul ul li {
		margin:5px
	}
	ul.textfooter ul li,ul.textfooter ul li:last-child {
		display: list-item;
		list-style-type: square
	}
	ul.textfooter ul {
		text-align:left;
		margin:auto;
		width:60%
	}
	div.footer ul.addClass li {
		font-size: 1.2em
	}
	li.developed {
		font-size:1.1em
	}
	li.styleauthor {
		padding:2px
	}
	div.styleswitcher h3 {
		font-size: 1.5em
	}
	/* Popup info about Envi Template*/
	div.envi_info {
		position: static
	}
	.modalDialog > div {
		width: 75%;
		margin: 20% auto
	}
	.envi_info a {
		font-weight: bold;
		font-size:1.2em
	}
	.modalDialog a {
		font-weight: normal;
		font-size:1em
	}
}

@media only screen and (min-device-width: 320px) and (max-device-width: 480px) and (-webkit-device-pixel-ratio: 2) and (device-aspect-ratio: 2/3) and (orientation:portrait) {

/* **************** 1. BASIC DIVISION PAGES */
	#content {
		padding: 0px 0px 250px;
	}

/* **************** 3. BASIC SETTINGS - BODY,P,H4,LI,B */
		/* pre_shutdown.html */
		h4 {
			line-height:1.2em;
		}

/* **************** 5. MAIN MENU */
		#mainmenu > li {
			line-height: 1.2em;
			font-size: 1.2em;
		}

/* **************** 11. DIV */
	/* pre_autoconf.html, pre_shutdown.html */
	div.warning {
		margin: 16px 0 14px;
		padding: 0 10px;
		line-height: 1.2em;
	}

/* **************** X. FOOTER */
	div.footer  {
		height: auto;
		padding-bottom: 10px;
		font-size: 0.9em
	}
	li.developed {
		font-size:1em
	}
}
