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
			# 4. SIMPLE COLOR PICKER

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
			# 21. TOOLTIP
			# 22. OTHER SETTINGS

		== ENVI TEMPLATE - ROTATE OSCAM LOGO
		== ENVI TEMPLATE - BORDER OF INFO TABLES
		== ENVI TEMPLATE - BUTTON BORDER RADIUS
		== ENVI TEMPLATE - NOTIFIER BORDER RADIUS
		== ENVI TEMPLATE - PLASTIC STYLE

		== ENVI TEMPLATE - STYLE 1
		== ENVI TEMPLATE - STYLE 2
		== ENVI TEMPLATE - STYLE 3
		== ENVI TEMPLATE - STYLE 4
		== ENVI TEMPLATE - STYLE 5

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
	height: 22px;
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
	min-height: 100px;
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
#inc,#dec,.regexbutton {
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
#inc:hover,#dec:hover,.regexbutton:hover {
	background-color:#F00
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
	position: relative;
	margin: 10% auto;
	padding: 13px 20px;
	background-color: #FFF
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
.demo_changer .form_holder {
	float: left;
	-webkit-box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.3);
	   -moz-box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.3);
			box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.3);
	width: 625px;
	padding: 0 0 10px 0;
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
	width: 195px;
	margin: 0px 5px 0px 10px;
}
.demo_changer .form_holder .form_holder_center  {
	float: left;
	width: 195px;
	margin: 0px 5px 0px 5px;
}
.demo_changer .form_holder .form_holder_right  {
	float: left;
	width: 195px;
	margin: 0px 10px 0px 5px;
}
.demo_changer .form_holder_one  {
	float: left;
	width: 100%;
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
.form_holder #reset {
	font-weight: 700;
	font-size: 11px;
	font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
	transition: all 0.5s ease 0s;
	-webkit-border-radius: 0;
	   -moz-border-radius: 0;
			border-radius: 0;
	color: #FFF;
	background: #BD0000;
	padding: 1px 6px;
	cursor:pointer;
	border: 1px solid transparent;
	width: 115px;
	height: 23px;
	text-transform: uppercase
}
.form_holder #reset:hover {
	background: #000
}
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
	list-style-type: initial;
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

/* List of colors, background, patterns */		
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

/* ============================================= STYLESWITCHER - COLOR SETTINGS ========================== */
/* **************** 1. TEMPLATE COLOR STYLE */
[data-style="colchange_0"] {
	background: #BD0000 !important
}
[data-style="colchange_1"],
li.colchange_1 {
	background: #16B6C6 !important
}
[data-style="colchange_2"],
li.colchange_2 {
	background: #FF9C00 !important
}
[data-style="colchange_3"],
li.colchange_3 {
	background: #FFE400 !important
}
[data-style="colchange_4"],
li.colchange_4 {
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

/* **************** 4. SIMPLE COLOR PICKER */

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
	border: 3px solid #E1E1E1;
}

.minicolors-swatch-color.active {
	border: 3px solid #f02;
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
	border: solid 1px #CCC;
	box-shadow: 0 0 20px rgba(0, 0, 0, .2);
	z-index: 99999;
	-moz-box-sizing: content-box;
	-webkit-box-sizing: content-box;
	box-sizing: content-box;
	display: none;
}

.minicolors-panel.minicolors-visible {
	display: block;
}

