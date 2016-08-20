/* 
 * Envi Template - Template with responsive design
 *
 * Author skyndas for Streamboard Team
 */

/* CONTENT
=====================================
	###### ORIGINAL WEBIF from STREAMBOARD

		Same css style as in original css.style of Oscam

	###### ENVI TEMPLATE WEBIF for STREAMBOARD
		== CORRECTION ORIGINAL WEBIF FOR ENVI TEMPLATE
			# FOOTER

		== STYLESWITCHER
		== STYLESWITCHER - COLOR SETTINGS
			# 1. TEMPLATE COLOR STYLE
			# 2. BACKGROUND COLOR SETTINGS
			# 3. PATTERNS COLOR SETTINGS
			# 4. BODY FONT COLOR SETTINGS
			# 5. BODY LINK COLOR SETTINGS
			# 6. SIMPLE COLOR PICKER

		== ENVI TEMPLATE - BASIC STYLE 
			# 2. BASIC DIVISION PAGES
			# 3. BASIC SETTINGS
			# 5. MAIN MENU
			# 6. SUBNAV
			# 7. TABLE
			# 8. TABLE TR
			# 9. TABLE TH
			# 10. TABLE TD
			# 11. DIV
			# 12. TEXTAREA,SELECT,INPUT,PRE
			# 13. IMAGE
			# 14. SPAN
			# 16. SORTING IN TABLE
			# 17. POLLING
			# 19. FILE MENU
			# 21. BOOT TOOLTIP
			# 22. JQUERY UI DIALOG
			# 23. OTHER SETTINGS

		== ENVI TEMPLATE - ROTATE OSCAM LOGO
		== ENVI TEMPLATE - BORDER OF INFO TABLES
		== ENVI TEMPLATE - BUTTON BORDER RADIUS
		== ENVI TEMPLATE - NOTIFIER BORDER RADIUS
		== ENVI TEMPLATE - PLASTIC STYLE

		== ENVI TEMPLATE - STYLE 1
		== ENVI TEMPLATE - STYLE 2
		== ENVI TEMPLATE - STYLE 3
		== ENVI TEMPLATE - STYLE 4

	###### RESPONSIVE DESIGN for STREAMBOARD
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
	color:#F00
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
a.debugl:link, a.sizeml:link {
	margin:0 1px
}
a.debugl:hover, a.debugs:hover, a.sizeml:hover, a.sizems:hover {
	background-color:#A00;
	color:#FFF
}
/* module-webif.c  */
a.debugls:link, a.sizemls:link {
	padding:1px 2px 2px
}
a.debugls:link, a.debugls:visited, a.sizemls:link, a.sizemls:visited {
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
	color:#F00
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
	background-color:#F00
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
/* entitlements.html, readerconfig.html and user_edit.html */
li.text_entitle {
	font-weight:700
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
#newinsert table.readers, #searchTable table.readers {
	border-spacing:1px 0px;
	margin-top:1px
}
/* entitlements_bit.html, entitlements_cccambit.html */
table.stats {}
/* emm.html */
table.writeemm {
	width:750px
}
/* emm_running.html */
table.emmrunning {
	width:750px
}
/* readerstats.html */
table.statsbalance td:last-child {
	line-height:20px;
	width:125px
}
table.statsbalance td:last-child a {
	float:right;
	margin-left:10px
}
/* scanusb.html */
table.scanusb {}
/* On/Off button for readers and users in readers.html and userconfig.html*/
td.readercol0 a img.icon,
td.usercol0 a img.icon {
	background-color:#0A0
}
td.readercol0 a:hover img.icon,
td.usercol0 a:hover img.icon {
	background-color:#00D814
}

/* ------- USERS ------- */
/* userconfig.html */
table.users {
	width:100%
}
#newinsert table.users, #searchTable table.users {
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
tr.online td.usercol6 {background-color:#DDD}
tr.online td {background-color:#BFA}
tr.offline td {}
tr.expired td {background-color:#FBA}
tr.connected td {background-color:#FFA}
/* color of button for readers and user row in readers.html and userconfig.html*/
tr.disabled td {}
tr.disabled td:first-child img.icon,
tr.disabledreader td:first-child img.icon {background-color:#B0B0B0}
tr.disabled td:first-child a:hover img.icon,
tr.disabledreader td:first-child a:hover img.icon {background-color:#CECECE}
/* colors for status rows in status.html depend on status */
tr.a td {background-color:#3F0}
tr.c td {background-color:#F1F5E6}
tr.s td, tr.l td,
tr.n td,tr.h td {background-color:#E1E1EF}
tr.r td {background-color:#FFF3E7}
tr.p td, tr.scanusbsubhead td {background-color:#FDFBE1}
/* scanusb.html */
tr.scanusbsubhead {}

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
td[class*='readercol'] {	/* shorthand notation td[class*='readercol'] for  td.readercol0 -  td.readercol18 */
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
td.readercol14,td.readercol15,
td.readercol16 {
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
	padding:4px;
	max-height:300px;
	overflow:scroll;
}
/* module-webif.c class for services.html */
div.sidlist {
	padding:2px;
	background-color:#FFFDF5
}
div.sidlistclose {
	float:right;
	background-color:#F00;
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
div.footer .top_link {
	padding-left:12px;
	position:absolute;
	font-weight:bold;
	bottom:5px;
	left:7px;
	z-index:0
}
div.footer .top_link a:before {
	content:"\25b2";
	font-weight:normal;
	position:absolute;
	left:1px
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
div.debugmenu, div.logmenu, div.logsizemenu {
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
 * #newinsert		- in userconfig.html, readers.html
 * #exp, #cwc, #acasc - only in module-webif.c for show/hide columns in userconfig.html
 */
#newinsert,
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
/* textarea for emm.html */
table.writeemm textarea {
	width:597px
}
/* generaly settings for all select */
select {
	padding:2px
}
/* settings for select in script.html */
#scriptselect {
	height: 22px
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
	width:250px
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
/* for extract in script.html and emm.html */
div.extract {
	width:750px;
	margin:10px auto;
	text-align:left
}
div.extract p {
	font-weight:700;
	margin:10px 6px 0 6px
}
div.extract p.emmhead {
	font-size:13px;
	text-align:center
}
div.extract p .emminfo {
	font-weight:normal
}
div.extract pre {
	overflow:auto;
	margin:5px 0;
	padding:5px;
	font-family:courier,monospace;
	border:1px dotted #AAA;
	white-space:pre
}
div.extract pre.script {
	min-height: 100px
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
.statusecminfo img {
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
	background-color:#F00
}
/* module-webif.c value for STATUS item ( more info in Changeset 6668 by alno )
 * Class for formating values in statusview column "Idle"
 * In new WebIf column Idle is not used. Info about Idle is in title */
span.idlesec_normal, span.idlesec_alert {
	font-size:9px;
	color:#F00
}
/* readerconfig_cccambit.html, user_edit_anticasc.html and user_edit_cccam.html */
span.global_conf {
	font-size:12px;
	cursor:default;
	padding:4px;
	color:blue
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
text.graph_error {text-anchor:middle;fill:#F00}
text.graph_top_txt {text-anchor:end}
text.graph_grid_txt {text-anchor:end;fill:gray}
path.graph_grid {stroke-opacity:0.5;stroke-width:0.7px;stroke:gray}
path.graph_curve {stroke-opacity:0.8;stroke-width:0.7px;fill:none}

/* **************** 16. SORTING IN TABLE */
.users th {
	font-size:11px
}
.sortable {
	background-image: url(data:image/gif;base64,R0lGODlhBQAIAJEAAAAAAP///yMtMP///yH5BAEAAAMALAAAAAAFAAgAAAIL3GQnuJ2f2lLI1AIAOw==);
	background-repeat:no-repeat;
	background-position:4px center;
	cursor:pointer;
	padding-left:12px;
	padding-right:8px
}
.sorting-desc {
	background-image: url(data:image/gif;base64,R0lGODlhBQADAJEAAAAAAP///yMtMP///yH5BAEAAAMALAAAAAAFAAMAAAIFlD03K1sAOw==);
	background-repeat:no-repeat;
	background-position:4px center;
	cursor:pointer;
	padding-left:10px;
	padding-right:8px
}
.sorting-asc {
	background-image: url(data:image/gif;base64,R0lGODlhBQADAJEAAAAAAP///yMtMP///yH5BAEAAAMALAAAAAAFAAMAAAIF3GQnuF0AOw==);
	background-repeat:no-repeat;
	background-position:4px center;
	cursor:pointer;
	padding-left:10px;
	padding-right:8px
}
.sorting-asc, .sorting-desc {background-color:#AAA}
.readers .td-sorting,
.users tr.offline .td-sorting,
.users tr.disabled .td-sorting,
.statsbalance .td-sorting {background-color: #D9D9D9}
.users tr.connected .td-sorting {background-color: #EAEA95}
.users tr.online .td-sorting {background-color: #A6EA95}
.users tr.online td.usercol6.td-sorting {background-color:#C8C8C8}
.users tr.expired .td-sorting {background-color: #EAA69F}

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
#livelogdata {
	white-space:pre
}
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
	color:#DDD
}
.colorPicker_def_fcolor {
	color:#00F
}
div.colorPicker-picker {
	height:16px;
	width:16px;
	display:inline;
	margin:3px;
	padding:4px 8px;
	border:1px solid #CCC;
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
#inc,#polling,#dec,.regexbutton {
	margin:-3px 2px;
	border:none;
	color:#FFF;
	cursor:pointer;
	border-radius:4px;
	font-size:14px;
	font-weight:700;
	width:22px;
	height:22px;
	line-height:0px
}
#inc,#dec,.regexbutton {
	background-color:#A00
}
#inc:hover,#dec:hover,.regexbutton:hover {
	background-color:#F00
}
#inc[disabled],
#dec[disabled] {
	color: #6D6C6D;
	cursor: inherit;
	background-color: #DDD;
}
.pollingenabled {
	background-image:url(image?i=ICSTOP);
	background-repeat:no-repeat;
	background-position:center;
	background-color:#A00
}
.pollingdisabled {
	background-image:url(image?i=ICSTART);
	background-repeat:no-repeat;
	background-position:center;
	background-color:#A00
}
.pollingenabled:hover {
 	background-color:#F00
}
.pollingdisabled:hover {
 	background-color:#F00
}
#poll button {
	margin-bottom:1px;
	vertical-align:middle
}
#nav li.pollselect {
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
/* **************** FOOTER */
/* footer.html */
div.footer ul {
	margin: 5px
}
div.footer li {
	margin: 0
}
div.footer b {}

ul.textfooter {
	margin: 5px 0
}
ul.textfooter,  ul.textfooter ul {
	list-style-type: none
}
ul.textfooter li {
	display: inline
}

/* ============================================= STYLESWITCHER =========================================== */
div.styleswitcher {
	position: static;
	color: #212121
}
div.styleswitcher a.active {
	color: #FF9E5F
}
div.footer ul.addClass {
	margin: 15px auto 22px;
	padding: 7px 0px
}
div.footer ul.addClass li {
	display: inline;
	margin: 4px;
}
div.footer ul.addClass li a {
	padding: 9px 5px;
	border: 1px solid #656565;
	background: #FFF;
}
.envi div.form_holder a {
	color: #666;
}
.envi div.form_holder a:hover {
	color: #BD0000
}
.envi div.form_holder a.active {
	color: #BD0000
}
.envi div.form_holder ul.addClass a {
	color: #666;
}
div.form_holder ul.addClass a:hover,
div.form_holder ul.addClass a.active {
	color: #FFF;
	border: 1px solid #000;
	background-color: #000;
}
/* Popup info about Envi Template */
div.envi_info {
	position: absolute;
	bottom: 5px;
	right: 35px
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
	pointer-events: none
}
.modalDialog:target {
	opacity:1;
	pointer-events: auto
}
.modalDialog > div {
	width: 400px;
	padding: 13px 20px;
	background-color: #FFF;
	position: fixed;
	top: 50%;
	left: 50%;
	-webkit-transform: translate(-50%, -50%);
			transform: translate(-50%, -50%);
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
	background: #2D2D2E;
	color: #FFF !important;
	line-height: 25px;
	position: absolute;
	right: -12px;
	text-align: center;
	top: -10px;
	width: 24px;
	text-decoration: none;
	font-weight: 800;
	-webkit-border-radius: 14px;
		-moz-border-radius: 14px;
			border-radius: 14px;
	-webkit-box-shadow: 1px 1px 3px #000;
		-moz-box-shadow: 1px 1px 3px #000;
			box-shadow: 1px 1px 3px #000;
	border: 2px solid #FFF
}
.close:hover {
	background-color: #000;
	color: #FFF
}
/* Popup color settings */
.openModalColorBox,
.openModalResetBox {
	position: fixed;
	display: none;
	background: rgba(0,0,0,0.8);
	z-index: 1030;
	top: 0px;
	right: 0px;
	bottom: 0px;
	left: 0px;
	-webkit-transition: opacity 400ms ease-in;
	   -moz-transition: opacity 400ms ease-in;
			transition: opacity 400ms ease-in;
}
.openModalColorBox > div,
.openModalResetBox > div {
	width: 600px;
	height: 350px;
	padding: 15px;
	background-color: #FFF;
	position: fixed;
	top: 50%;
	left: 50%;
	-webkit-transform: translate(-50%, -50%);
			transform: translate(-50%, -50%);
}
#save_color_text {
	font-size: 11px;
	width: 100%;
	height: 93%;
	font-family: "Courier New",monospace;
	text-align: left;
	border: 1px dotted #AAA;
	background-color: #FAFAFA;
	color: #666;
	padding: 10px;
}
/* jQuery Style Switcher for Designers */
.demo_changer {
	z-index: 900;
	position: absolute;
	left: 0;
	bottom: 30px;
	font-family: Arial;
	display: table
}
.line {
	border-bottom: 1px solid #E0E0E0;
	clear: both;
	margin: 10px !important
}
.demo_changer .demo_icon {
	background-color: rgba(255, 255, 255, 0.8);
	background-repeat:no-repeat;
	background-position: center;
	cursor: pointer;
	height: 40px;
	width: 40px;
	-webkit-border-radius: 0 2px 2px 0;
	   -moz-border-radius: 0 2px 2px 0;
			border-radius: 0 2px 2px 0;
	bottom: 0
}
.demo_changer.active .demo_icon {
	position: absolute;
	display: table-cell;
	bottom: 0;
	right: -40px
	
}
.demo_icon span.menu_icons,
.envi .demo_icon span.menu_icons {
	position: relative;
	top: 9px;
	left: 2px
}
.envi .demo_icon svg.svg_icons {
	fill:#000;
}
.envi .demo_icon:hover svg.svg_icons {
	fill:#F02;
}
.demo_changer .form_holder {
	float: left;
	-webkit-box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.3);
	   -moz-box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.3);
			box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.3);
	width: 642px;
	height: 376px;
	border: 1px solid #DDD;
	display: none;

	/* BACKGROUND COLOR */
	/* Old browsers */
	background: #FFF;
	/* Webkit (Chrome10+/Safari5.1+) */
	background-image: -webkit-linear-gradient(bottom, #FFF 0%, #EAEAEA 100%);
	/* Firefox */
	background-image: -moz-linear-gradient(bottom, #FFF 0%, #EAEAEA 100%);
	/* IE10+ */
	background-image: -ms-linear-gradient(bottom, #FFF 0%, #EAEAEA 100%);
	/* W3C Markup, IE10 Release Preview */
	background-image: linear-gradient(to bottom, #FFF 0%, #EAEAEA 100%);
}
.demo_changer .form_holder .form_holder_left  {
	float: left;
	width: 200px;
	margin: 0px 5px 0px 10px;
}
.demo_changer .form_holder .form_holder_center  {
	float: left;
	width: 200px;
	margin: 0px 5px 0px 5px;
}
.demo_changer .form_holder .form_holder_right  {
	float: left;
	width: 200px;
	margin: 0px 10px 0px 5px;
}
.demo_changer .form_holder_one {
	float: left;
	width: 100%;
}
.demo_changer #ext_settings {
	display: none;
	background-color: #FFF;
	z-index: 1030;
	clear: both;
	height: 376px;
	position: absolute;
	top: 1px;
	left: 0;
	width: 642px;

	/* BACKGROUND COLOR */
	/* Old browsers */
	background: #FFF;
	/* Webkit (Chrome10+/Safari5.1+) */
	background-image: -webkit-linear-gradient(bottom, #FFF 0%, #EAEAEA 100%);
	/* Firefox */
	background-image: -moz-linear-gradient(bottom, #FFF 0%, #EAEAEA 100%);
	/* IE10+ */
	background-image: -ms-linear-gradient(bottom, #FFF 0%, #EAEAEA 100%);
	/* W3C Markup, IE10 Release Preview */
	background-image: linear-gradient(to bottom, #FFF 0%, #EAEAEA 100%);

}
.demo_changer #ext_settings .form-group {
	margin: 5px 0;
}
.demo_changer.active .form_holder {
	display: table-cell
}
.demo_changer tr:nth-child(4n) label {
	cursor: pointer
}
.fontchange tr td,
.otherchange tr td {
	background: transparent
}
.form_holder select {
	font: 13px Arial,sans-serif;
	color: #666;
	width: 80px;
	background: #FFF;
	padding: 0
}
.form_holder td {
	background: #FFF;
	color: #666;
}
/* Buttons in StyleSwitcher */
.form_holder #reset,
.openModalResetBox #resetall,
.openModalResetBox #resetindividual,
.form_holder #show_ext,
.form_holder #show_color {
	font-weight: 700;
	font-size: 11px;
	font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
	color: #FFF;
	padding: 1px 6px;
	cursor:pointer;
	border: 1px solid transparent;
	height: 23px;
	text-transform: uppercase
}
.form_holder #reset,
.openModalResetBox #resetall {
	width: 115px;
	background: #BD0000;
}
.openModalResetBox #resetindividual {
	width: 160px;
	background: #BD0000;
}
.form_holder #show_ext,
.form_holder #show_color {
	width: 170px;
	margin-bottom: 10px;
	background: #BD0000;
	-webkit-border-radius: 0;
	   -moz-border-radius: 0;
			border-radius: 0;
}
.form_holder #show_ext:hover,
.form_holder #show_color:hover {
	box-shadow: none;
}
.form_holder #reset:hover,
.openModalResetBox #resetall:hover,
.openModalResetBox #resetindividual:hover,
.form_holder #show_ext:hover,
.form_holder #show_color:hover {
	background: #000
}
/* Buttons for DIV 'id="openModalColorBox"' */ 
#savecolor input {
	width: 170px;
	margin-bottom: 10px;
	margin-top: 8px;
}
/* */
div.envi_info {
	position: static
}
.styleswitcher-label {
	font-size: 12px;
	font-weight: bold;
	padding: 6px 10px;
	margin: 0px 0px 5px;
	color: #333;
	border-bottom: 1px solid #DDD;
	text-align: center
}
.section-label {
	font-weight: bold;
	padding: 6px 10px;
	margin: 0px 0px 5px;
	background: none repeat scroll 0% 0% #E5E5E5;
	color: #333;
	text-shadow: 1px 1px 0px #FFF;
	border-bottom: 1px solid #B8B8B8;
	box-shadow: -1px 2px 3px rgba(0, 0, 0, 0.1);
	background: -moz-linear-gradient(center top , #F5F5F5, #DDD)
	text-align: left
}
/* Info icons in StyleSwitcher */
.sectioninfo {
	cursor: pointer;
	width: 16px;
	height: 16px;
	display: inline-block;
	right: 0px;
	float: right;
	background: none repeat scroll 0% 0% rgba(0, 0, 0, 0.15);
	border-radius: 10px;
}
.sectioninfo:hover {
	background: none repeat scroll 0% 0% rgba(0, 0, 0, 0.3);
}
.sectioninfo_icon {
	background-image: url("data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pg0KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDE4LjEuMSwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPg0KPHN2ZyB2ZXJzaW9uPSIxLjEiIGlkPSJDYXBhXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4Ig0KCSB2aWV3Qm94PSIwIDAgMzIgMzIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDMyIDMyOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+DQo8Zz4NCgk8ZyBpZD0iaW5mbyI+DQoJCTxnPg0KCQkJPHBhdGggc3R5bGU9ImZpbGw6IzAzMDEwNDsiIGQ9Ik0xMCwxNmMxLjEwNSwwLDIsMC44OTUsMiwydjhjMCwxLjEwNS0wLjg5NSwyLTIsMkg4djRoMTZ2LTRoLTEuOTkyYy0xLjEwMiwwLTItMC44OTUtMi0yTDIwLDEySDgNCgkJCQl2NEgxMHoiLz4NCgkJCTxjaXJjbGUgc3R5bGU9ImZpbGw6IzAzMDEwNDsiIGN4PSIxNiIgY3k9IjQiIHI9IjQiLz4NCgkJPC9nPg0KCTwvZz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjwvc3ZnPg0K");
	background-repeat: no-repeat;
	background-position: 4px 2px;
	background-size: 8px 10px;
	width: 16px;
	height: 16px;
}
.sectioninfo:hover .sectioninfo_detail {
	text-shadow: none;
	text-align: left;
	font-weight: 300;
	display: block;
	z-index: 1000;
	position: relative;
	background-color: #515151;
	color: #FFF;
	width: 200px;
	padding: 13px;
	top: -24px;
	left: 29px;
	opacity: 1;
	transition: opacity 0.5s ease 0s;
}
.sectioninfo_detail {
	display: none;
	opacity: 0;
}
div.footer .sectioninfo_detail li {
	color: #FFF !important;
	list-style-type: inherit;
	margin-left: 10px;
}

/* Css triangle trick for tooltip for help in StyleSwitcher*/
.sectioninfo:hover .sectioninfo_detail:before {
	content:'';
	display:block;
	width:0;
	height:0;
	position:absolute;
	border-top: 8px solid transparent;
	border-bottom: 8px solid transparent;
	border-right: 8px solid rgb(81, 81, 81);
	left: -8px;
	top:7px;
}

/* List of colors, background, patterns, body font color */
ul.backchange,
ul.patchange,
ul.colchange {
	width:auto;
	line-height: 30px;
	padding: 0 10px
}
ul.colchange {
	height: 30px
}
ul.backchange,
ul.patchange {
	height: 55px
}
ul.backchange li,
ul.patchange li,
ul.colchange li {
	list-style: none;
	cursor: pointer;
	border: 3px solid #E1E1E1
}
ul.backchange li,
ul.patchange li,
ul.colchange li {
	margin: 4px 5px;
	padding: 7px;
	display:block;
	float: left
}
ul.colchange li {
	background-image: url(data:image/gif;base64,R0lGODlhDgAPAPABAENHTf///yH5BAEAAAEALAAAAAAOAA8AAAIdjI+pCpvQnIHR0cquvfhwmH3PB3pkGZzUpILt+xUAOw==) !important;
}
ul.backchange li:hover,
ul.patchange li:hover,
ul.colchange li:hover {
	border: 3px solid #F02
}
ul.backchange li.active,
ul.patchange li.active,
ul.colchange li.active {
	border: 3px solid #F02
}

ul.fontcolorchange,
ul.linkcolorchange, {
	height: 20px
}
div.footer ul.fontcolorchange,
div.footer ul.linkcolorchange {
	margin: 0
}
ul.fontcolorchange li,
ul.linkcolorchange li {
	padding: 7px;
	display: block;
	float: left;
	list-style: none;
	cursor: pointer;
	border: 3px solid #E1E1E1
}
ul.fontcolorchange li {
	margin: 0px 5px;
}
ul.linkcolorchange li {
	margin: 4px 5px;
}
ul.fontcolorchange li:hover,
ul.fontcolorchange li.active,
ul.linkcolorchange li:hover,
ul.linkcolorchange li.active {
	border: 3px solid #F02
}
ul.linkcolorchange li#linkcolorchange_list {
	background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAMAAAAolt3jAAABYlBMVEX/TTT/Ohn/MAVL/wA2/wD/JwD/WUIn/wD/GwD/VT0t/wD/HwD/Riv/QSRS/wZE/wA+/wD9/gC1tbX/wgC9vb2tra3/ygTl/wDi/wDg/wDF/wC+/wCf/wD/5wD/5QD/4wD/pADMzMz/bz//uTn/njX/6jH/gTH/0C7/mSf/eiP/Wx7/rQNw/wL/jgKO/wHB/wCo/wCk/wCH/wCC/wB5/wBo/wBh/wBV/wD/xgD/qAD/hgD/gQD/aQD/XwD/SwD/PwDa2tqlpaWcnJz/ikD/oj7/hjr/0jn/ajXp/zP9/jL/ZTD/tS/N/y3n/yv9/ir/YSr/tCez/yb/6SbL/yX/ziPn/yL9/iH/siCV/x+w/xz/lBz/6BvK/xn/zRn/dhjm/xX/rxV1/xP9/hL/VRL/kRGS/xCu/wz/6Az/cgzJ/wn/UQfl/wX/bgKs/wHI/wCa/wB9/wBb/wD/nwD/igD/ZAD/RQCI88vuAAAAEXRSTlPc3Nzc3Nz19fXg4ODc3Nzc3LbKYVoAAAC5SURBVAgdBcGxasJQFIDhv8fBii5iHaRDurgpOmiDWnEU3Ap5D6HvVRe3rkVUCiJkEYS+QKeaS27izfX4ffI4m04+GkG99bwchGUpASsAPqEk19dQAYC38VXY7wBFn/jeIB5GrTZAE2pCp/8FwB+qKpoXXH4VRcEI2zQEAAqL1PhJhwDRFKqibQ52viByeTgsi3Ge3Jp3kyTJuit4Chdbk9ps/xBL5RxwIs6y/PjvvXhuLwQ4ZxKhdwe3GU2mT45bywAAAABJRU5ErkJggg==);
}
#linkcolorchange_list {
	position: relative;
}
#linkcolorchange_list:hover .minipicker_wrapper {
	display: block;
	position: absolute;
}
.minipicker_wrapper {
	display: none;
	width: 120px;
	position: absolute;
	bottom: 2px;
	padding: 5px;
	border: 1px solid #CCC;
	background-color: #F7F7F7;
	box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.2);
	z-index: 99999;
}
div.footer ul.minipicker_linkcolorchange {
	height: 55px;
	margin: 0;
}

/* ============================================= STYLESWITCHER - COLOR SETTINGS ========================== */
/* **************** 1. TEMPLATE COLOR STYLE */
[data-style="colorstyle_0"] {
	background: #BD0000 !important
}
[data-style="colorstyle_1"],
li.colorstyle_1 {
	background: #16B6C6 !important
}
[data-style="colorstyle_2"],
li.colorstyle_2 {
	background: #FF9C00 !important
}
[data-style="colorstyle_3"],
li.colorstyle_3 {
	background: #FFE400 !important
}
[data-style="colorstyle_4"],
li.colorstyle_4 {
	background: #7CB600 !important
}

/* **************** 2. BACKGROUND COLOR SETTINGS */
[data-style="background_1"],
.background_1{
	background: #FFF !important
}
[data-style="background_2"],
.background_2 {
	background: #F2F2F2 !important
}
[data-style="background_3"],
.background_3 {
	background: #E5E5E5 !important
}
[data-style="background_4"],
.background_4 {
	background: #CCC !important
}
[data-style="background_5"],
.background_5 {
	background: #B3B3B3 !important
}
[data-style="background_6"],
.background_6 {
	background: #999 !important
}
[data-style="background_7"],
.background_7 {
	background: #CDB38B !important
}
[data-style="background_8"],
.background_8 {
	background: #946D40 !important
}
[data-style="background_9"],
.background_9 {
	background: #71918A !important
}

/* **************** 3. PATTERNS COLOR SETTINGS */
[data-style="patchange_1"],
.patchange_1 {
	background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFAQMAAAC3obSmAAAABlBMVEUAAAAAAAClZ7nPAAAAAnRSTlMAGovxNEIAAAASSURBVAjXY3BgaGDgYBBgUAAABkIA+ddj1LAAAAAASUVORK5CYII=) !important
}
[data-style="patchange_2"],
.patchange_2 {
	background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAYAAADED76LAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAF5JREFUeNpcTkEOwCAIA+IPOOz/z/OwH5ggXdB0cGml0lYjQjCqKsk9cSSuXL3Ym9QcMeks9O+wHK5Ijg+clGyntMEno8wuInYZLjmzFwaRykWmn8J4c8l/MSq8BRgAk3tHpOGq6zwAAAAASUVORK5CYII=) !important
}
[data-style="patchange_3"],
.patchange_3 {
	background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAIAQMAAAD+wSzIAAAABlBMVEUAAAAAAAClZ7nPAAAAAnRSTlMAITr63WYAAAAMSURBVAjXY2hgQAEAB5AAgRJ4xJ4AAAAASUVORK5CYII=) !important
}
[data-style="patchange_4"],
.patchange_4 {
	background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKAAAACgAQMAAACxAfVuAAAABlBMVEUAAADIyMisR2nzAAAAAXRSTlMAQObYZgAAAG9JREFUSMdj4HEWOGKIRjAItSzU8EIjGBQ5nARa0AgGpwlLNLnQCIaWRAk3QTSCoUeZ45ABGsEQJNKq6IFGYLcoYIoqpxMawdCRJNGmiEaM+mjUR6M+GvXRqI9GfTTqo1Efjfpo1EejPhr1EXk+AgCf3nyuMf+muAAAAABJRU5ErkJggg==) !important
}
[data-style="patchange_5"],
.patchange_5 {
	background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAIAAAADAgMAAADEhDYSAAAACVBMVEUAAACZmZmZmZl+xtzIAAAAA3RSTlMAUkwNkfazAAAADklEQVQI12NoYHBgYAAAA0YAwS3hRw0AAAAASUVORK5CYII=) !important
}
[data-style="patchange_6"],
.patchange_6 {
	background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAYAAADED76LAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjAxNjE3MEZEMDk1NTExRTJBOEFBODlEOTM4RDQ0RjE2IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjAxNjE3MEZFMDk1NTExRTJBOEFBODlEOTM4RDQ0RjE2Ij4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6MDE2MTcwRkIwOTU1MTFFMkE4QUE4OUQ5MzhENDRGMTYiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MDE2MTcwRkMwOTU1MTFFMkE4QUE4OUQ5MzhENDRGMTYiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz5y8/ZSAAAAG0lEQVR42mJgYGCQYoAAXDRhQLzKwWoCQIABAIzIALcl0Ly6AAAAAElFTkSuQmCC) !important
}
[data-style="patchange_7"],
.patchange_7 {
	background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAKAQMAAACzCY3DAAAABlBMVEUAAADZ2dmIyqNWAAAAAXRSTlMAQObYZgAAABNJREFUCNdjUGRgBEIQ+AEiQDwAC2MBHqBHytkAAAAASUVORK5CYII=) !important
}
[data-style="patchange_8"],
.patchange_8 {
	background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPwAAADmCAYAAADx5uiaAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA+FpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M1IE1hY2ludG9zaCIgeG1wOkNyZWF0ZURhdGU9IjIwMTEtMTAtMTJUMTg6MTM6MTgrMDI6MDAiIHhtcDpNb2RpZnlEYXRlPSIyMDExLTEwLTEyVDE2OjE3KzAyOjAwIiB4bXA6TWV0YWRhdGFEYXRlPSIyMDExLTEwLTEyVDE2OjE3KzAyOjAwIiBkYzpmb3JtYXQ9ImltYWdlL3BuZyIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDpEN0ZDMjJERkVEMTAxMUUwODA4OEY5QUFEQTQzOTFCNyIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDpEN0ZDMjJFMEVEMTAxMUUwODA4OEY5QUFEQTQzOTFCNyI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOkQ3RkMyMkRERUQxMDExRTA4MDg4RjlBQURBNDM5MUI3IiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOkQ3RkMyMkRFRUQxMDExRTA4MDg4RjlBQURBNDM5MUI3Ii8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+59nK8wAABF5JREFUeNrs3FturDAURFHzmP+MwTdIaekOwKVQ6rWk/FqN8Sbwc7YxxvHzt4/1rsXrbT9/9+I1j8B1P3s57efS/bwL9jNx34/EZgJfQvAgeEDwgOABwQOCBwQPCB4QPCB4QPCA4EHwgOABwQOCBwQP/KntN/otsO4MrDlKfmfDmo+75B413Pc5CkaGnSMzLyz1EBkFN6llVlzCHXrYbYHzOULnaaVrlFw44BseEDwgeEDwgOABwQOCB8EDggcEDwgeEDwgeEDwgOABwQOCBwQPX+uZaZeYFdcyMywxL20L7ekI/M695B7Ngv2cDffo/G/hhg1dPRwydeBnwZqJa99DB79hwmzqoeyVHhA8IHhA8CB4QPCA4AHBA4IHBA8IHhA8IHhA8IDgQfCA4AHBA4IH3uz8jX717KxnzbtkDxLXnlgzcd33y/fys+YsuEePqyH4xI2aocPUML009RBpGQ45CtZMPpxe/RDxSg++4QHBA4IHBA8IHhA8IHhA8IDgAcEDggfBA4IHBA8IHhA8IHhA8MBin5l2iSGB5+I1E0MX99CaM3DtiTX3kt+52izZz+XXf/4e+IbJrVvo5jccpuceXYF71DB08h6Zgair1zy80gOCBwQPCB4QPCB4QPCA4EHwgOABwQOCBwQPCB4QPCB4QPCA4AHBwxc6R2a2WWJWWmKmXcuAxJTE9d8l9/0ouT/76uATA/3uwKE/QhuaeNg1DJxMxX6VBJ9wvf3Me6UH3/CA4AHBA4IHBA8IHhA8IHhA8IDgAcGD4AHBA4IHBA8IHhA8IHhgsc9Mu9WzsxKDHFODMUfBuqm5bomBk4nZgw1DQRPXfiSCT23m6nWvkoO0jQ53IPh9dEzCTfxDOkIP5bn6BgG+4QHBA4IHBA8IHhA8IHhA8IDgAcEDggfBA4IHBA8IHhA8IHhA8MBCyZl2LcMMG+batczJ20rWTHn9WXqCv0fHQL/EhiauPTFhtmXQ6CwJdAudpfvtZ8krPfiGBwQPCB4QPCB4QPCA4AHBA4IHBA8IHgQPCB4QPCB4QPCA4AHBA4s9M+2e+XNXwW/dQg+olsGYif1cPWh0L7n2xG/cR8Hw0nNkhi6OwEPkCN2kO7DuHTig3zpodAbOUurBtL39LHmlB9/wgOABwQOCBwQPCB4QPCB4QPCA4AHBg+ABwQOCBwQPCB4QPCB4YLEzGP7q+V6JGWR36LqPwLXPgv3cQuc0MRwyseb99v08R8eU0U+cs+DGp96aVl/7VfAbkw+RxPl8/fBSr/TgGx4QPCB4QPCA4AHBA4IHBA8IHhA8IHgQPCB4QPCA4AHBA4IHBA8sdgYfJIlZZIkhgQ0z/VKz4vaC3zpL7lHFfp6hDU0Ev5XENEdmGu744v1MDPD8yuGlXunBNzwgeEDwgOABwQOCBwQPCB4QPCB4QPAgeEDwgOABwQOCBwQPCB5Y7Jlpd4QeJImBk4k5eQ3z/B5XwXlqGYyZWjOxn0v7/CfAAMrKqB7xcqi5AAAAAElFTkSuQmCC) !important
}
/* Special settings for pattern number 9 with black full image */
[data-style="patchange_9"],
.patchange_9 {
	background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGQAAABkAgMAAAANjH3HAAAACVBMVEUoKCgzMzM4ODj/n5c0AAACQ0lEQVRIx4zRu23DQBAGYRY5AQtgsAVdsAVsMGUa97BJ0aKtAQMJH+7AH9wASQ0FZKZOUb1Jdgm03aVtzylnaqgEcJca4hvJbvPMc+t6qFyrVqdo5F3OM+lFnjPTXuJ1VrFZjo5X2dkirUr1KpX+vedMq4rVi+yV6VuJqooP9hBZIj+tAbFhl/2UPKXK2wtS4Md7FIhx9ztJf0tOiX/2KGGhgcyK0NgstKESS8Y/N8WQ60eVXevvPUIrDoNrXQqUw/wlzkdf5TkEM5VKIjEPRdgosMf3c9SShBpSBx6kOuU5AoRUIZORwpB1IRhTIro0EIwmLMD6Z4/IyBJkLRjSppQBQSvRGLJPyf5DMqc8J/X9iVGFCFS7DJO2xESziwQQFOoBtc4899VYHRxJCMNAACRIPRyAHxOQHwpgHhPmnSUta9i9MxQfqqFUVkkDzfLwMUSufIoUM+uBcYqU/hLEPdzce4h2c52trjV452+fQjMhhadoSrt+w5TNvK1ZoGqR3QVN+C6Uc8om39ShdR1qLqaQJa+0HiUx5dFGBsh2eeAygNfoFUQdlLnGr/hJTdMOKU9uOmVo2pN8y4B5r/5F3AR9lR76JA94DY9aHz8M+hSn6TDdBIINGLfnUb0umumSyp5tidGSVmlVPITbuQYINJGi5ZVpdkiMpovSKUhx7x6CVcY/dbK9btKtGVNGCD8EiuUK0MO8bt0ASPCKBWko6yCrc05wipcMw1JDDombOrX25Lp9XnmdrV/k/C94TPn9mz+vH1BbRybaAeEvAAAAAElFTkSuQmCC) !important
}
.patchange_9 p,
.patchange_9 div.debugmenu,
.patchange_9 div.logmenu,
.patchange_9 td#TfootDiv,
.patchange_9 li.text_entitle,
.patchange_9 ul#regexdatainput,
.patchange_9 div.warning {
	color: #FFF;
}
.patchange_9 div.logmenu a:link, 
.patchange_9 div.logmenu a:visited, 
.patchange_9 div.logmenu a:active,
.patchange_9 div.debugmenu a:link, 
.patchange_9 div.debugmenu a:visited, 
.patchange_9 div.debugmenu a:active {
    color: #117AD0;
}
.patchange_9 div.logmenu a:hover,
.patchange_9 div.debugmenu a:hover {
    color: #6CB7F4;
}
.patchange_9 div.debugmenu a.debugl:hover,
.patchange_9 div.debugmenu a.debugs:hover,
.patchange_9 div.debugmenu a.debugls:link,
.patchange_9 div.debugmenu a.debugls:visited {
    color: #FFF;
}

/* **************** 4. BODY FONT COLOR SETTINGS */
/* ------- Class 'fontcolorchange_0' ------- */
/* Color for StyleSwitcher */
[data-style="fontcolorchange_0"] {
	background: #000 !important
}
/* Set color for text in Body */
.fontcolorchange_0 p,
.fontcolorchange_0 div.debugmenu,
.fontcolorchange_0 div.logmenu,
.fontcolorchange_0 td#TfootDiv,
.fontcolorchange_0 li.text_entitle,
.fontcolorchange_0 ul#regexdatainput,
.fontcolorchange_0 div.warning {
	color: #000 !important
}
/* Exclusion of styles in 'P' 
 * td.subheadline p - in 'TH' in 'status.html'
 * p - in modal dialog in Info about Envi Template
 * p.thanks - in modal dialog in Info about Envi Template
 */
.fontcolorchange_0 td.subheadline p {
	color: #FFF !important
}
.fontcolorchange_0 .modalDialog p {
    color: #000 !important
}
.fontcolorchange_0 .modalDialog p.thanks {
    color: #BBB !important
}
/* Exclusion of styles in 'B' 
 * 'b' - in modal dialog in Info about Envi Template
 */
.fontcolorchange_0 .modalDialog b {
    color: #A3A3A3 !important
}
/* ------- Class 'fontcolorchange_1' ------- */
/* Color for StyleSwitcher */
[data-style="fontcolorchange_1"] {
	background: #FFF !important
}
/* Set color for text in Body */
.fontcolorchange_1 p,
.fontcolorchange_1 div.debugmenu,
.fontcolorchange_1 div.logmenu,
.fontcolorchange_1 td#TfootDiv,
.fontcolorchange_1 li.text_entitle,
.fontcolorchange_1 ul#regexdatainput,
.fontcolorchange_1 div.warning {
	color: #FFF !important
}
/* Exclusion of styles in 'P' 
 * p.thanks - in modal dialog in Info about Envi Template
 * p - in modal dialog in Info about Envi Template
 */
.fontcolorchange_1 .modalDialog p {
    color: #000 !important
}
.fontcolorchange_1 .modalDialog p.thanks {
    color: #BBB !important
}
/* Exclusion of styles in 'B' 
 * 'b' - in modal dialog in Info about Envi Template
 */
.fontcolorchange_1 .modalDialog b {
    color: #A3A3A3 !important
}
/* **************** 5. BODY LINK COLOR SETTINGS */
/* ------- Class 'linkcolorchange_1' ------- */
/* Color for StyleSwitcher */
[data-style="linkcolorchange_1"] {
	background: #00AAA0 !important
}
/* Color for links */
.linkcolorchange_1 a,
.linkcolorchange_1 a:link,
.linkcolorchange_1 a:visited,
.linkcolorchange_1 a:active {
	color: #00AAA0 !important
}
.linkcolorchange_1 a:hover {
    color: #07726A !important
}
.linkcolorchange_1 #nav a {
	color: #2E2E2E !important;
}
.linkcolorchange_1 #nav li.configmenu_selected > a:link,
.linkcolorchange_1 #nav li.configmenu_selected > a:visited,
.linkcolorchange_1 #nav li.configmenu_selected > a:active,
.linkcolorchange_1 #nav li.configmenu > a:hover {
	color: #00AAA0 !important
}
.linkcolorchange_1 li.menu a {
	color: #FFF !important
}
.linkcolorchange_1 li.menu:hover a {
	color: #00AAA0 !important
}
/* ------- Class 'linkcolorchange_2' ------- */
/* Color for StyleSwitcher */
[data-style="linkcolorchange_2"] {
	background: #FF9900 !important
}
/* Color for links */
.linkcolorchange_2 a,
.linkcolorchange_2 a:link,
.linkcolorchange_2 a:visited,
.linkcolorchange_2 a:active {
	color: #FF9900 !important
}
.linkcolorchange_2 a:hover {
    color: #CC7A00 !important
}
.linkcolorchange_2 #nav a {
	color: #2E2E2E !important;
}
.linkcolorchange_2 #nav li.configmenu_selected > a:link,
.linkcolorchange_2 #nav li.configmenu_selected > a:visited,
.linkcolorchange_2 #nav li.configmenu_selected > a:active,
.linkcolorchange_2 #nav li.configmenu > a:hover {
	color: #FF9900 !important
}
.linkcolorchange_2 li.menu a {
	color: #FFF !important
}
.linkcolorchange_2 li.menu:hover a {
	color: #FF9900 !important
}
/* ------- Class 'linkcolorchange_3' ------- */
/* Color for StyleSwitcher */
[data-style="linkcolorchange_3"] {
	background: #FC0 !important
}
/* ------- Class 'linkcolorchange_4' ------- */
/* Color for StyleSwitcher */
[data-style="linkcolorchange_4"] {
	background: #2C6700 !important
}
/* ------- Class 'linkcolorchange_5' ------- */
/* Color for StyleSwitcher */
[data-style="linkcolorchange_5"] {
	background: #BFA980 !important
}
/* ------- Class 'linkcolorchange_6' ------- */
/* Color for StyleSwitcher */
[data-style="linkcolorchange_6"] {
	background: #911938 !important
}
/* ------- Class 'linkcolorchange_7' ------- */
/* Color for StyleSwitcher */
[data-style="linkcolorchange_7"] {
	background: #74AEA1 !important
}
/* ------- Class 'linkcolorchange_8' ------- */
/* Color for StyleSwitcher */
[data-style="linkcolorchange_8"] {
	background: #784E3D !important
}
/* **************** 6. SIMPLE COLOR PICKER */
.minicolors {
	position: relative;
}
.minicolors-swatch {
	position: absolute;
	vertical-align: middle;
	border: solid 1px #ccc;
	cursor: text;
	padding: 0;
	margin: 0;
	display: inline-block;
}
.minicolors-swatch-color {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
}
.minicolors input[type=hidden] + .minicolors-swatch {
	width: 20px;
	position: static;
	cursor: pointer;
}

/* Panel */
.minicolors-panel {
	position: absolute;
	width: 173px;
	height: 152px;
	background: white;
	border: 1px solid #BBB;
	box-shadow: 0 0 20px rgba(0, 0, 0, .2);
	z-index: 99999;
	-moz-box-sizing: content-box;
	-webkit-box-sizing: content-box;
	box-sizing: content-box;
	display: none;
	padding: 5px 13px 3px 0;
	border-radius: 5px;
}
.minicolors-panel.minicolors-visible {
	display: block;
}

/* Panel positioning */
.minicolors-position-top .minicolors-panel {
	top: -157px;
}
.minicolors-position-right .minicolors-panel {
	right: 0;
}
.minicolors-position-bottom .minicolors-panel {
	top: auto;
}
.minicolors-position-left .minicolors-panel {
	left: 0;
}
.minicolors-with-opacity .minicolors-panel {
	width: 194px;
}
.minicolors .minicolors-grid {
	position: absolute;
	top: 5px;
	left: 5px;
	width: 150px;
	height: 150px;
	background-image: url(data:image/png;base64,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);
	cursor: crosshair;
}
.minicolors .minicolors-grid-inner {
	position: absolute;
	top: 0;
	left: 0;
	width: 150px;
	height: 150px;
	background: none;
}
.minicolors-slider-saturation .minicolors-grid {
	background-position: -420px 0;
}
.minicolors-slider-saturation .minicolors-grid-inner {
	background: url(jquery.minicolors.png) -270px 0;
}
.minicolors-slider-brightness .minicolors-grid {
	background-position: -570px 0;
}
.minicolors-slider-brightness .minicolors-grid-inner {
	background: black;
}
.minicolors-slider-wheel .minicolors-grid {
	background-position: -720px 0;
}
.minicolors-slider,
.minicolors-opacity-slider {
	position: absolute;
	top: 5px;
	left: 160px;
	width: 20px;
	height: 150px;
	background-image: url(data:image/png;base64,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);
	cursor: row-resize;
}
.minicolors-slider-saturation .minicolors-slider {
	background-position: -60px 0;
}
.minicolors-slider-brightness .minicolors-slider {
	background-position: -20px 0;
}
.minicolors-slider-wheel .minicolors-slider {
	background-position: -20px 0;
}
.minicolors-opacity-slider {
	left: 173px;
	background-position: -40px 0;
	display: none;
}
.minicolors-with-opacity .minicolors-opacity-slider {
	display: block;
}

/* Pickers */
.minicolors-grid .minicolors-picker {
	position: absolute;
	top: 70px;
	left: 70px;
	width: 12px;
	height: 12px;
	border: solid 1px black;
	border-radius: 10px;
	margin-top: -6px;
	margin-left: -6px;
	background: none;
}
.minicolors-grid .minicolors-picker > div {
	position: absolute;
	top: 0;
	left: 0;
	width: 8px;
	height: 8px;
	border-radius: 8px;
	border: solid 2px white;
	-moz-box-sizing: content-box;
	-webkit-box-sizing: content-box;
	box-sizing: content-box;
}
.minicolors-picker {
	position: absolute;
	top: 0;
	left: 0;
	width: 18px;
	height: 2px;
	background: white;
	border: solid 1px black;
	margin-top: -2px;
	-moz-box-sizing: content-box;
	-webkit-box-sizing: content-box;
	box-sizing: content-box;
}

/* Inline controls */
.minicolors-inline {
	display: inline-block;
}
.minicolors-inline .minicolors-input {
	display: none !important;
}
.minicolors-inline .minicolors-panel {
	position: relative;
	top: auto;
	left: auto;
	box-shadow: none;
	z-index: auto;
	display: inline-block;
}

/* Default theme */
.envi .minicolors-theme-default .minicolors-swatch {
	top: 3px;
	left: 3px;
	width: 18px;
	height: 18px;
}
	/* Text box settings of color picker if original webif is active */
	.minicolors-theme-default .minicolors-swatch {
		top: 3px;
		left: 3px;
		width: 18px;
		height: 18px;
	}
.envi .minicolors-theme-default.minicolors-position-right .minicolors-swatch {
	left: auto;
	right: 5px;
}
.envi .minicolors-theme-default.minicolors {
	width: auto;
	display: inline-block;
}
	/* Text box settings of color picker if original webif is active */
	.minicolors-theme-default.minicolors {
		width: auto;
		display: inline-block;
	}
.envi .minicolors-theme-default .minicolors-input {
	height: 26px;
	width: auto;
	display: inline-block;
	padding-left: 26px;
	width: 92px;
	font-size: 12px;
}
	/* Text box settings of color picker if original webif is active */
	.minicolors-theme-default .minicolors-input {
		padding-left: 26px;
	}
.envi .minicolors-theme-default.minicolors-position-right .minicolors-input {
	padding-right: 26px;
	padding-left: inherit;
}

/* Custom settings */
.envi .form-group label {
	color: #666;
}
.envi input[type="text"].color-picker {
	border: 3px solid #E1E1E1;
	width: 95px;
}
	/* Text box settings of color picker if original webif is active */
	input[type="text"].color-picker {
		border: 3px solid #E1E1E1;
		width: 95px;
	}
.envi input[type="text"].color-picker:hover,
.envi input[type="text"].color-picker.active {
	border: 3px solid #F02;
}
/* ==================================================================  ENVI TEMPLATE - BASIC STYLE */

/* **************** 2. BASIC DIVISION PAGES */
.envi #content {padding:80px 8px 125px}

/* **************** 3. BASIC SETTINGS - BODY,P,H4,LI,B */
body.envi {
	background-image: url('data:image/gif;base64,R0lGODlhEAAMAPAAAOTk5PLy8iH5BAAAAAAALAAAAAAQAAwAAAIURG54kesPo5yx2dWo3lx5hnXiCBUAOw==')
}
/* file.html, script.html */
.envi #filename {
	margin-top: 0
}
/* footer.html */
.envi div.footer li.styleauthor b:after {
	content:"Skyndas"
}
.envi li.styleauthor:after {
	content:" for Streamboard Team"
}

/* **************** 5. MAIN MENU */
.envi #main {
	width: 100%;
	height: 40px;
	position: fixed;
	right: 0;
	left: 0;
	top: 0;
	z-index: 1050;

	/* BACKGROUND COLOR */
	/* Old browsers */
	background: #131517;
	/* Webkit (Chrome10+/Safari5.1+) */
	background: -webkit-linear-gradient(bottom, #212121 0%, #000000 100%);
	/* Firefox */
	background: -moz-linear-gradient(bottom, #212121 0%, #000000 100%);
	/* IE10+ */
	background: -ms-linear-gradient(bottom, #212121 0%, #000000 100%);
	/* W3C Markup, IE10 Release Preview */
	background: linear-gradient(to bottom, #212121 0%, #000000 100%);

	/* BOX SHADOW */
	-webkit-box-shadow: 0px 1px 4px #5E5E5E;
	   -moz-box-shadow: 0px 1px 4px #5E5E5E;
			box-shadow: 0px 1px 4px #5E5E5E
}
.envi #mainmenu {
	height: 27px;
	padding-top: 0;
	white-space: nowrap;
	display: inline-block;
	position: relative;
	margin-top: 10px;
	text-shadow: 1px 1px 1px #000;
	background: none
}
.envi #mainmenu li {
	display: inline;
	padding: 3px 0;
	font-size: 12px;
	font-weight: 700;
	font-family: "Helvetica Neue","Helvetica",Arial,sans-serif;
	text-transform: uppercase;
	text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.3);
	border-right: 1px solid #0A0B0C;
	border-left: 1px solid #2E3236;
	margin-left: -5px
	
}
.envi #mainmenu li:first-child {
	border-left: none
}
.envi #mainmenu li:last-child {
	border-right: none
}
.envi li.menu a,.envi li.menu a:hover,
.envi li.menu_selected a,.envi li.menu_selected a:hover {}

