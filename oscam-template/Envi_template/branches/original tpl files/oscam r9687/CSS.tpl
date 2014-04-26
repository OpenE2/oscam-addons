<!--OSCam;4061420560;1.20-unstable_svn;9687;-->
/* Table of Content
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
	# 19. OTHER SETTINGS
===================================== */

/* **************** 1. RESET  */
* {margin:0;padding:0}

/* **************** 2. BASIC DIVISION PAGES */
html,body,* html #wrapper {height:100%}
#wrapper {position:relative;min-height:100%}
#content {margin-bottom:0;padding:0 8px 120px}
#footer {position:absolute;bottom:0;width:100%}

/* **************** 3. BASIC SETTINGS - BODY,P,H4 */
body {
	font-family:Arial;
	font-size:11px;
	text-align:center;
	background-color:#FFF;
	color:#000
}
/* pre_shutdown.html */
h4 {
	font-size:18px;
	line-height:9px;
	margin-top:20px;
	margin-bottom:20px;
	color:#AAA
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
	font-size:14px;
	margin: 10px 0
}
/* readerstats.html for P */
#text_totalecm {}
/* footer.html */
p.styleauthor:after {
	content:"Streamboard Team"
}
/* other settings for seubheadline */
td.subheadline p {
	text-align:left;
	font-weight:bold;
	margin-left:5px
}
/* footer.html */
div.footer p {
	margin:5px
}

/* **************** 4. LINKS */
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
a.debugl:hover{
	background-color:#A00;color:#FFF
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
	text-decoration:none;
	cursor:default
}
a.tooltip span,
a.tooltip1 span {
	display:none;
	z-index:99
}
a:hover span {
	display:block;
	position:absolute;
	top:1em;
	right:2em;
	padding:4px;
	font-weight:normal;
	text-align:left;
	background:#FFC;
	border:1px solid #000;
	color:#000
}
a:hover img.icon {
	background:red
}
/* logpage.html */
#savelog {
	text-decoration:none
}
/* ??? */
td.statuscol14 a, td.statuscol16 a, td.subheadline a {
	text-decoration:none
}
td.subheadline a {
	text-decoration:none
}
span a {
	text-align:center;
	text-decoration:none
}
td.statuscol4 a,
td.statuscol9 a,
td.statuscol13 a {
	text-align:center;
	text-decoration:none
}
/* module-webif.c class for services.html */
div.sidlistclose a {
	text-decoration:none;
	padding:0 3px;
	color:#FFF
}
/* **************** 5. MAIN MENU */
#main {}
#mainmenu {
	height:30px;
	padding-top:10px;
	display:inline-block;
	position:relative;
	background-color:#FFF
}
#mainmenu li {
	display:inline;
	margin-left:2px;
	margin-right:2px;
	padding:5px 3px 3px;
	font-size:18px;
	font-weight:700
}
li.menu a,li.menu a:hover,
li.menu_selected a,li.menu_selected a:hover {
	text-decoration:none;
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
	background-color:#FFF
}
#nav li {
	display:inline;
	margin-left:2px;
	margin-right:2px;
	padding:5px 3px 3px;
	padding-top:0;
	padding-bottom:0;
	font-size:14px
}
li.configmenu a, li.configmenu a:hover,
li.configmenu_selected a, li.configmenu_selected a:hover {
	text-decoration:none;
	color:#050840
}