/* Panel positioning */
.minicolors-position-top .minicolors-panel {
	top: -154px;
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
	top: 1px;
	left: 1px;
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
	top: 1px;
	left: 152px;
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
.minicolors-theme-default .minicolors-swatch {
	top: 3px;
	left: 3px;
	width: 20px;
	height: 20px;	
}
.minicolors-theme-default.minicolors-position-right .minicolors-swatch {
	left: auto;
	right: 5px;
}
.minicolors-theme-default.minicolors {
	width: auto;
	display: inline-block;
}
.minicolors-theme-default .minicolors-input {
	height: 26px;
	width: auto;
	display: inline-block;
	padding-left: 26px;
}
.minicolors-theme-default.minicolors-position-right .minicolors-input {
	padding-right: 26px;
	padding-left: inherit;
}

/* Bootstrap theme */
.minicolors-theme-bootstrap .minicolors-swatch {
	top: 3px;
	left: 3px;
	width: 28px;
	height: 28px;
	border-radius: 3px;
}
.minicolors-theme-bootstrap.minicolors-position-right .minicolors-swatch {
	left: auto;
	right: 3px;
}
.minicolors-theme-bootstrap .minicolors-input {
	padding-left: 44px;
}
.minicolors-theme-bootstrap.minicolors-position-right .minicolors-input {
	padding-right: 44px;
	padding-left: 12px;
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
	background-image: -webkit-linear-gradient(bottom, #212121 0%, #000000 100%);
	/* Firefox */
	background-image: -moz-linear-gradient(bottom, #212121 0%, #000000 100%);
	/* IE10+ */
	background-image: -ms-linear-gradient(bottom, #212121 0%, #000000 100%);
	/* W3C Markup, IE10 Release Preview */
	background-image: linear-gradient(to bottom, #212121 0%, #000000 100%);

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
	margin-top: 14px;
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
	transition:color 0.5s ease 0s
}
.envi li.menu_selected a {
	color: #F00423;
	border-bottom: 2px solid #F00423;
	padding: 0px 7px 9px
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
	background-image: -webkit-linear-gradient(top, #F5F5F5 0%, #EEEEEE 100%);
	/* Firefox */
	background-image: -moz-linear-gradient(top, #F5F5F5 0%, #EEEEEE 100%);
	/* IE10+ */
	background-image: -ms-linear-gradient(top, #F5F5F5 0%, #EEEEEE 100%);
	/* W3C Markup, IE10 Release Preview */
	background-image: linear-gradient(to top, #F5F5F5 0%, #EEEEEE 100%);

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
	margin-top: 0
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
.envi table.readers tr:hover td.td-sorting,
.envi table.users tr:hover td.td-sorting,
.envi table.statsbalance tr:hover td.td-sorting {
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
.envi table.writeemm tr:nth-last-child(-n+2) td {
	background-color: transparent;
	border-bottom: medium none;
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
	transition: all 0.5s ease 0s
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
	transition: all 0.5s ease 0s;

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
.envi input[type="text"] {
	border: 1px solid #858585
}
.envi input[type="text"]:hover {
	border: 1px solid #000;
}
.envi .readers input[type="text"],
.envi .readers select,
.envi .users input[type="text"],
.envi .cacheex input[type="text"],
.envi #addnewservice input[type="text"] {
	outline: 1px solid #FFF;
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
.envi #inc, .envi #dec, .envi .regexbutton {
	background-color: #BD0000;
	border-radius: 0;
}
.envi #inc:hover, .envi #dec:hover, .envi .regexbutton:hover {
	background-color: #000;
	transition: all 0.5s ease 0s
}

/* **************** 19. FILE MENU */
/* For filemenu - change dropdown menu */
.envi #nav ul.dropdown_nav li a {
	padding: 3px 13px;
	margin: 0
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

/* **************** 22. OTHER SETTINGS */
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
	padding: 10px 6px 9px 26px !important;
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
	position: initial;
	top: initial;
	right: initial;
	padding: initial;
	background-color: initial;
	border: initial;
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
.infotable_border .configservices tbody tr:nth-last-child(3) td {
	border-bottom: 3px solid #000
}
.infotable_border table.infotable,
.infotable_border table.stats {
	border: 3px solid #222;
}
/* ==================================================================  ENVI TEMPLATE - BUTTON BORDER RADIUS */
/* styleswitcher */
.border_radius ul.addClass li a {
	border-radius: 4px;
}
/* Settings for border_radius */
.border_radius input[type="button"],
.border_radius input[type="submit"],
.border_radius #reset {
	-webkit-border-radius: 4px;
	   -moz-border-radius: 4px;
			border-radius: 4px
}
/* for icons with following Action */
.border_radius img.icon {
	border-radius: 4px;
}
/* User-Page polling */
.border_radius #inc, .border_radius #dec, .border_radius .regexbutton {
	border-radius: 4px;
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
	background: -webkit-gradient(linear, left top, left bottom, from(#CE0303), to(#6B0508));
	/* Firefox */
	background: -moz-linear-gradient(top,  #CE0303,  #6B0508);
	/* IE6-9 */
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#CE0303', endColorstr='#6B0508');
}
.plastic a:hover img.icon {
	border: solid 1px #BA0000;

	/* BACKGROUND COLOR */
	background: #EB0000;
}
.plastic tr.disabled td:first-child img.icon,
.plastic tr.disabledreader td:first-child img.icon {
    border: solid 1px #003300;

	/* BACKGROUND COLOR */
	/* Old browsers */
	background: #0D9C02;
	/* Webkit (Chrome10+/Safari5.1+) */
	background: -webkit-gradient(linear, left top, left bottom, from(#0D9C02), to(#1A3C08));
	/* Firefox */
	background: -moz-linear-gradient(top,  #0D9C02,  #1A3C08);
	/* IE6-9 */
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#008700', endColorstr='#003300');
}
.plastic tr.disabled td:first-child a:hover img.icon,
.plastic tr.disabledreader td:first-child a:hover img.icon {
	border: solid 1px #005400;

	/* BACKGROUND COLOR */
	background: #17AB15;
}

/* Main menu */
.plastic #main {
	/* BACKGROUND COLOR */
	/* Old browsers */
	background: #444;
	/* Webkit (Chrome10+/Safari5.1+) */
	background-image: -webkit-linear-gradient(bottom, #444 0%, #111 100%);
	/* Firefox */
	background-image: -moz-linear-gradient(bottom, #444 0%, #111 100%);
	/* IE10+ */
	background-image: -ms-linear-gradient(bottom, #444 0%, #111 100%);
	/* W3C Markup, IE10 Release Preview */
	background-image: linear-gradient(to bottom, #444 0%, #111 100%);
}

/* Settings for button */
.plastic input[type="button"],
.plastic input[type="submit"],
.plastic #reset {
	border: solid 1px #980C10;

	/* BACKGROUND COLOR */
	/* Old browsers */
	color: #FADDDE;
	background: #BD0000;
	/* Webkit (Chrome10+/Safari5.1+) */
	background: -webkit-gradient(linear, left top, left bottom, from(#CE0303), to(#6B0508));
	/* Firefox */
	background: -moz-linear-gradient(top,  #CE0303,  #6B0508);
	/* IE6-9 */
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#CE0303', endColorstr='#6B0508');

	/* TEXT SHADOW */
	text-shadow: 0 1px 1px rgba(0,0,0,.3);
	-webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2);
	   -moz-box-shadow: 0 1px 2px rgba(0,0,0,.2);
			box-shadow: 0 1px 2px rgba(0,0,0,.2);
}
.plastic input[type="button"]:hover,
.plastic input[type="submit"]:hover,
.plastic #reset:hover {
	border: solid 1px #000;
	transition: all 0s ease 0s;

	/* BACKGROUND COLOR */
	/* Old browsers */
	color: #FFF;
	background: #000;
	/* Webkit (Chrome10+/Safari5.1+) */
	background: -webkit-gradient(linear, left top, left bottom, from(#666C71), to(#454A4E));
	/* Firefox */
	background: -moz-linear-gradient(top,  #666C71,  #454A4E);
	/* IE6-9 */
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#666C71', endColorstr='#454A4E');

	/* TEXT SHADOW */
	text-shadow: 0 1px 1px rgba(0,0,0,.3);
	-webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2);
	   -moz-box-shadow: 0 1px 2px rgba(0,0,0,.2);
			box-shadow: 0 1px 2px rgba(0,0,0,.2);
}

 /* ==================================================================  ENVI TEMPLATE - STYLE 1 */
/* Settings for Template color style "colchange_1"
 * Basic colors: #16B6C6
 * Other colors: #038AA5 , #13A2AE , #30D9E8 , #D1E5EF , #C5D9E3 , #025D8C
 */
/* Color for main menu */
.colchange_1 li.menu_selected a {
	color: #16B6C6;
	border-bottom: 2px solid #13A2AE
}
.colchange_1 li.menu:hover a {
	color: #16B6C6;
	border-bottom: 2px solid #13A2AE
}
.colchange_1 #nav li.configmenu_selected > a:link,
.colchange_1 #nav li.configmenu_selected > a:visited,
.colchange_1 #nav li.configmenu_selected > a:active,
.colchange_1 #nav li.configmenu > a:hover {
	color: #16B6C6
}
/* Footer */
.colchange_1 div.footer li.styleauthor b {
	color: #16B6C6
}
/* Services */
.colchange_1 div.sidlistclose {
	background-color: #16B6C6
}
.colchange_1 div.sidlistclose:hover {
	background-color: #000;
	color: #16B6C6;
	transition: all 0.5s ease 0s
}
.colchange_1 div.sidlistclose a {
	color: #FFF
}
.colchange_1 div.sidlistclose:hover a{
	color: #16B6C6
}
/* Span Notifier */
.colchange_1 span.span_notifier {
	background-color: #16B6C6
}
/* Generaly settings for all buttons/submits */
.colchange_1 input[type=button],
.colchange_1 input[type=submit] {
	background-color: #16B6C6
}
/* Generaly hover settings for all buttons/submits */
.colchange_1 input[type=button]:hover,
.colchange_1 input[type=submit]:hover {
	background-color: #000;
	color: #16B6C6;
	transition: all 0.5s ease 0s
}
/* User-Page polling */
.colchange_1 #picolor {
	background-color: #16B6C6
}
.colchange_1 #inc,
.colchange_1 #dec,
.colchange_1 .regexbutton {
	background-color: #16B6C6
}
.colchange_1 #inc:hover,
.colchange_1 #dec:hover,
.colchange_1 .regexbutton:hover {
	background-color: #000;
	transition:all 0.5s ease 0s
}
/* StyleSwitcher */
.colchange_1 div.form_holder a.active {
	color: #038AA5
}
.colchange_1 div.form_holder a:hover {
	color: #038AA5
}
.colchange_1 ul.backchange li.active,
.colchange_1 ul.patchange li.active,
.colchange_1 ul.colchange li.active {
	border-color: #16B6C6
}
.colchange_1 ul.backchange li:hover,
.colchange_1 ul.patchange li:hover,
.colchange_1 ul.colchange li:hover {
	border-color: #16B6C6
}
.colchange_1 .form_holder #reset{
	background-color:#16B6C6
}
.colchange_1 .form_holder #reset:hover {
	background-color: #000;
	color: #16B6C6;
	transition: all 0.5s ease 0s
}
/* Color for links of icons */
.colchange_1 a img.icon {
	background-color: #13A2AE
}
.colchange_1 a:hover img.icon {
	background-color: #30D9E8
}
/* Color for links */
.colchange_1 a:link,
.colchange_1 a:visited,
.colchange_1 a:active {
	color: #038AA5
}
.colchange_1 a:hover {
	color: #000
}
/* Colors for tooltip */
.colchange_1 a.tooltip1 {
	color: #F00;
}
/* Colors for debug */
.colchange_1 a.debugl:hover,
.colchange_1 a.debugs:hover {
	background-color: #000;
	color: #16B6C6;
}
.colchange_1 a.debugls:link,
.colchange_1 a.debugls:visited {
	background-color: #000;
	color: #16B6C6;
}
/* Color links in config tables */
.colchange_1 .config a,
.colchange_1 .configreader a,
.colchange_1 .configuser a,
.colchange_1 .configservices a {
	color: #025D8C
}
.colchange_1 .config a:hover,
.colchange_1 .configreader a:hover,
.colchange_1 .configuser a:hover,
.colchange_1 .configservices a:hover {
	color: #000
}
/* Links color for table.subservicetable */
.colchange_1 .subservicetable a {
	color: #16B6C6
}
/* Links color for table.subservicetable */
.colchange_1 .subservicetable a:hover {
	color: #FFF
}
/* Color for text */
.colchange_1 h4 {
	color: #16B6C6
}
/* Go to top link */
.colchange_1 .top_link a:hover {
	color: #16B6C6
}
/* Color for Table */
.colchange_1 #dataTable tr:hover td,
.colchange_1 table.statsbalance tr:hover td,
.colchange_1 #servicesedit tr:hover td,
.colchange_1 table.failban tr:hover td,
.colchange_1 table.stats tr:hover td,
.colchange_1 table.status tr.a:hover td,
.colchange_1 table.status tr.c:hover td,
.colchange_1 table.status tr.s:hover td,
.colchange_1 table.status tr.l:hover td,
.colchange_1 table.status tr.n:hover td,
.colchange_1 table.status tr.m:hover td,
.colchange_1 table.status tr.h:hover td,
.colchange_1 table.status tr.r:hover td,
.colchange_1 table.status tr.p:hover td  {
	background-color: #D1E5EF !important
}
.colchange_1 table.readers tr:hover td.td-sorting,
.colchange_1 table.users tr:hover td.td-sorting,
.colchange_1 table.statsbalance tr:hover td.td-sorting {
	background-color: #C5D9E3 !important
}
.colchange_1 #dataTable tfoot tr:hover td,
.colchange_1 table.statsbalance tfoot tr:hover td {
	background-color: transparent !important;
}
/* Color for pagination */
.colchange_1 div.pager span.active,
.colchange_1 div.pager span.clickable:hover {
	background: #16B6C6;
	color: #000;
}
/* ==================================================================  ENVI TEMPLATE - STYLE 2 */
/* Settings for Template color style "colchange_2" */

/* ==================================================================  ENVI TEMPLATE - STYLE 3 */
/* Settings for Template color style "colchange_3" */


/* ==================================================================  ENVI TEMPLATE - STYLE 4 */
/* Settings for Template color style "colchange_4" */


/* ==================================================================  ENVI TEMPLATE - STYLE 5 */
/* Settings for Template color style "colchange_5" */


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