.envi li.menu:hover,.envi li.menu_selected, 
.envi li.configmenu:hover,.envi li.configmenu_selected {
	background: none
}
.envi li.menu a {
	color:#FFF;
	padding: 0px 7px 9px
}
.envi li.menu:hover a {
	color:#F00423;
	border-bottom: 2px solid #F00423;
}
.envi li.menu_selected a {
	color: #F00423;
	border-bottom: 2px solid #F00423;
	padding: 0px 7px 9px
}
.envi svg.svg_icons {
    fill: #FFF;
}
.envi li.menu_selected svg.svg_icons {
    fill: #F00423;
}
.envi li.menu:hover svg.svg_icons {
    fill: #F00423;
}
.envi span.menu_icons {
    padding: 0 4px 0 0;
    position: relative;
    top: 2px;
}
.envi li.menu a, .envi li.menu_selected a {
    padding: 10px 6px 5px 6px !important;
}

.envi a:hover span.menu_icons {
    display: inherit;
    position: relative;
    top: 2px;
    right: inherit;
    padding: 0 4px 0 0;
    font-weight: normal;
    text-align: inherit;
    background-color: transparent;
    border: none;
    color: #000;
}

/* **************** 6. SUBNAV */
.envi #subnav {
	position: fixed;
	top: 40px;
	left: 0;
	right: 0;
	padding: 5px 0px 5px 0px;
	z-index: 1040;
	border-bottom: 1px solid #E5E5E5;

	/* GRADIENT */
	/* Old browsers */
	background: #EEEEEE;
	/* Webkit (Chrome10+/Safari5.1+) */
	background: -webkit-linear-gradient(top, #F5F5F5 0%, #EEEEEE 100%);
	/* Firefox */
	background: -moz-linear-gradient(top, #F5F5F5 0%, #EEEEEE 100%);
	/* IE10+ */
	background: -ms-linear-gradient(top, #F5F5F5 0%, #EEEEEE 100%);
	/* W3C Markup, IE10 Release Preview */
	background: linear-gradient(to top, #F5F5F5 0%, #EEEEEE 100%);

	/* BOX SHADOW */
	-webkit-box-shadow: inset 0 1px 0 #FFF, 0 1px 5px rgba(0,0,0,0.05); 
	   -moz-box-shadow: inset 0 1px 0 #FFF, 0 1px 5px rgba(0,0,0,0.05); 
			box-shadow: inset 0 1px 0 #FFF, 0 1px 5px rgba(0,0,0,0.05)
}
.envi #nav {
	height: 22px;
	white-space: nowrap
}
.envi #nav li {
	display: inline-block;
	position: relative;
	margin: 5px 2px;
	/* padding: 0 3px; */
	font-size: 14px;
	line-height: 12px
}
.envi #nav li.pollselect {
	position: absolute;
	font-size: 12px;
	margin: 3px 2px
}
.envi input[type="text"].pintervall {
	padding: 0
}
.envi li.configmenu a,.envi li.configmenu a:hover,
.envi li.configmenu_selected a,.envi li.configmenu_selected a:hover {
	color: #050840
}
.envi #nav a {
	padding: 8px 5px;
	margin: -5px;
	color: #2E2E2E;
	font-size: 12px
}
.envi #nav li.configmenu_selected > a:link,
.envi #nav li.configmenu_selected > a:visited,
.envi #nav li.configmenu_selected > a:active,
.envi #nav li.configmenu > a:hover {
	color: #D80320
}