/* **************** 7. TABLE */
table {
	border-spacing:1px;
	margin-left:auto;
	margin-right:auto
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
table.statusmeminfo, table.statususerinfo, 
table.statuscacheexinfo {
	width:60%;
	white-space:no-wrap;
	margin-top:0px;
	margin-bottom:0px
}

/* ------- CONFIG ------- */
/* for all part in CONFIGURATION item */
table.config {
	width:60%;
	margin-bottom:20px
}

/* ------- READERS ------- */
/* readers.html */
table.readers {
	width:100%
}
/* readerconfig.html */
table.configreader {
	width:850px
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
table.ECM_totals {
	margin-bottom:20px
}
table.ECM_totals,
table.user_totals {
	width:50%
}
/* user_edit.html */
table.configuser {
	width:60%;
	margin-bottom:20px
}

/* ------- SERVICES ------- */
/* services.html */
#addnewservice,#servicesedit {
	width:35%;
	text-align:center
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
	width:60%;
	white-space:no-wrap;
	margin-bottom:0px
}

/* ------- OTHER TABLES ------- */
/* for settings in configuration of readers and users */
table.invisible {
	margin-left:0
}
/* user_edit.html, readerconfig.html */
table.subservicetable {
	width:100%;
	background:#FFF
}

/* **************** 8. TABLE TR */
/* for entitlement of readers */
tr.e_valid td, tr.e_expired td, tr.e_header td {
	font-family:"Courier New", monospace
}
tr.e_valid td {background-color:#E6FEBF}
tr.e_expired td {background-color:#FFF3E7}
/* ????? */
tr.online td.usercol6 {background-color:#949494;color:#FFF}
tr.online td {background-color:#BFA}
tr.offline td {}
tr.expired td {background-color:#FBA}
tr.connected td {background-color:#FFA}
tr.disabled td {}
tr.disabled td:first-child img.icon,
tr.disabledreader td:first-child img.icon {
	background-color:#0A0
}

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
/* status_cacheexinfo.html, status_systeminfo.html, status_userinfo.html */
th.nameinfo {
	text-transform:uppercase;
	text-align:left;
	background-color:#999
}
/* status.html 
 * shorthand notation td[class*='statuscol'] for  td.statuscol0 -  td.statuscol16. 
 */
td[class*='statuscol'] {
	text-align:center
}
th.statuscol0 {
	width:0
}
th.statuscol15 {
	cursor:pointer
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
/* for settings in configuration of readers and users */
table.invisible td { 
	font-size:12px
}
table.invisible td:first-child {
	padding-left:0
}
/* services.html */
#servicesedit td {
	text-align:center
}
/* readerstatsnotfound.html, readerstatstimeoutbit.html
 * status_clientheadlinebit.html, status_clientheadlinewith.html
 * status_pheadline.html, status_rheadline.html
 */ 
td.subheadline {
	height:10px;
	border:0;
	padding:5px;
	background-color:#CCC;
	text-align:center
}
/* ??? */
td.centered,
td[class*='usercol'], /* shorthand notation td[class*='usercol'] for  td.usercol0 -  td.usercol25 */
td[class*='readercol'] { /* shorthand notation td[class*='readercol'] for  td.readercol0 -  td.readercol17 */
	text-align:center
}
td.statuscol0 {
	width:10px
}
td.statuscol1 {
	width:0
}
/* readerconfig_sidokbit.html */
td.servicescol1, td.servicescol2, td.servicescol3 {
	width:30%;
	border:0;
	border-spacing:1px
}

/* **************** 11. DIV */
/* status.html, entitlements_genericbit.html */
div.log {
	font-family:"Courier New", monospace;
	text-align:left;
	margin:20px 0;
	padding:10px;
	border:1px dotted #AAA;
	background-color:#FAFAFA;
	color:#666
}
/* module-webif.c class for services.html */
div.sidlist {
	font-family:"Courier New", monospace;
	text-align:left;
	padding:2px;
	border:1px dotted #AAA;
	background-color:#FFFDF5;
	color:#666
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
	margin:10px
}
/* pre_autoconf.html, pre_shutdown.html */
div.warning {
	margin:42px 0 14px
}
/* logobit.html - Logo for Oscam */
div.logo {
	position:absolute;
	top:10px;
	left:10px;
	z-index:0
}
/* READERS and USERS items */
div.groups {
	cursor:default;
	overflow:hidden;
	margin:0 auto;
	text-align:center;
	word-wrap:none;
	position:relative;
	width:40px
}
/* footer.html */
div.footer {
	padding-bottom:5px;
	padding-top:5px;
	margin-bottom:0;
	margin-top:40px;
	background-color:#EEE;
	border-top:3px solid #CCC
}
/* status.html, main DIV for statistics info */
div.info {
	max-width:1300px;
	margin:20px auto
}
/* debugmenu	- status_sdebug.html 
 * logmenu		- file.html
*/
div.debugmenu, div.logmenu {
	line-height:20px;
	margin-bottom:8px
}
/* entitlements_cccambit.html */
div.cccamentitlementtotals,
div.cccamentitlementcontrols {
	margin-top:14px
}
/* definition only for show or hide columns or DIV
 * #newuser		- in userconfig.html
 * #newreader	- in readers.html
 * #exp, #cwc, #acasc - only in module-webif.c for show/hide columns in userconfig.html
 */
#newuser, #newreader,
.exp, .cwc, .acas, .grp,
.hidden {
	display:none
}

/* **************** 12. TEXTAREA,SELECT,INPUT */
/* texteditor in file.html */
textarea.editor {
	font-size:11px;
	width:98%;
	height:508px;
	font-family:"Courier New", monospace;
	text-align:left;
	padding:8px 10px;
	border:1px dotted #AAA;
	background-color:#FAFAFA;
	color:#000
}
/* class for textarea */
textarea.bt {
	font-size:12px
}
/* generaly settings for all select */
select {
	padding:2px
}
/* generaly settings for all input */
input[type="text"] {
	padding:2px
}
/* solution for align vertical checkbox with text */
input[type=checkbox] {
	vertical-align:text-bottom;
	_vertical-align:middle;
	margin-right:5px
}
/* only for button in services.html */
#addnewservice input[type="submit"] {
	margin-left:10px
}
/* only for button in userconfig.html for addnewuser */
.users input[type="submit"] {
	margin-left:10px
}
/* only for button in readers.html for addnewreaders */
.readers input[type="submit"] {
	margin-left:10px
}
/* status_clientheadlinebit.html, status_clientheadlinewith.html
 * status_pheadline.html, status_rheadline.html
 */
td.subheadline select {
	text-align:center;
	font-size:10px
}
td.subheadline option {
    font-size:11px
}
td.subheadline option:first-child {
	display: none
}
/* settings for first option in select 
 * otherdropdown	- in script.html, menu.html
 */
#otherdropdown option:first-child {
    display:none
}

/* **************** 13. IMAGE */
/* generaly settings for images */
img {
	border:0 solid
}
/* for icons with following Action */
img.icon {
	border-radius:4px;
	border:0 solid;
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
	min-height:15px
}
/* logo IC_LOGO.tpL */
div.logo img {
	max-height:44px
}

td#out.centered img,
td#in.centered img {
	margin-bottom:-2px;
	margin-right:10px;
	margin-left: 10px
}

/* **************** 14. SPAN */
/* module-webif.c and userconfig_notify.html */
span.span_notifier {
	margin-left:2px;
	padding:1px 3px;
	color:#FFF;background:red
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
/* ??? */
span.e_expired {background-color:#FFF3E7}
.span, span {
	text-align:center;
	text-decoration:none
}

/* **************** 15. GRAPH */
rect.graph_bg {fill:white;}
text.graph_error {text-anchor:middle;fill:red;}
text.graph_grid_txt {text-anchor:end;font-size:12px;fill:gray;}
path.graph_grid {stroke-opacity:0.5;stroke:gray;}

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
.sorting-asc, .sorting-desc{
	background-color:#999
}
.sorting-desc{
	background-image: url(data:image/png;base64,R0lGODlhBQADAJEAAAAAAP///yMtMP///yH5BAEAAAMALAAAAAAFAAMAAAIFlD03K1sAOw==);
	background-repeat:no-repeat;
	background-position:4px center;
	cursor:pointer;
	padding-left:10px;
	padding-right:8px
}
.sorting-asc{
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
	height:580px;
	max-width:1500px;
	overflow-y:auto;
	list-style:none;
	text-align:left;
	margin:5px auto 15px;
	border:1px dotted #AAA;
	background-color:#FAFAFA;
	color:#666;
	font-family: "Courier New",monospace
}
#livelogdata {
	list-style:none;
}
li.regex, li.regexdata_nav, li.regexdata_save{
	list-style-type:none;
	white-space:nowrap
}
input.regexinput {
	cursor:text;
	padding:2px;
	margin: 3px 15px 1px 3px;
	width:400px;
}
.regexdata_nav input {
	width:100px;
	margin-bottom:8px
}
.regexdata_save input {
	width:90px;
	margin-top:10px
}
div.colorPicker-picker {
	height: 16px;
	width: 16px;
	display: inline;
	margin: 3px;
	padding: 4px 8px;
	border: 1px solid #ccc;
	cursor: pointer;
	line-height: 16px;
	font-size:0.75em;
	font-weight:bold;
	text-align: center;
}
div.colorPicker-palette {
	width: 110px;
	position: absolute;
	border: 1px solid #598FEF;
	background-color: #EFEFEF;
	padding: 2px;
	z-index: 9999;
}
div.colorPicker_hexWrap {width: 100%; float:left }
div.colorPicker_hexWrap label {font-size: 95%; color: #2F2F2F; margin: 5px 2px; width: 25%}
div.colorPicker_hexWrap input {margin: 5px 2px; padding: 0; font-size: 95%; border: 1px solid #000; width: 65%; }

div.colorPicker-swatch {
	height: 12px;
	width: 12px;
	border: 1px solid #000;
	margin: 2px;
	float: left;
	cursor: pointer;
	line-height: 12px;
}
/* User-Page polling */
#inc,#dec {
	padding:0 3px;
	margin: -3px 3px;
	border:none;
	background-color:#A00;
	color:#FFF;
	border-radius:4px;
	font-size:14px;
	font-weight:700;
	width: 22px;
	height: 22px;
}
#inc:hover,#dec:hover {
	background-color:red;
}
li.pollselect {
	display:inline;
	list-style:none;
	position: absolute;
	right: 10px;
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
	text-align:right;
	margin: 0 4px;
	padding: 0;
}
/* polling heartbeat */
#picolor {
	background-color:#A00; 
}

/* **************** 18. ECM BAR HISTORY */
#chart {
	position:absolute;
	width: 150px;
	height: 90px;
	border: 1px dotted #F00;
	background-color: #EAEAEA;
	padding:3px;	
}
#charthead {
	background-color:transparent;
	width:100%;
	height:5px;
	font-size:3;
}
#graph {
	width:98%;
	bottom:0;
	position:absolute;
}
.disabledtable {
    opacity: 0.5;
}
/* Statuspage Functions: Generate a Bar for Barchart */
div.bar {
	width: 5px;
	margin: 2px;
	display: inline-block;
	position: relative;
	background-color: #aeaeae;
	vertical-align: baseline;
}

/* **************** 19. OTHER SETTINGS */
/* margin top from previous table */
.margintop {
	margin-top:30px
}
.smallmargintop {
	margin-top:15px
}