/* Class "blanksubnav" is added by javascript in entitlements.html, readerconfig.html and user_edit.html */
.envi #subnav.blanksubnav {
	position: absolute;
	border-bottom: none;

	/* GRADIENT */
	background: none;

	/* BOX SHADOW */
	-webkit-box-shadow: none; 
	   -moz-box-shadow: none; 
			box-shadow: none
}
.envi #subnav.blanksubnav .text_entitle {
	text-transform: uppercase;
}

/* **************** 7. TABLE */
/* ------- STATUS ------- */
/* status.html */
.envi table.status {
	border-spacing: 0px;
	border-bottom: 1px solid #222
}
/* ------- SERVICES ------- */
/* services.html */
.envi #addnewservice,
.envi #servicesedit,
.envi table.configservices {
	border-spacing: 0
}
.envi #newservice {
	margin-top: 0
}
.envi #servicesedit {
	border-bottom: 1px solid #222
}
/* ------- READERS ------- */
/* readers.html */
.envi table.readers,
.envi table.configreader {
	border-spacing: 0
}
/* emm.html */
.envi table.writeemm {
	margin-top: 0;
	border-spacing: 0
}
/* emm_running.html */
.envi table.emmrunning {
	margin-top: 0
}
.envi #newinsert table,
.envi #searchTable table.readers {
	border-spacing: 0px;
	border-bottom: none;
	margin-bottom: 10px
}
/* readerstats.html */
.envi table.statsbalance {
	border-spacing: 0px;
	border-bottom: 1px solid #222
}
/* scanusb.html */
.envi table.scanusb {
	border-spacing: 0px;
	border-bottom: 1px solid #222
}
/* ------- USERS ------- */
/* userconfig.html */
.envi table.users,
.envi table.configuser {
	border-spacing: 0
}
.envi #newinsert table,
.envi #searchTable table.users {
	border-spacing: 0px;
	border-bottom: none;
	margin-bottom: 10px
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
/* ------- CONFIG ------- */
/* userconfig.html */
.envi table.config {
	border-spacing: 0
}
/* ------- FAILBAN ------- */
/* failban.html */
.envi table.failban {
	border-spacing: 0;
	border-bottom: 1px solid #222
}
/* **************** 8. TABLE TR */
/* rowcolors for users rows in unserconfig.html depend on status */
.envi tr.online td.usercol6 {
	background-color: #BFA;
	color: #000
}
/* scanusb.html */
tr.scanusbsubhead td {
	background-color: #EBEBEB;
}

/* **************** 9. TABLE TH */
/* status.html */
.envi table.status th {
	border-right: 1px dotted #666;
	background-color: #222;
	color: #FFF;
	border-top: 1px solid #FFF;
}
.envi table.status th:last-child {
	border-right: medium none;
}
/* status_cacheexinfo.html, status_systeminfo.html, status_userinfo.html */
.envi th.nameinfo {
	background-color: #222;
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
/* readers.html */
.envi table.readers th {
	border-right: 1px dotted #666;
	color: #FFF;
	border-top: 1px solid #FFF
}
.envi table.readers th:last-child {
	border-right: none
}
/* readerstats.html */
.envi table.statsbalance th {
	border-right: 1px dotted #666;
	color: #FFF;
	border-top: 1px solid #FFF;
	padding-left: 15px;
}
.envi table.statsbalance th:last-child {
	border-right: none
}
/* scanusb.html */
.envi table.scanusb th {
	background-color: #222;
	color: #FFF;
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
/* services.html */
.envi #addnewservice th {
	border-top: 1px solid #FFF
}
.envi #servicesedit th {
	border-right: 1px dotted #666;
	border-top: 1px solid #FFF
}
.envi #servicesedit th:last-child {
	border-right: medium none;
}
/* failban.html */
.envi table.failban th {
	border-right: 1px dotted #666;
	background-color: #222;
	color: #FFF;
	border-top: 1px solid #FFF
}
/* Background color for th */
.envi table.config th,
.envi table.configreader th,
.envi table.configuser th,
.envi table.cacheex th,
.envi table.failban th,
.envi #servicesedit th,
.envi #addnewservice th,
.envi table.configservices th,
.envi table.readers th,
.envi table.writeemm th,
.envi table.emmrunning th,
.envi table.statsbalance th,
.envi table.status th,
.envi table.status td.subheadline {
	background-color: #222;
	color: #FFF
}
/* Color for sorting */
.envi table.readers .sorting-asc, .envi table.readers .sorting-desc,
.envi table.users .sorting-asc, .envi table.users .sorting-desc,
.envi table.statsbalance .sorting-asc, .envi table.statsbalance .sorting-desc {
	background-color: #5E5E5E;
}

/* **************** 10. TABLE TD */
td {
	background-color: #EBEBEB;
}
/* ------- STATUS ------- */
/* status.html */
.envi table.status td.subheadline {
	border-top: 1px solid #FFF;
	border-bottom: 1px solid #FFF
}
.envi table.status td {
	border-right: 1px dotted #999
}
.envi table.status td:last-child {
	border-right: none
}
/* ------- READERS ------- */
/* readers.html */
.envi table.readers td,
.envi table.stats td,
.envi table.statsbalance td {
	border-right: 1px dotted #999
}
.envi table.readers td:last-child,
.envi table.stats td:last-child,
.envi table.statsbalance td:last-child {
	border-right: none
}
.envi table.readers tr:hover td,
.envi table.users tr:hover td,
.envi table.statsbalance tr:hover td {
	background-color: #FCD7D7 !important
}
.envi #dataTable tr:hover td.td-sorting {
	background-color: #F2CECE !important
}
.envi .readers tr:nth-child(odd) td,
.envi .statsbalance tr:nth-child(odd) td {
	background-color: #F2F2F2
}
.envi .readers tr:nth-child(even) td,
.envi .statsbalance tr:nth-child(even) td {
	background-color: #E6E6E6
}
.envi .users tr.offline:nth-child(odd) td {
	background-color: #F2F2F2
}
.envi .users tr.offline:nth-child(even) td {
	background-color: #E6E6E6
}
.envi table.writeemm td {
	border-bottom: 1px dotted #999
}
.envi table.writeemm td:first-child {
	background-color: #D9D9D9
}
.envi table.writeemm tr:nth-last-child(-n+2) td {
	background-color: transparent;
	border-bottom: medium none;
}
.envi table.scanusb tr:nth-child(odd) td {
	background-color: #F2F2F2
}
.envi table.scanusb tr:nth-child(even) td {
	background-color: #E6E6E6
}
/* ------- USERS ------- */
/* userconfig.html */
.envi table.users td {
	border-right: 1px dotted #999
}
.envi table.users td:last-child {
	border-right: none
}
/* ------- CONFIG ------- */
/* Solution for coloring first TD in table .config, .configreader, .configuser */
.envi table.config td:first-child,
.envi table.configreader td:first-child,
.envi table.configuser td:first-child {
	background-color: #D9D9D9
}
.envi table.config tr:nth-last-child(-n+2) td,
.envi table.configreader tr:nth-last-child(-n+2) td,
.envi table.configuser tr:nth-last-child(-n+2) td {
	background-color: transparent;
	border-bottom: none;
}
.envi table.config table tr:nth-last-child(-n+2) td,
.envi table.configreader table tr:nth-last-child(-n+2) td ,
.envi table.configuser table tr:nth-last-child(-n+2) td {
	background-color: #EBEBEB
}
.envi table.subservicetable tr:nth-last-child(-n+2) td:first-child {
	background-color: #D9D9D9
}
/* Border bottom for whole TR in .config, configreader, .configuser */
.envi table.config td,
.envi table.configreader td,
.envi table.configuser td {
	border-bottom: 1px dotted #999
}
.envi table.subservicetable td,
.envi table.subservicetable tbody tr:nth-last-child(3) td {
	border-bottom: none
}
.envi .config tbody tr:nth-last-child(3) td,
.envi .configreader tbody tr:nth-last-child(3) td,
.envi .configuser tbody tr:nth-last-child(3) td {
	border-bottom: 1px solid #000
}
.envi .configreader tbody td.invisible tr td {
	border-bottom: none
}
/* ------- SERVICES ------- */
.envi #servicesedit td {
	border-right: 1px dotted #999
}
.envi table.configservices td {
	border-bottom: 1px dotted #999
}
.envi .configservices tbody tr:nth-last-child(3) td {
	border-bottom: 1px solid #000;
}
.envi #servicesedit td:last-child {
	border-right: none
}
.envi #servicesedit tr:nth-child(odd) td {
	background-color: #F2F2F2
}
.envi #servicesedit tr:nth-child(even) td {
	background-color: #E6E6E6
}
.envi table.configservices tr:nth-last-child(-n+2) td {
	background-color: transparent;
	border-bottom: none
}
.envi table.configservices td:first-child {
	background-color: #D9D9D9;
}
/* ------- FAILBAN ------- */
.envi table.failban td {
	border-right: 1px dotted #999
}
.envi table.failban tr:nth-child(odd) td {
	background-color: #F2F2F2
}
.envi table.failban tr:nth-child(even) td {
	background-color: #E6E6E6
}
/* ------- OTHER SETTINGS ------- */
/* Background color for TD if TH have class sorting-asc, sorting-desc */
.envi .readers tr:nth-child(odd) .td-sorting,
.envi .users tr.offline:nth-child(odd) .td-sorting,
.envi .statsbalance tr:nth-child(odd) .td-sorting {
	background-color: #E6E6E6
}
.envi .readers tr:nth-child(even) .td-sorting,
.envi .users tr.offline:nth-child(even) .td-sorting,
.envi .statsbalance tr:nth-child(even) .td-sorting {
	background-color: #D9D9D9
}
.envi .users tr.connected .td-sorting {
	background-color: #F5F5A4
}
.envi .users tr.online td.td-sorting {
	background-color: #B2F2A2
}
/* Border for tfoot with pagination in readers, users */
.envi table.readers tfoot td,
.envi table.users tfoot td {
	border-top: 1px solid #222;
}
/* Color for Table */
.envi #dataTable tr:hover td,
.envi table.statsbalance tr:hover td,
.envi #servicesedit tr:hover td,
.envi table.failban tr:hover td,
.envi table.stats tr:hover td,
.envi table.status tr.a:hover td,
.envi table.status tr.c:hover td,
.envi table.status tr.s:hover td,
.envi table.status tr.l:hover td,
.envi table.status tr.n:hover td,
.envi table.status tr.m:hover td,
.envi table.status tr.h:hover td,
.envi table.status tr.r:hover td,
.envi table.status tr.p:hover td {
	background-color: #FCD7D7 !important
}
.envi #dataTable tfoot tr:hover td,
.envi table.statsbalance tfoot tr:hover td {
	background-color: transparent !important;
}
/* **************** 11. DIV */
/* Log status.html, livelog.html, file.html */
.envi div#livelog {
	margin-top: 0
}
/* logobit.html - Logo for Oscam */
.envi div.logo {
	position: fixed;
	z-index: 1060
}
/* READERS and USERS items */
div.groups {
	text-overflow: ellipsis;
}
/* footer.html */
.envi div.footer {
	background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAQAAAAEAQMAAACTPww9AAAABlBMVEUYGBgRERGrUlCvAAAADklEQVQI12M4AIQGDAYACcgB4WUKpxgAAAAASUVORK5CYII=);
	border-top: 10px solid #000
}
.envi div.footer li {
	color: #656565
}
.envi div.footer li.styleauthor b {
	color: #BD0000;
	text-shadow: 1px 1px 1px #000
}
.envi div.footer b {
	color: #A3A3A3
}
/* Services */
.envi div.sidlistclose {
	background-color: #BD0000;
}
.envi div.sidlistclose:hover {
	background-color: #000;
	color: #FFF;
}
.envi div.sidlistclose a {
	color: #FFF
}
.envi div.sidlistclose:hover a{
	color: #FFF
}

/* **************** 12. TEXTAREA,SELECT,INPUT,PRE */
.envi #otherdropdown option {
	margin: 5px
}
.envi #otherdropdown option:hover {}
/* for extract in script.html and emm.html */ 
.envi div.extract p.emmhead {
	font-size: 11px;
	background-color: #222;
	padding: 5px;
	color: #FFF;
	margin: 10px 0
}
.envi div.extract pre {
	background-color: #FAFAFA
}
/* generaly settings for all buttons/submits */
.envi input[type=button],
.envi input[type=submit] {
	border:1px solid transparent;
	width:90px;
	height:22px;
	color:#FFF;
	background-color:#BD0000;
	text-transform: uppercase;
	font-size: 11px;
	font-weight: 700;
	font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
	-webkit-appearance: none;
	   -moz-appearance: none;
			appearance: none;
	-webkit-border-radius: 0;
	   -moz-border-radius: 0;
			border-radius: 0
}
/* generaly hover settings for all buttons/submits */
.envi input[type=button]:hover,
.envi input[type=submit]:hover {
	background-color: #000;
	color: #FFF;
	padding: 0px 2px;

	/* BOX SHADOW */
	-webkit-box-shadow: none;
	   -moz-box-shadow: none;
			box-shadow: none
}

.envi .regexdata_nav input {
	width: 100px
}
.envi .configcontrol input[type="submit"] {
	width: 115px
}
.envi .readers input[type="text"],
.envi .readers select,
.envi .users input[type="text"],
.envi .cacheex input[type="text"],
.envi #addnewservice input[type="text"] {
	outline: 1px solid #FFF;
	border: 1px solid #000
}
.envi input[type="text"] {
	padding: 2px;
	border: 1px solid #858585
}
.envi input[type="text"]:hover {
	border: 1px solid #000
}
.envi .readers input[type="text"] {
	margin-right: 5px
}
.envi .pollselect input[type="text"] {
	border: 1px solid transparent
}
.envi select {
	padding: 1px;
	border: 1px solid #858585
}
.envi select:hover {
	border: 1px solid #000
}
.envi td.subheadline input[type="button"] {
	margin: 0px 0px 0px 15px;
	font-weight: 700
}
.envi #otherdropdown input.short[type="text"] {
	margin: 0 5px
}
.envi #nav li.pollselect input[type="text"].pintervall{
	font-weight: bold;
	font-size: 12px
}
.envi textarea.bt {
	border: 1px solid #858585
}
.envi table.writeemm textarea {
	border: 1px solid #858585
}
.envi table.configreader textarea.bt:hover,
.envi table.configuser textarea.bt:hover,
.envi table.config textarea.bt:hover,
.envi table.writeemm textarea:hover,
.envi table.emmrunning textarea.bt:hover {
	border: 1px solid #000
}
/* Custom image for checkbox */
.envi input[type=checkbox] {
	opacity: 0;
}
.envi input[type=checkbox] + label {
	height: 15px;
	width: 15px;
	background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA8AAAAPBAMAAADJ+Ih5AAAAElBMVEX///+bm5vu7u6VlZX9/f3c3NwFUdSeAAAAH0lEQVQI12MwFAQDAwZRJTAQYBByYAABIIOB1gy47QBdfQRYlhGKFQAAAABJRU5ErkJggg==);
	background-repeat:no-repeat;
	background-position: 0 0;
	cursor: pointer;
	padding: 1px 0px 3px 20px;
	margin-left: -18px;
}
.envi input[type=checkbox]:checked + label  {
	background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA8AAAAPCAMAAAAMCGV4AAAAWlBMVEX///+dm5vu7u6WlZXc3NyFhYVDQ0MMDAzs7OxaWlpJSUkjIyMXFxf9/f3m5ubX19fR0dHHx8fExMSwsLCnp6ebm5uQkJB9fX1zc3NxcXFoaGhUVFQ0NDQsLCwYGsc3AAAAWUlEQVQI13XPxw7AIAwD0KQJm+69/v8320MRFAnf3sWWgTANAbKuYhBQ1xDzuoKCxfwz7Vvq6RAmmHto7WnGz4u7mtVLDn2klPQ3x/5OKjeke2xFvl9w/u8BMMwChvO8tyYAAAAASUVORK5CYII=);
}
.envi input[type=checkbox]:hover + label {
	background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA8AAAAPBAMAAADJ+Ih5AAAAElBMVEX///8hISHZ2dkUFBT7+/uxsbFznFZ3AAAAH0lEQVQI12MwFAQDAwZRJTAQYBByYAABIIOB1gy47QBdfQRYlhGKFQAAAABJRU5ErkJggg==);
}
.envi input[type=checkbox]:checked:hover + label {
	background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA8AAAAPBAMAAADJ+Ih5AAAAMFBMVEX///8mISEAAADZ2dkVExOxsbHV1dWAgID7+/vIyMimpqaZmZlQUFA8PDwhISEJCQkCB0hTAAAASElEQVQI12NwFAQDBwbRZGMQEGAQa2AAAQEGYQZkhh6UwaIEZVyCMMK5lHRADH6lSUoBIAaLkpIqRNcmpQIIg1UJbg4KA247AABGCoFFjhhMAAAAAElFTkSuQmCC);
}
/* Input in userconfig.html */
.envi #newinsert table.users:first-child input,
.envi #newinsert table.readers:first-child input,
.envi #newinsert table.readers:first-child select,
.envi #newservice table#addnewservice input {
	margin-left: 10px
}

/* **************** 13. IMAGE */
/* for icons with following Action */
.envi img.icon {
	border-radius:0
}
/* logo IC_LOGO.tpL */
.envi div.logo img {
	max-height: 28px
}
.envi div.logo svg.OSCam_logo {
	fill: #FFFFFF;
	height: 28px;
	width: 28px
}
/*  */
.envi table.statsbalance th.subheadline img {
	margin-left: 5px
}

/* **************** 14. SPAN */
.envi span.span_notifier {
	background-color: #BD0000;
	margin-right: 5px
}

/* **************** 16. SORTING IN TABLE */
.envi .sortable {
	background-image: url(data:image/png;base64,R0lGODlhBQAIAJEAAAAAAP///4CAgP///yH5BAEAAAMALAAAAAAFAAgAAAIL3GQnuJ2f2lLI1AIAOw==)
}
.envi .sorting-desc{
	background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAADAQMAAABh+Fe7AAAABlBMVEUAAACAgICSabkkAAAAAXRSTlMAQObYZgAAAA5JREFUCNdj+MFQwKAAAAZOAYkOHHR7AAAAAElFTkSuQmCC)
}
.envi .sorting-asc{
	background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAADAQMAAABh+Fe7AAAABlBMVEUAAACAgICSabkkAAAAAXRSTlMAQObYZgAAAA5JREFUCNdjUGAoYPgBAALuAYlvcnaaAAAAAElFTkSuQmCC)
}

/* **************** 17. POLLING */
/* User-Page polling */
.envi #inc, .envi #polling.pollingenabled, .envi #dec, .envi .regexbutton {
	background-color: #BD0000;
	border-radius: 0;
}
.envi #inc:hover,  .envi #polling.pollingenabled:hover, .envi #dec:hover, .envi .regexbutton:hover {
	background-color: #000;
}
.envi #polling {
	border-radius: 0;
}
.envi #inc[disabled],
.envi #inc:hover[disabled],
.envi #dec[disabled],
.envi #dec:hover[disabled] {
	background-color: #DDD !important;

	/* Disabled effect for plastic style */
	background: #DDD !important;
	border:none;
	color: #6D6C6D;
	text-shadow: none;
	box-shadow:none;
}

/* **************** 19. FILE MENU */
/* For filemenu - change dropdown menu */
.envi #nav ul.dropdown_nav li a {
	padding: 3px 13px;
	margin: 0
}

/* **************** 21. BOOT TOOLTIP */
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
	max-width: 350px;
	padding: 3px 8px;
	text-align: center;
	text-decoration: none;
}
.envi .boot_tooltip-arrow {
	position: absolute;
	width: 0;
	height: 0
}
/* Tooltip color */
.envi .boot_tooltip-inner {
	color: #FFF;
	background-color: #515151
}
.envi .boot_tooltip.top .boot_tooltip-arrow {
	border-top: 5px solid #515151
}
.envi .boot_tooltip.left .boot_tooltip-arrow {
	border-left: 5px solid #515151
}
.envi .boot_tooltip.bottom .boot_tooltip-arrow {
	border-bottom: 5px solid #515151
}
.envi .boot_tooltip.right .boot_tooltip-arrow {
	border-right: 5px solid #515151
}

/* **************** 22. JQUERY UI DIALOG */
.dialog-envi-style {
	padding: 5px !important;
}
.dialog-envi-style,
.dialog-envi-style .ui-corner-all {
	border-radius: 0 !important;
}
.dialog-envi-style .ui-widget-header {
	border: none !important;
}
/* **************** 23. OTHER SETTINGS */
/* Coloring background TD for Searchterm */
.envi .back_cell {
	background-color: #E7F26F !important;
}
/* Setting for DIV "Count rows" */
.envi #countrows {
	text-align: left;
	margin-top: 10px;
	float: left
}
/* Setting for main DIV for "Pagination" */
.envi .pagin {
	float: right
}
/* Setting for DIV "Pagination" */
.envi #pagination {
	float: left
}
/* Setting for DIV "Select pagination" */
.envi #numPerPage {
	float: right;
	margin-left: 10px;
	padding-top: 3px
}
/* Settings for SPAN in DIV "Count rows" */
.envi .rowcount {
	font-weight: bold
}
/* If no entries found in table */
.envi .search-sf {}
.envi .text-muted {
	font-weight: bold
}
/* Color setting for TD in TFOOT only for BODY.envi */
.envi tfoot td {
	background-color: transparent !important;
}
.envi table.readers tfoot tr:hover td,
.envi table.users tfoot tr:hover td,
.envi table.statsbalance tfoot tr:hover td {
	background-color: transparent !important;
}
.envi table.readers tfoot td,
.envi table.users tfoot td {
	border-right: none;
}
/* Setting for pagination */
.envi div.pager {
	text-align: right;
	margin-top: 5px;
}
.envi div.pager span {
	display: inline-block;
	width: 1.8em;
	height: 1.8em;
	line-height: 1.8;
	text-align: center;
	cursor: pointer;
	background: #A4A4A4;
	color: #000;
	margin-right: 0.5em;
	font-weight:bold
}
.envi div.pager span.active {
	background: #BD0000;
	color: #FFF;
}
.envi div.pager span.clickable:hover {
	background: #BD0000;
	color: #FFF;
}
/* Selection for pagination */
.envi #selectionPerPage {
	padding: 1px 10px 1px 1px
}
.envi #selectionPerPage option {
	padding-left: 5px
}
.envi #selectionPerPage option:nth-child(3) {
	font-weight: bold
}
/* Show/Hide pagination */
.envi .visibility {
	visibility:hidden;
}
/* Menu Icons */
.envi li.menu a,
.envi li.menu_selected a {
	padding: 10px 6px 9px !important;
	margin-left: 3px;
	margin-right: 3px;
}
.envi a[class*='menu_image'] {
	background-repeat:no-repeat;
	background-position: 4px center;
	cursor:pointer;
}
/* Scroll to top */
.scroll-top {
	float: right;
	width: 45px;
	height: 43px;
	position: fixed;
	right: 0px;
	bottom: 30px;
	z-index: 9;
}
#back-top {
	width: 45px;
	height: 43px;
}
#back-top a:hover span {
	position: inherit;
	top: inherit;
	right: inherit;
	padding: inherit;
	background-color: inherit;
	border: inherit;
}
#back-top span {
	float: right;
	width: 45px;
	height: 43px;
	display: block;
	background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAArCAYAAAA+EwvfAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYxIDY0LjE0MDk0OSwgMjAxMC8xMi8wNy0xMDo1NzowMSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNS4xIFdpbmRvd3MiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MTM0NjkzNjAwQzZBMTFFNUIyMzRBQ0U1RUREOTZGNTUiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6MTM0NjkzNjEwQzZBMTFFNUIyMzRBQ0U1RUREOTZGNTUiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDoxMzQ2OTM1RTBDNkExMUU1QjIzNEFDRTVFREQ5NkY1NSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDoxMzQ2OTM1RjBDNkExMUU1QjIzNEFDRTVFREQ5NkY1NSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PmWfwMwAAAG2SURBVHjaYmRgYNAA4mggNmAYWuA0EC9jBBJzgFicYWiC50xD2PEgwMfEMMTBqAdGPTDqgVEPjHpg1AOjHhhWHggMDBT+9euX19+/f73Lyspkae0BZiCOopZh+fn50rNnzzZmZWVlYgQCV1dXCTk5OaZNmza9oZH7f4Oa05upYVJfX59KYWGhBja5/fv3P/f397/w+fPnv1T2wFeKkxAHBwfT5s2b9WGOnzdv3h2YXHl5+cU/f/78c3R0lDx58qSloqIi+6DKA5KSkqzHjx839/Hxkf3379//lpaWK8nJyTdg8l1dXY/DwsJOAkP+t6ampsCJEydsgICXmh6gKAlduXLFWltbW/DHjx9/UlNTzy5ZsuQ1SPz///8+YMMZGbeAaAMDA+6tW7eaSUlJcT979uyrtLT0fmolIRZKdAM98PH79+9/gMnn2pEjRz7jUnfhwoWvwJA/VlNTo3j+/PlPgyYGcAH0GKAh+DpakY16YNQDox4YWMBCC0OB5f5bUBOCHh6gST1ARzBaD4x6YNQDox4Y9cCoB0Y9MOoBSj3wegi7/wNoaPE+A2S2nm+IOf4pEE8CCDAA5SWP/7jKWLwAAAAASUVORK5CYII=);
	margin: 0px;
}
#back-top span:hover {
	background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAArCAYAAAA+EwvfAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYxIDY0LjE0MDk0OSwgMjAxMC8xMi8wNy0xMDo1NzowMSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNS4xIFdpbmRvd3MiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6QjU2REJEMzIwQzZBMTFFNUJFOUJGRENBMEI4OUM0QjQiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6QjU2REJEMzMwQzZBMTFFNUJFOUJGRENBMEI4OUM0QjQiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpCNTZEQkQzMDBDNkExMUU1QkU5QkZEQ0EwQjg5QzRCNCIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpCNTZEQkQzMTBDNkExMUU1QkU5QkZEQ0EwQjg5QzRCNCIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PjiXBaYAAAGkSURBVHjaYmRgYBAEYnUgFmUYWuAlEN9kBBLOQMzFMDTBV6Yh7HgQYGNiGOJg1AOjHhj1wKgHRj0w6oFRDwwrD7S2tur8/ft37b9//zasWrXKmdYeALVGfall2JIlS+wjIyPzmZiYWGBip06dWmNubr6IRu7/TTUP7Nu3L8TR0TEOm9z9+/eP2tnZ9T958uQXtT1AcRISFhZmuXHjRj7M8aAQh8mtXr16IjAp/VFUVLS+cOFCG1CN4KDKA8bGxrxXr15tUldXd/7///+/bdu2zUROLmFhYXs7Ojrqfv/+/RnoUbUtW7b0ZGVlyQ+aPPD69esuERERjT9//vyYNm1aR35+/jmQONAzm8CGMzL6geioqCjJmTNnNvDw8Eh++fLlOS8vbzq1khALJbqfPn1699evXz+AJc9coAce4lK3bNmy50BQAYwNX2Byuz9oSyEYQI8BGoLfoxXZqAdGPTDqgYEFLLQw9OXLl1eALdI/9PAATeoBOoLRemDUA6MeGPXAqAdGPTDqgVEPUOqB70PY/T+ZgcQnBshsPdsQc/wXIL4IEGAAt9eUA7OsXhUAAAAASUVORK5CYII=);
}

/* ==================================================================  ENVI TEMPLATE - ROTATE OSCAM LOGO  */
/* Settings for rotate OSCam logo */
.rotatelogo div.logo svg.OSCam_logo {
	height: 35px !important;
	width: 35px !important;
	background-color: #000;
	padding: 3px;
	
	/* ROTATE IMAGE */
	-webkit-transform: rotate(345deg);
	   -moz-transform: rotate(345deg);
			transform: rotate(345deg);
}

/* ==================================================================  ENVI TEMPLATE - BORDER OF INFO TABLES  */
/* Border for tfoot with pagination in readers, users */
.infotable_border table.readers tfoot td,
.infotable_border table.users tfoot td {
	border-top: 3px solid #222;
}
/* Border bottom for whole TR in Table*/
.infotable_border table.status,
.infotable_border .config tbody tr:nth-last-child(3) td,
.infotable_border .configreader tbody tr:nth-last-child(3) td,
.infotable_border .configuser tbody tr:nth-last-child(3) td,
.infotable_border table.statsbalance,
.infotable_border #servicesedit,
.infotable_border .configservices tbody tr:nth-last-child(3) td,
.infotable_border table.writeemm tr:nth-last-child(3) td {
	border-bottom: 3px solid #000
}
.infotable_border table.infotable {
	border: 3px solid #222
}
.infotable_border table.stats,
.infotable_border table.scanusb,
.infotable_border table.failban {
	border-bottom: 3px solid #000
}
/* ==================================================================  ENVI TEMPLATE - BUTTON BORDER RADIUS */
/* styleswitcher */
.border_radius ul.addClass li a {
	border-radius: 4px;
}
/* Settings for border_radius */
.border_radius input[type="button"],
.border_radius input[type="submit"],
.border_radius #reset,
.border_radius #resetall,
.border_radius #resetindividual,
.border_radius #show_ext,
.border_radius #show_color {
	-webkit-border-radius: 4px;
	   -moz-border-radius: 4px;
			border-radius: 4px
}
/* for icons with following Action */
.border_radius img.icon {
	border-radius: 4px
}
/* User-Page polling */
.border_radius #inc, .border_radius #polling, .border_radius #dec, .border_radius .regexbutton {
	border-radius: 4px !important
}
/* ==================================================================  ENVI TEMPLATE - NOTIFIER BORDER RADIUS */
/* Settings for notifier border radius */
.notifier_radius span.span_notifier {
	-webkit-border-radius: 2px;
	   -moz-border-radius: 2px;
			border-radius: 2px
}

/* ==================================================================  ENVI TEMPLATE - PLASTIC STYLE */
/* for icons with following Action */
.plastic a img.icon {
	border: solid 1px #980C10;

	/* BACKGROUND COLOR */
	/* Old browsers */
	color: #FADDDE;
	background: #BD0000;
	/* Webkit (Chrome10+/Safari5.1+) */
	background: -webkit-linear-gradient(top, #CE0303 0%, #6B0508 100%);
	/* Firefox */
	background: -moz-linear-gradient(top, #CE0303 0%, #6B0508 100%);
	/* IE10+ */
	background: -ms-linear-gradient(top, #CE0303 0%, #6B0508 100%);
	/* W3C Markup, IE10 Release Preview */
	background: linear-gradient(to bottom, #CE0303 0%, #6B0508 100%);
}
.plastic a:hover img.icon {
	border: solid 1px #BA0000;

	/* BACKGROUND COLOR */
	background: #EB0000;
}
.plastic table.users td:first-child img.icon,
.plastic table.readers td:first-child img.icon {
    border: solid 1px #206100;

	/* BACKGROUND COLOR */
	/* Old browsers */
	background: #0D9C02;
	/* Webkit (Chrome10+/Safari5.1+) */
	background: -webkit-linear-gradient(top, #81D609 0%, #287900 100%);
	/* Firefox */
	background: -moz-linear-gradient(top, #81D609 0%, #287900 100%);
	/* IE10+ */
	background: -ms-linear-gradient(top, #81D609 0%, #287900 100%);
	/* W3C Markup, IE10 Release Preview */
	background: linear-gradient(to bottom, #81D609 0%, #287900 100%);
}
.plastic table.users td:first-child a:hover img.icon,
.plastic table.readers td:first-child a:hover img.icon {
	border: solid 1px #206100;

	/* BACKGROUND COLOR */
	background: #71bd08;
}
.plastic tr.disabled td:first-child img.icon,
.plastic tr.disabledreader td:first-child img.icon {
    border: solid 1px #4E4E4E;

	/* BACKGROUND COLOR */
	/* Old browsers */
	background: #4E4E4E;
	/* Webkit (Chrome10+/Safari5.1+) */
	background: -webkit-linear-gradient(top, #959595 0%, #4E4E4E 100%);
	/* Firefox */
	background: -moz-linear-gradient(top, #959595 0%, #4E4E4E 100%);
	/* IE10+ */
	background: -ms-linear-gradient(top, #959595 0%, #4E4E4E 100%);
	/* W3C Markup, IE10 Release Preview */
	background: linear-gradient(to bottom, #959595 0%, #4E4E4E 100%);
}
.plastic tr.disabled td:first-child a:hover img.icon,
.plastic tr.disabledreader td:first-child a:hover img.icon {
	border: solid 1px #4E4E4E;

	/* BACKGROUND COLOR */
	background: #959595;
}

/* Main menu */
.plastic #main {
	/* BACKGROUND COLOR */
	/* Old browsers */
	background: #444;
	/* Webkit (Chrome10+/Safari5.1+) */
	background: -webkit-linear-gradient(top, #444 0%, #111 100%);
	/* Firefox */
	background: -moz-linear-gradient(top, #444 0%, #111 100%);
	/* IE10+ */
	background: -ms-linear-gradient(top, #444 0%, #111 100%);
	/* W3C Markup, IE10 Release Preview */
	background: linear-gradient(to bottom, #444 0%, #111 100%);
}

/* Settings for button */
.plastic input[type="button"],
.plastic input[type="submit"],
.plastic #show_color,
.plastic #show_ext,
.plastic #reset,
.plastic #resetall,
.plastic #resetindividual,
.plastic .regexbutton,
.plastic #inc,
.plastic #dec {
	border: solid 1px #980C10;

	/* BACKGROUND COLOR */
	/* Old browsers */
	color: #FADDDE;
	background: #CE0303;
	/* Webkit (Chrome10+/Safari5.1+) */
	background: -webkit-linear-gradient(top, #CE0303 0%, #6B0508 100%);
	/* Firefox */
	background: -moz-linear-gradient(top, #CE0303 0%, #6B0508 100%);
	/* IE10+ */
	background: -ms-linear-gradient(top, #CE0303 0%, #6B0508 100%);
	/* W3C Markup, IE10 Release Preview */
	background: linear-gradient(to bottom, #CE0303 0%, #6B0508 100%);

	/* TEXT SHADOW */
	text-shadow: 0 1px 1px rgba(0,0,0,.3);
	-webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2);
	   -moz-box-shadow: 0 1px 2px rgba(0,0,0,.2);
			box-shadow: 0 1px 2px rgba(0,0,0,.2);
}
.plastic input[type="button"]:hover,
.plastic input[type="submit"]:hover,
.plastic #show_color:hover,
.plastic #show_ext:hover,
.plastic #reset:hover,
.plastic #resetall:hover,
.plastic #resetindividual:hover,
.plastic .regexbutton:hover,
.plastic #inc:hover,
.plastic #dec:hover {
	border: solid 1px #000;

	/* BACKGROUND COLOR */
	/* Old browsers */
	color: #FFF;
	background: #000;
	/* Webkit (Chrome10+/Safari5.1+) */
	background: -webkit-linear-gradient(top, #666C71 0%, #454A4E 100%);
	/* Firefox */
	background: -moz-linear-gradient(top, #666C71 0%, #454A4E 100%);
	/* IE10+ */
	background: -ms-linear-gradient(top, #666C71 0%, #454A4E 100%);
	/* W3C Markup, IE10 Release Preview */
	background: linear-gradient(to bottom, #666C71, #454A4E);
}
/* Settings for special button in pollinterval */
.plastic #polling.pollingenabled {
	border: solid 1px #980C10;

	/* BACKGROUND COLOR */
	/* Old browsers */
	color: #FADDDE;
	background: #CE0303;
	/* Webkit (Chrome10+/Safari5.1+) */
	background: url("image?i=ICSTOP"),-webkit-linear-gradient(top, #CE0303 0%, #6B0508 100%);
	/* Firefox */
	background: url("image?i=ICSTOP"),-moz-linear-gradient(top, #CE0303 0%, #6B0508 100%);
	/* IE10+ */
	background: url("image?i=ICSTOP"),-ms-linear-gradient(top, #CE0303 0%, #6B0508 100%);
	/* W3C Markup, IE10 Release Preview */
	background: url("image?i=ICSTOP"),linear-gradient(to bottom, #CE0303, #6B0508);

	background-repeat:no-repeat;
	background-position: center center;

	/* TEXT SHADOW */
	text-shadow: 0 1px 1px rgba(0,0,0,.3);
	-webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2);
	   -moz-box-shadow: 0 1px 2px rgba(0,0,0,.2);
			box-shadow: 0 1px 2px rgba(0,0,0,.2);
}
.plastic #polling:hover.pollingenabled {
	border: solid 1px #000;

	/* BACKGROUND COLOR */
	/* Old browsers */
	color: #FFF;
	background: #000;
	/* Webkit (Chrome10+/Safari5.1+) */
	background: url("image?i=ICSTOP"),-webkit-linear-gradient(top, #666C71 0%, #454A4E 100%);
	/* Firefox */
	background: url("image?i=ICSTOP"),-moz-linear-gradient(top, #666C71 0%, #454A4E 100%);
	/* IE10+ */
	background: url("image?i=ICSTOP"),-ms-linear-gradient(top, #666C71 0%, #454A4E 100%);
	/* W3C Markup, IE10 Release Preview */
	background: url("image?i=ICSTOP"),linear-gradient(to bottom, #666C71, #454A4E);

	background-repeat:no-repeat;
	background-position: center center;
}
.plastic #polling.pollingdisabled {
	border: solid 1px #980C10;

	/* BACKGROUND COLOR */
	/* Old browsers */
	color: #FADDDE;
	background: #CE0303;
	/* Webkit (Chrome10+/Safari5.1+) */
	background: url("image?i=ICSTART"),-webkit-linear-gradient(top, #CE0303 0%, #6B0508 100%);
	/* Firefox */
	background: url("image?i=ICSTART"),-moz-linear-gradient(top, #CE0303 0%, #6B0508 100%);
	/* IE10+ */
	background: url("image?i=ICSTART"),-ms-linear-gradient(top, #CE0303 0%, #6B0508 100%);
	/* W3C Markup, IE10 Release Preview */
	background: url("image?i=ICSTART"),linear-gradient(to bottom, #CE0303, #6B0508);

	background-repeat:no-repeat;
	background-position: center center;

	/* TEXT SHADOW */
	text-shadow: 0 1px 1px rgba(0,0,0,.3);
	-webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2);
	   -moz-box-shadow: 0 1px 2px rgba(0,0,0,.2);
			box-shadow: 0 1px 2px rgba(0,0,0,.2);
}
.plastic #polling:hover.pollingdisabled {
	border: solid 1px #000;

	/* BACKGROUND COLOR */
	/* Old browsers */
	color: #FFF;
	background: #000;
	/* Webkit (Chrome10+/Safari5.1+) */
	background: url("image?i=ICSTART"),-webkit-linear-gradient(top, #666C71 0%, #454A4E 100%);
	/* Firefox */
	background: url("image?i=ICSTART"),-moz-linear-gradient(top, #666C71 0%, #454A4E 100%);
	/* IE10+ */
	background: url("image?i=ICSTART"),-ms-linear-gradient(top, #666C71 0%, #454A4E 100%);
	/* W3C Markup, IE10 Release Preview */
	background: url("image?i=ICSTART"),linear-gradient(to bottom, #666C71, #454A4E);

	background-repeat:no-repeat;
	background-position: center center;
}

 /* ==================================================================  ENVI TEMPLATE - STYLE 1 */
/* Settings for Template color style "colorstyle_1"
 * Basic colors: #16B6C6
 * Other colors:
 *		- #13A2AE 
 */

/* **************************** BASIC SETTINGS (is same for all coloring style) */
/* ------- COLORS FOR MAIN MENU ------- */
.colorstyle_1 li.menu_selected a {
	color: #16B6C6;
	border-bottom: 2px solid #13A2AE
}
.colorstyle_1 li.menu:hover a {
	color: #16B6C6;
	border-bottom: 2px solid #13A2AE
}
.colorstyle_1 #nav li.configmenu_selected > a:link,
.colorstyle_1 #nav li.configmenu_selected > a:visited,
.colorstyle_1 #nav li.configmenu_selected > a:active,
.colorstyle_1 #nav li.configmenu > a:hover {
	color: #16B6C6
}
.colorstyle_1 li.menu_selected svg.svg_icons {
	fill: #16B6C6;
}
.colorstyle_1 li.menu:hover svg.svg_icons {
	fill: #16B6C6;
}
/* ------- COLORS IN FOOTER ------- */
.colorstyle_1 div.footer li.styleauthor b {
	color: #16B6C6
}
/* ------- COLORS IN SERVICES ------- */
.colorstyle_1 div.sidlistclose {
	background-color: #16B6C6
}
.colorstyle_1 div.sidlistclose:hover {
	background-color: #000;
	color: #16B6C6;
}
.colorstyle_1 div.sidlistclose a {
	color: #FFF
}
.colorstyle_1 div.sidlistclose:hover a{
	color: #16B6C6
}
/* ------- COLORS FOR NOTIFIER ------- */
.colorstyle_1 span.span_notifier {
	background-color: #16B6C6
}
/* ------- COLORS FOR BUTTONS ------- */
/* Generaly settings for all buttons/submits */
.colorstyle_1 input[type=button],
.colorstyle_1 input[type=submit] {
	background: #16B6C6;
}
/* Generaly hover settings for all buttons/submits */
.colorstyle_1 input[type=button]:hover,
.colorstyle_1 input[type=submit]:hover {
	background: #000;
	color: #16B6C6;
}
/* Buttons in StyleSwitcher */
.colorstyle_1 .form_holder #show_color,
.colorstyle_1 .form_holder #show_ext,
.colorstyle_1 .form_holder #reset, 
.colorstyle_1 .openModalResetBox #resetall,
.colorstyle_1 .openModalResetBox #resetindividual {
	background:#16B6C6
}
.colorstyle_1 .form_holder #show_color:hover,
.colorstyle_1 .form_holder #show_ext:hover,
.colorstyle_1 .form_holder #reset:hover,
.colorstyle_1 .openModalResetBox #resetall:hover,
.colorstyle_1 .openModalResetBox #resetindividual:hover {
	background: #000;
	color: #16B6C6;
}
/* Buttons if Plastic style is active */
.colorstyle_1.plastic input[type="button"],
.colorstyle_1.plastic input[type="submit"],
.colorstyle_1.plastic .form_holder #show_color,
.colorstyle_1.plastic .form_holder #show_ext,
.colorstyle_1.plastic .form_holder #reset,
.colorstyle_1.plastic .openModalResetBox #resetall,
.colorstyle_1.plastic .openModalResetBox #resetindividual {
	color: #FFF;
	border: solid 1px #0076A3;

	/* BACKGROUND COLOR */
	/* Old browsers */
	background: #16B6C6;
	/* Webkit (Chrome10+/Safari5.1+) */
	background: -webkit-linear-gradient(top, #16B6C6 0%, #0D6D75 100%);
	/* Firefox */
	background: -moz-linear-gradient(top, #16B6C6 0%, #0D6D75 100%);
	/* IE10+ */
	background: -ms-linear-gradient(top, #16B6C6 0%, #0D6D75 100%);
	/* W3C Markup, IE10 Release Preview */
	background: linear-gradient(to bottom, #16B6C6 0%, #0D6D75 100%);
}
.colorstyle_1.plastic input[type="button"]:hover,
.colorstyle_1.plastic input[type="submit"]:hover,
.colorstyle_1.plastic .form_holder #show_color:hover,
.colorstyle_1.plastic .form_holder #show_ext:hover,
.colorstyle_1.plastic .form_holder #reset:hover,
.colorstyle_1.plastic .openModalResetBox #resetall:hover,
.colorstyle_1.plastic .openModalResetBox #resetindividual:hover {
	color: #16B6C6;
	border: solid 1px #000;
	
	/* BACKGROUND COLOR */
	/* Old browsers */
	background: #666;
	/* Webkit (Chrome10+/Safari5.1+) */
	background: -webkit-linear-gradient(top, #666 0%, #000 100%);
	/* Firefox */
	background: -moz-linear-gradient(top, #666 0%, #000 100%);
	/* IE10+ */
	background: -ms-linear-gradient(top, #666 0%, #000 100%);
	/* W3C Markup, IE10 Release Preview */
	background: linear-gradient(to bottom, #666 0%, #000 100%);
}
/* ------- COLORS FOR POLLING ------- */
/* User-Page polling */
.colorstyle_1 #picolor {
	background-color: #16B6C6
}
.colorstyle_1 #inc,
.colorstyle_1 #polling.pollingenabled,
.colorstyle_1 #dec,
.colorstyle_1 .regexbutton {
	background-color: #16B6C6
}
.colorstyle_1 #inc:hover,
.colorstyle_1 #polling.pollingenabled:hover,
.colorstyle_1 #dec:hover {
	background-color: #0D6A73 !important;
}

.colorstyle_1 .regexbutton:hover {
	background-color: #000 !important;
	color: #16B6C6;
}

/* ------- STYLESWITCHER ------- */
.colorstyle_1 div.form_holder a.active {
	color: #038AA5
}
.colorstyle_1 div.form_holder a:hover {
	color: #038AA5
}
.colorstyle_1 ul.backchange li.active,
.colorstyle_1 ul.patchange li.active,
.colorstyle_1 ul.colchange li.active {
	border-color: #16B6C6
}
.colorstyle_1 ul.backchange li:hover,
.colorstyle_1 ul.patchange li:hover,
.colorstyle_1 ul.colchange li:hover {
	border-color: #16B6C6
}
.colorstyle_1 input[type="text"].color-picker:hover,
.colorstyle_1 input[type="text"].color-picker.active {
	border-color: #16B6C6
}
.colorstyle_1 ul.fontcolorchange li:hover, 
.colorstyle_1 ul.fontcolorchange li.active {
	border-color: #16B6C6
}
.colorstyle_1 ul.linkcolorchange li:hover,
.colorstyle_1 ul.linkcolorchange li.active {
	border-color: #16B6C6
}
.colorstyle_1 .demo_icon:hover svg.svg_icons {
	fill:#16B6C6;
}
/* ------- COLORS FOR LINKS ------- */
/* Color for links of icons */
.colorstyle_1 a img.icon {
	background-color: #13A2AE
}
.colorstyle_1 a:hover img.icon {
	background-color: #0D6A73
}
/* Color for links */
.colorstyle_1 a:link,
.colorstyle_1 a:visited,
.colorstyle_1 a:active {
	color: #0B5E66
}
.colorstyle_1 a:hover {
	color: #000
}
/* Color for links in pre */
.colorstyle_1 pre a:link,
.colorstyle_1 pre a:visited,
.colorstyle_1 pre a:active {
	color: #000
}
.colorstyle_1 pre a:hover {
	color: #0B5E66
}
/* Color links in config tables */
.colorstyle_1 .config a,
.colorstyle_1 .configreader a,
.colorstyle_1 .configuser a,
.colorstyle_1 .configservices a {
	color: #0B5E66
}
.colorstyle_1 .config a:hover,
.colorstyle_1 .configreader a:hover,
.colorstyle_1 .configuser a:hover,
.colorstyle_1 .configservices a:hover {
	color: #000
}
/* Links color for table.subservicetable */
.colorstyle_1 .subservicetable a {
	color: #16B6C6
}
/* Links color for table.subservicetable */
.colorstyle_1 .subservicetable a:hover {
	color: #FFF
}
/* Go to top link */
.colorstyle_1 .top_link a:hover {
	color: #16B6C6
}
/* ------- COLORS FOR TOOLTIP ------- */
/* Colors for tooltip */
.colorstyle_1 a.tooltip1 {
	color: #F00;
}
/* ------- COLORS FOR DEBUG ------- */
/* Colors for debug */
.colorstyle_1 a.debugl:hover,
.colorstyle_1 a.debugs:hover {
	background-color: #000;
	color: #16B6C6;
}
.colorstyle_1 a.debugls:link,
.colorstyle_1 a.debugls:visited {
	background-color: #000;
	color: #16B6C6;
}
/* ------- COLORS FOR TEXT ------- */
/* Color for text */
.colorstyle_1 h4 {
	color: #16B6C6
}
/* ------- COLORS FOR TABLES ------- */
/* Background color for th */
.colorstyle_1 table.config th,
.colorstyle_1 table.configreader th,
.colorstyle_1 table.configuser th,
.colorstyle_1 table.cacheex th,
.colorstyle_1 table.failban th,
.colorstyle_1 #servicesedit th,
.colorstyle_1 #addnewservice th,
.colorstyle_1 table.configservices th,
.colorstyle_1 table.readers th,
.colorstyle_1 table.writeemm th,
.colorstyle_1 table.emmrunning th,
.colorstyle_1 table.statsbalance th,
.colorstyle_1 table.status th,
.colorstyle_1 table.status td.subheadline {
	background-color: #222;
}
/* cacheex.html */
.colorstyle_1 table.stats th {
	background-color: #222;
}
/* scanusb.html */
.colorstyle_1 table.scanusb th {
	background-color: #222;
}
/* Color for Table */
.colorstyle_1 #dataTable tr:hover td,
.colorstyle_1 table.statsbalance tr:hover td,
.colorstyle_1 #servicesedit tr:hover td,
.colorstyle_1 table.failban tr:hover td,
.colorstyle_1 table.stats tr:hover td,
.colorstyle_1 table.status tr.a:hover td,
.colorstyle_1 table.status tr.c:hover td,
.colorstyle_1 table.status tr.s:hover td,
.colorstyle_1 table.status tr.l:hover td,
.colorstyle_1 table.status tr.n:hover td,
.colorstyle_1 table.status tr.m:hover td,
.colorstyle_1 table.status tr.h:hover td,
.colorstyle_1 table.status tr.r:hover td,
.colorstyle_1 table.status tr.p:hover td  {
	background-color: #E4ECF0 !important
}
.colorstyle_1 #dataTable tr:hover td.td-sorting {
	background-color: #BDCFD9 !important
}
.colorstyle_1 #dataTable tfoot tr:hover td,
.colorstyle_1 table.statsbalance tfoot tr:hover td {
	background-color: transparent !important;
}
/* ------- COLORS FOR PAGINATION ------- */
/* Color for pagination */
.colorstyle_1 div.pager span.active,
.colorstyle_1 div.pager span.clickable:hover {
	background: #16B6C6;
	color: #000;
}
/* **************************** EXTENDED SETTINGS (may be different in the individual styles) */

/* NOTHING FOR ENVI TEMPLATE - STYLE  1 */

/* ==================================================================  ENVI TEMPLATE - STYLE 2 */
/* Settings for Template color style "colorstyle_2"
 * Basic colors: #FF6600 (#F60)
 * Other colors:
 *		- #
 */

/* **************************** BASIC SETTINGS (is same for all coloring style) */
/* ------- COLORS FOR MAIN MENU ------- */
.colorstyle_2 li.menu_selected a {
	color: #F60;
	border-bottom: 2px solid #F60
}
.colorstyle_2 li.menu:hover a {
	color: #F60;
	border-bottom: 2px solid #F60
}
.colorstyle_2 #nav li.configmenu_selected > a:link,
.colorstyle_2 #nav li.configmenu_selected > a:visited,
.colorstyle_2 #nav li.configmenu_selected > a:active,
.colorstyle_2 #nav li.configmenu > a:hover {
	color: #F60
}
.colorstyle_2 li.menu_selected svg.svg_icons {
	fill: #F60;
}
.colorstyle_2 li.menu:hover svg.svg_icons {
	fill: #F60;
}
/* ------- COLORS IN FOOTER ------- */
.colorstyle_2 div.footer li.styleauthor b {
	color: #F60
}
/* ------- COLORS IN SERVICES ------- */
.colorstyle_2 div.sidlistclose {
	background-color: #F60
}
.colorstyle_2 div.sidlistclose:hover {
	background-color: #000;
	color: #F60;
}
.colorstyle_2 div.sidlistclose a {
	color: #FFF
}
.colorstyle_2 div.sidlistclose:hover a{
	color: #F60
}
/* ------- COLORS FOR NOTIFIER ------- */
.colorstyle_2 span.span_notifier {
	background-color: #F60
}
/* ------- COLORS FOR BUTTONS ------- */
/* Generaly settings for all buttons/submits */
.colorstyle_2 input[type=button],
.colorstyle_2 input[type=submit] {
	background: #F60;
}
/* Generaly hover settings for all buttons/submits */
.colorstyle_2 input[type=button]:hover,
.colorstyle_2 input[type=submit]:hover {
	background: #000;
	color: #F60;
}
/* Buttons in StyleSwitcher */
.colorstyle_2 .form_holder #show_color,
.colorstyle_2 .form_holder #show_ext,
.colorstyle_2 .form_holder #reset, 
.colorstyle_2 .openModalResetBox #resetall,
.colorstyle_2 .openModalResetBox #resetindividual {
	background:#F60
}
.colorstyle_2 .form_holder #show_color:hover,
.colorstyle_2 .form_holder #show_ext:hover,
.colorstyle_2 .form_holder #reset:hover,
.colorstyle_2 .openModalResetBox #resetall:hover,
.colorstyle_2 .openModalResetBox #resetindividual:hover {
	background: #000;
	color: #F60;
}
/* Buttons if Plastic style is active */
.colorstyle_2.plastic input[type="button"],
.colorstyle_2.plastic input[type="submit"],
.colorstyle_2.plastic .form_holder #show_color,
.colorstyle_2.plastic .form_holder #show_ext,
.colorstyle_2.plastic .form_holder #reset,
.colorstyle_2.plastic .openModalResetBox #resetall,
.colorstyle_2.plastic .openModalResetBox #resetindividual {
	color: #FFF;
	border: solid 1px #B04600;
	
	/* BACKGROUND COLOR */
	/* Old browsers */
	background: #F60;
	/* Webkit (Chrome10+/Safari5.1+) */
	background: -webkit-linear-gradient(top, #F60 0%, #B04600 100%);
	/* Firefox */
	background: -moz-linear-gradient(top, #F60 0%, #B04600 100%);
	/* IE10+ */
	background: -ms-linear-gradient(top, #F60 0%, #B04600 100%);
	/* W3C Markup, IE10 Release Preview */
	background: linear-gradient(to bottom, #F60 0%, #B04600 100%);
}
.colorstyle_2.plastic input[type="button"]:hover,
.colorstyle_2.plastic input[type="submit"]:hover,
.colorstyle_2.plastic .form_holder #show_color:hover,
.colorstyle_2.plastic .form_holder #show_ext:hover,
.colorstyle_2.plastic .form_holder #reset:hover,
.colorstyle_2.plastic .openModalResetBox #resetall:hover,
.colorstyle_2.plastic .openModalResetBox #resetindividual:hover {
	color: #F60;
	border: solid 1px #000;

	/* BACKGROUND COLOR */
	/* Old browsers */
	background: #666;
	/* Webkit (Chrome10+/Safari5.1+) */
	background: -webkit-linear-gradient(top, #666 0%, #000 100%);
	/* Firefox */
	background: -moz-linear-gradient(top, #666 0%, #000 100%);
	/* IE10+ */
	background: -ms-linear-gradient(top, #666 0%, #000 100%);
	/* W3C Markup, IE10 Release Preview */
	background: linear-gradient(to bottom, #666 0%, #000 100%);
}
/* ------- COLORS FOR POLLING ------- */
/* User-Page polling */
.colorstyle_2 #picolor {
	background-color: #F60
}
.colorstyle_2 #inc,
.colorstyle_2 #polling.pollingenabled,
.colorstyle_2 #dec,
.colorstyle_2 .regexbutton {
	background-color: #F60
}
.colorstyle_2 #inc:hover,
.colorstyle_2 #polling.pollingenabled:hover,
.colorstyle_2 #dec:hover {
	background-color: #DB3700 !important;
}
.colorstyle_2 .regexbutton:hover {
	background-color: #000 !important;
	color: #F60;
}

/* ------- STYLESWITCHER ------- */
.colorstyle_2 div.form_holder a.active {
	color: #F60
}
.colorstyle_2 div.form_holder a:hover {
	color: #F60
}
.colorstyle_2 ul.backchange li.active,
.colorstyle_2 ul.patchange li.active,
.colorstyle_2 ul.colchange li.active {
	border-color: #F60
}
.colorstyle_2 ul.backchange li:hover,
.colorstyle_2 ul.patchange li:hover,
.colorstyle_2 ul.colchange li:hover {
	border-color: #F60
}
.colorstyle_2 input[type="text"].color-picker:hover,
.colorstyle_2 input[type="text"].color-picker.active {
	border-color: #F60
}
.colorstyle_2 ul.fontcolorchange li:hover, 
.colorstyle_2 ul.fontcolorchange li.active {
	border-color: #F60
}
.colorstyle_2 ul.linkcolorchange li:hover,
.colorstyle_2 ul.linkcolorchange li.active {
	border-color: #F60
}
.colorstyle_2 .demo_icon:hover svg.svg_icons {
	fill:#F60;
}
/* ------- COLORS FOR LINKS ------- */
/* Color for links of icons */
.colorstyle_2 a img.icon {
	background-color: #F60
}
.colorstyle_2 a:hover img.icon {
	background-color: #DB3700
}
/* Color for links */
.colorstyle_2 a:link,
.colorstyle_2 a:visited,
.colorstyle_2 a:active {
	color: #DB3700
}
.colorstyle_2 a:hover {
	color: #000
}
/* Color for links in pre */
.colorstyle_2 pre a:link,
.colorstyle_2 pre a:visited,
.colorstyle_2 pre a:active {
	color: #000
}
.colorstyle_2 pre a:hover {
	color: #DB3700
}
/* Color links in config tables */
.colorstyle_2 .config a,
.colorstyle_2 .configreader a,
.colorstyle_2 .configuser a,
.colorstyle_2 .configservices a {
	color: #DB3700
}
.colorstyle_2 .config a:hover,
.colorstyle_2 .configreader a:hover,
.colorstyle_2 .configuser a:hover,
.colorstyle_2 .configservices a:hover {
	color: #000
}
/* Links color for table.subservicetable */
.colorstyle_2 .subservicetable a {
	color: #F60
}
/* Links color for table.subservicetable */
.colorstyle_2 .subservicetable a:hover {
	color: #FFF
}
/* Go to top link */
.colorstyle_2 .top_link a:hover {
	color: #F60
}
/* ------- COLORS FOR TOOLTIP ------- */
/* Colors for tooltip */
.colorstyle_2 a.tooltip1 {
	color: #F00;
}
/* ------- COLORS FOR DEBUG ------- */
/* Colors for debug */
.colorstyle_2 a.debugl:hover,
.colorstyle_2 a.debugs:hover {
	background-color: #000;
	color: #F60;
}
.colorstyle_2 a.debugls:link,
.colorstyle_2 a.debugls:visited {
	background-color: #000;
	color: #F60;
}
/* ------- COLORS FOR TEXT ------- */
/* Color for text */
.colorstyle_2 h4 {
	color: #F60
}
/* ------- COLORS FOR TABLES ------- */
/* Background color for th */
.colorstyle_2 table.config th,
.colorstyle_2 table.configreader th,
.colorstyle_2 table.configuser th,
.colorstyle_2 table.cacheex th,
.colorstyle_2 table.failban th,
.colorstyle_2 #servicesedit th,
.colorstyle_2 #addnewservice th,
.colorstyle_2 table.configservices th,
.colorstyle_2 table.readers th,
.colorstyle_2 table.writeemm th,
.colorstyle_2 table.emmrunning th,
.colorstyle_2 table.statsbalance th,
.colorstyle_2 table.status th,
.colorstyle_2 table.status td.subheadline {
	background-color: #333;
}
/* cacheex.html */
.colorstyle_2 table.stats th {
	background-color: #333;
}
/* scanusb.html */
.colorstyle_2 table.scanusb th {
	background-color: #333;
}
/* Color for Table */
.colorstyle_2 #dataTable tr:hover td,
.colorstyle_2 table.statsbalance tr:hover td,
.colorstyle_2 #servicesedit tr:hover td,
.colorstyle_2 table.failban tr:hover td,
.colorstyle_2 table.stats tr:hover td,
.colorstyle_2 table.status tr.a:hover td,
.colorstyle_2 table.status tr.c:hover td,
.colorstyle_2 table.status tr.s:hover td,
.colorstyle_2 table.status tr.l:hover td,
.colorstyle_2 table.status tr.n:hover td,
.colorstyle_2 table.status tr.m:hover td,
.colorstyle_2 table.status tr.h:hover td,
.colorstyle_2 table.status tr.r:hover td,
.colorstyle_2 table.status tr.p:hover td  {
	background-color: #FAE2d2 !important
}
.colorstyle_2 #dataTable tr:hover td.td-sorting {
	background-color: #E3CDBF !important
}
.colorstyle_2 #dataTable tfoot tr:hover td,
.colorstyle_2 table.statsbalance tfoot tr:hover td {
	background-color: transparent !important;
}
/* ------- COLORS FOR PAGINATION ------- */
/* Color for pagination */
.colorstyle_2 div.pager span.active,
.colorstyle_2 div.pager span.clickable:hover {
	background: #F60;
	color: #000;
}

/* **************************** EXTENDED SETTINGS (may be different in the individual styles) */
/* **************** STYLESWITCHER */
.colorstyle_2 div.form_holder ul.addClass a:hover,
.colorstyle_2 div.form_holder ul.addClass a.active {
	border: 1px solid #232323;
	background-color: #333;
}
/* **************** 5. MAIN MENU */
.colorstyle_2 #main {
	/* BACKGROUND COLOR */
	background: #333;
}
.colorstyle_2 li.menu a {
	color:#D6D6D6;
}
.colorstyle_2 svg.svg_icons {
	fill: #D6D6D6;
}
/* **************** 6. SUBNAV */
.colorstyle_2 #subnav {
	background: #E5E5E5;
}
/* **************** 11. DIV */
/* footer.html */
.colorstyle_2 div.footer {
	background-image: inherit;
	border-top: 10px solid #232323;
	background-color: #333;
	color: #D6D6D6;
}

/* ==================================================================  ENVI TEMPLATE - STYLE 3 */
/* Settings for Template color style "colorstyle_3" */


/* ==================================================================  ENVI TEMPLATE - STYLE 4 */
/* Settings for Template color style "colorstyle_4" */


/* ################################# RESPONSIVE DESIGN for STREAMBOARD ################################# */

/* **************** 5. MAIN MENU */
/* checkbox for show/hide main menu 
 * (it is used only for showing main menu on mobile device) 
 * for desktops browser is not used */
#toggle, #subtoggle {display: none}
.toggle,.subtoggle {display: none}

/* ################ DESKTOPS ################ */

/* ################ MOBILE PHONES ################ */

@media screen and (max-width: 360px) and (max-aspect-ratio: 13/9) {

/* **************** 1. BASIC DIVISION PAGES */
	body {
		position: relative;
		overflow-x: hidden
	}
	#content {
		padding: 0px 0px 280px
	}

/* **************** 3. BASIC SETTINGS - BODY,P,H4,LI,B */
		/* pre_shutdown.html */
		h4 {
			line-height: 1.2em; 
		}
		/* file.html, script.html */
		#filename,#filesubmit {
			font-size: 1.5em
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
			display: block;
			opacity: 1;
			z-index: 1050
		}
	/* label for checkbox */
		.toggle {
			display: block;
			position: relative;
			cursor: pointer;
			-webkit-touch-callout: none;
			  -webkit-user-select: none;
					  user-select: none;
			z-index: 1050
		}
		.toggle:after {
			content:'\2261 \00a0 \00a0 Main menu';
			display: block;
			width: 100%;
			padding: 13px 50px;
			background-color: #000;
			text-align: center;
			font-size: 1.5em;
			font-weight: 700;
			color: #FFF;
			-webkit-transition: all 0.5s linear;
			   -moz-transition: all 0.5s linear;
					transition: all 0.5s linear;
			-webkit-box-sizing: border-box;
			   -moz-box-sizing: border-box;
					box-sizing: border-box;

			/* BOX SHADOW */
			-webkit-box-shadow: 0 8px 6px -6px  rgba(50, 50, 50, 0.32);
			   -moz-box-shadow: 0 8px 6px -6px  rgba(50, 50, 50, 0.32);
					box-shadow: 0 8px 6px -6px  rgba(50, 50, 50, 0.32)
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
			height: 46px
		}
		#mainmenu, #mainmenu > li, #mainmenu > li > a{ 
			height: auto
		}
		#mainmenu { 
			display: none;
			opacity: 0;
			width: 50%;
			position: absolute;
			left: 0;
			padding-top: 0;
			margin-top: 0
		}
		#mainmenu > li {
			display: block;
			width: 100%;
			margin: 0;
			background: #131517;
			border-top: 1px solid #4D4D4D;
			font-size: 1.5em;
			font-weight: 700;
			padding: 0
		}
		#mainmenu > li:hover {

		}
		li.menu a {
			color: #FFF;
			font-weight: 700
		}
		li.menu a:hover,
		li.menu_selected a {
			color: #F00
		}
		#mainmenu > li:last-child {
			border-bottom: 2px solid #000;

			/* BOX SHADOW */
			-webkit-box-shadow: 0 8px 6px -6px  rgba(50, 50, 50, 0.32);
			   -moz-box-shadow: 0 8px 6px -6px  rgba(50, 50, 50, 0.32);
					box-shadow: 0 8px 6px -6px  rgba(50, 50, 50, 0.32)
		}
		#mainmenu > li > a {
			width: 100%;
			text-decoration: none;
			display: block;
			padding: 10px;
			-webkit-box-sizing:border-box;
			   -moz-box-sizing:border-box; 
					box-sizing:border-box
		}
		span.span_notifier {
			margin-left: 5px;
			font-weight: 700
		}
/* **************** 6. SUBNAV */
	/* checkbox for show/hide subnav */
		#subtoggle:checked ~ #nav {display:block;opacity:1}
	/* label for checkbox */
		.subtoggle {
			display: block;
			position: relative;
			cursor: pointer;
			-webkit-touch-callout: none;
			  -webkit-user-select: none;
					  user-select: none
		}
		.subtoggle:after {
			content:'Submenu \25bc';
			display: block;
			width: 100%;
			padding: 10px 50px;
			background-color: #707070;
			text-align: center;
			font-size: 1.3em;
			font-weight: 700;
			color: #FFF;
			-webkit-transition: all 0.5s linear;
			   -moz-transition: all 0.5s linear;
					transition: all 0.5s linear;
			-webkit-box-sizing: border-box;
			   -moz-box-sizing: border-box;
					box-sizing: border-box;

			/* BOX SHADOW */
			-webkit-box-shadow: 0 8px 6px -6px  rgba(50, 50, 50, 0.32);
			   -moz-box-shadow: 0 8px 6px -6px  rgba(50, 50, 50, 0.32);
					box-shadow: 0 8px 6px -6px  rgba(50, 50, 50, 0.32)
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
			display: none;
			opacity: 0;
			width: 65%;
			position: absolute;
			right: 0;
			padding-top: 0;
			margin-top: 0;
			z-index: 1040
		}
		#nav > li {
			display: block;
			width: 100%;
			margin: 0;
			background: #EDEDED;
			font-size: 1.3em;
			font-weight: 400;
			padding: 0
		}
		#nav > li > a {
			width: 100%;
			text-decoration: none;
			display: block;
			padding: 10px;
			-webkit-box-sizing:border-box;
			   -moz-box-sizing:border-box; 
					box-sizing:border-box
		}
		#nav > li:last-child {
			border-bottom: 2px solid #000;
			border-top: 1px solid #CFCFCF;
			margin-bottom: 20px;

			/* BOX SHADOW */
			-webkit-box-shadow: 0 8px 6px -6px  rgba(50, 50, 50, 0.32);
			   -moz-box-shadow: 0 8px 6px -6px  rgba(50, 50, 50, 0.32);
					box-shadow: 0 8px 6px -6px  rgba(50, 50, 50, 0.32)
		}
		#nav li.pollselect {
			display: block;
			position: relative;
			right: 0;
			padding: 10px 0
		}
		#nav > li > b {
			line-height: 2em
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
		font-size: 1.2em
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
		fill: #FFFFFF;
		height: 28px;
		width: 28px;
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
		margin: 5px
	}
	ul.textfooter ul li,ul.textfooter ul li:last-child {
		display: list-item;
		list-style-type: square
	}
	ul.textfooter ul {
		text-align: left;
		margin: auto;
		width: 60%
	}
	div.footer ul.addClass li {
		font-size: 1.2em
	}
	li.developed {
		font-size: 1.1em
	}
	li.styleauthor {
		padding: 2px
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
		font-size: 1.2em
	}
	.modalDialog a {
		font-weight: normal;
		font-size: 1em
	}

/* **************** X. JQUERY STYLESWITCHER */
	.demo_changer {
		display: none
	}

/* **************** X. ICONS */
	a[class*="menu_image"] {
		background-repeat: no-repeat;
		background-position: 20px center;
		cursor: pointer;
	}
}

@media only screen and (min-device-width: 320px) and (max-device-width: 480px) and (-webkit-device-pixel-ratio: 2) and (device-aspect-ratio: 2/3) and (orientation:portrait) {

/* **************** 1. BASIC DIVISION PAGES */
	#content {
		padding: 0px 0px 250px
	}

/* **************** 3. BASIC SETTINGS - BODY,P,H4,LI,B */
		/* pre_shutdown.html */
		h4 {
			line-height:1.2em
		}

/* **************** 5. MAIN MENU */
		#mainmenu > li {
			line-height: 1.2em;
			font-size: 1.2em
		}

/* **************** 11. DIV */
	/* pre_autoconf.html, pre_shutdown.html */
	div.warning {
		margin: 16px 0 14px;
		padding: 0 10px;
		line-height: 1.2em
	}

/* **************** X. FOOTER */
	div.footer  {
		height: auto;
		padding-bottom: 10px;
		font-size: 0.9em
	}
	li.developed {
		font-size: 1em
	}
}
