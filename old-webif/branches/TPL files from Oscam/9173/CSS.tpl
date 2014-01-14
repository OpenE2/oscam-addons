<!--OSCam;526601858;1.20-unstable_svn;9173;-->
/* 1. RESET 
------------------------------------------------------------------------------------*/
HTML,DIV,TABLE,TBODY,TFOOT,THEAD,TR,TH,TD {margin:0;padding:0;border:0}

/* 2. BASIC SETTINGS 
------------------------------------------------------------------------------------*/
BODY {background-color:white;font-family:Arial;font-size:11px;text-align:center}
P {color:white}
P.blinking {font-weight:bold;font-size:large;color:red;animation:blink 1000ms infinite;-webkit-animation:blink 1000ms infinite}
H2 {color:#AAA;font-size:32px;line-height:32px;margin-top:0px; margin-bottom:0px}
H2.headline1 {}
H4 {color:#AAA;font-size:12px;line-height:9px}
H4.footline1 {}
H4.footline2 {}
H4.styleauthor:after {content:"Eneen"}

/* 3. BLINKING TEXT - css3
------------------------------------------------------------------------------------*/
/* Standard (Mozilla) */@keyframes blink{from{opacity:1}to{opacity:0}}
/* Chrome & Safari */   @-webkit-keyframes blink{from{opacity:1}to{opacity:0}}

/* 4. TABLES
------------------------------------------------------------------------------------*/
TABLE {border-spacing:1px;margin-left:auto;margin-right:auto}
TABLE.upspace {margin-top:28px}
TABLE.menu {border-spacing:0px}
TABLE.status {width:100%;background-color:white;empty-cells:show}
TABLE.config {width:760px}
TABLE.configreader {width:850px}
TABLE.readers {}
TABLE.stats {}
TABLE.statsbalance TD:last-child{line-height:20px;width:125px}
TABLE.statsbalance TD:last-child IMG.icon{float:right;margin-left:10px}
TABLE.invisible {margin-left:0}
TABLE.invisible TD {font-size:12px}
TABLE.invisibleser {margin-left:0;width:100%}
TABLE.invisibleser TD {font-size:12px}
TABLE.invisiblelb {border-spacing:0px;width:100%}
TABLE.invisiblelb TH {width:33%;text-align:left}
TABLE.invisiblelb TD {width:33%;font-size:12px;white-space: nowrap}
TABLE.invisibleservices {margin-left:0;width: 80%}
TABLE.invisibleservices TD {font-size:12px}
TABLE.configmenu {line-height:16px}
TABLE.users {}
TABLE.user_totals {}
TABLE.ECM_totals {margin-top:10px}

/* 5. TABLE HEADER - TH
------------------------------------------------------------------------------------*/
TH {height:10px;padding:5px;background-color:#CCC;color:black}
TH.statuscol0 {text-align:center;width:10px}
TH.statuscol1 {text-align:center}
TH.statuscol2 {text-align:center}
TH.statuscol3 {text-align:center}
TH.statuscol4 {text-align:center}
TH.statuscol5 {text-align:center}
TH.statuscol6 {text-align:center}
TH.statuscol7 {text-align:center}
TH.statuscol8 {text-align:center}
TH.statuscol9 {text-align:center}
TH.statuscol10 {text-align:center}
TH.statuscol11 {text-align:center}
TH.statuscol12 {text-align:center}
TH.statuscol13 {text-align:center}
TH.statuscol14 {text-align:center}
TH.statuscol15 {text-align:center}
TH.statuscol16 {text-align:center}
TH.withservices {}
TH.notservices {}
TH.lbservices {}

/* 6. TABLE CELLS - TD
------------------------------------------------------------------------------------*/
TD {height:10px;padding:5px;background-color:#EEE;color:black;text-align:left}
TD.centered {text-align:center}
TD.centered DIV {margin:auto}
TD.statuscol0 {text-align:center;width:10px}
TD.statuscol1 {text-align:center}
TD.statuscol2 {text-align:center}
TD.statuscol3 {text-align:center}
TD.statuscol4 {}
TD.statuscol5 {text-align:center}
TD.statuscol6 {text-align:center}
TD.statuscol7 {text-align:center}
TD.statuscol8 {text-align:center}
TD.statuscol9 {}
TD.statuscol10 {text-align:center}
TD.statuscol11 {text-align:center}
TD.statuscol12 {text-align:center}
TD.statuscol13 {}
TD.statuscol14 {text-align:center}
TD.statuscol14 A {text-decoration:none}
TD.statuscol15 {text-align:center}
TD.statuscol16 {text-align:center}
TD.statuscol16 A {text-decoration:none}
TD.usercol0 {text-align:center}
TD.usercol1 {}
TD.usercol2 {text-align:center}
TD.usercol3 {text-align:center}
TD.usercol4 {text-align:center}
TD.usercol5 {text-align:center}
TD.usercol6 {text-align:center}
TD.usercol7 {text-align:center}
TD.usercol8 {text-align:center}
TD.usercol9 {text-align:center}
TD.usercol10 {text-align:center}
TD.usercol11 {text-align:center}
TD.usercol12 {text-align:center}
TD.usercol13 {text-align:center}
TD.usercol14 {text-align:center}
TD.usercol15 {text-align:center}
TD.usercol16 {text-align:center}
TD.usercol17 {text-align:center}
TD.usercol18 {text-align:center}
TD.usercol19 {text-align:center}
TD.usercol20 {text-align:center}
TD.usercol21 {text-align:center}
TD.usercol22 {text-align:center}
TD.usercol23 {text-align:center}
TD.usercol24 {text-align:center}
TD.usercol25 {text-align:center}
TD.servicescol1 {}
TD.servicescol2 {}
TD.servicescol3 {border-left:2px solid #CCC}
TD.menu {color:black;background-color:white;font-size:14px;font-weight:bold}
TD.menu_selected {color:black;background-color:#E6FEBF;font-size:14px;font-weight:bold;font-style:italic}
TD.configmenu {color:black;background-color:white;font-weight:bold}
TD.configmenu_selected {color:black; background-color:#E6FEBF;font-weight:bold;font-style:italic}
TD.subheadline {height:10px;border:0px;padding:5px;background-color:#CCC;color:black}
TD.subheadline A {text-decoration:none}

/* 7. TABLE ROW - TR
------------------------------------------------------------------------------------*/
TR.s TD {background-color:#E1E1EF}
TR.l TD {background-color:#E1E1EF}
TR.n TD {background-color:#E1E1EF}
TR.h TD {background-color:#E1E1EF}
TR.r TD {background-color:#FFF3E7}
TR.p TD {background-color:#FDFBE1}
TR.c TD {background-color:#F1F5E6}
TR.a TD {background-color:#3F0}
TR.online TD {background-color:#BFA}
TR.online TD.usercol6 {background-color:#646464}
TR.offline TD {}
TR.expired TD {background-color:#FBA}
TR.connected TD {background-color:#FFA}
TR.enabledreader {}
TR.disabled TD:first-child IMG.icon {background-color:#0A0}
TR.disabledreader TD:first-child IMG.icon {background-color:#0A0}
TR.scanusbsubhead TD {background-color:#FDFBE1}
TR.e_valid TD {background-color:#E6FEBF;font-family:"Courier New", monospace}
TR.e_expired TD {background-color:#FFF3E7;font-family:"Courier New", monospace}
TR.e_header TD {font-family:"Courier New", monospace}

/* 8. DIV Elements
------------------------------------------------------------------------------------*/
DIV.log {margin:20px 0;border:1px dotted #AAA;background-color:#FAFAFA;padding:10px;font-family:"Courier New", monospace;color:#666;word-wrap:break-word; text-align:left}
DIV.sidlist {border:1px dotted #AAA;background-color:#fffdf5;padding:2px;font-family:"Courier New", monospace;color:#666;word-wrap:break-word; text-align:left}
DIV.sidlistclose {float:right;background-color:red;color:white}
DIV.sidlistclose A {padding:0 3px;color:white;text-decoration:none}
DIV.message {font-size: 12px;font-weight:bold;margin:5px 0}
DIV.div_notifier {height:14px;width:14px;border-radius:7px;-webkit-border-radius:7px;background-color:red;margin-left:4px;text-align:center;float:right}
DIV.debugmenu {line-height:20px}
DIV.logmenu {line-height:20px}
DIV.filterform {margin:10px}
DIV.cccamentitlementtotals {margin-top:14px}
DIV.cccamentitlementcontrols {margin-top:14px}
DIV.warning {margin:42px 0 14px 0}
DIV.logo {position:absolute;top:5px;left:5px}
DIV.header {}
DIV.footer {border-top:1px solid #AAA;margin-top:20px;padding-top:10px}
DIV.groups {overflow:hidden;text-overflow:ellipsis;-o-text-overflow:ellipsis;white-space:nowrap;width:40px;text-align:center;cursor:pointer;cursor:default}

/* 9. TEXTAREA
------------------------------------------------------------------------------------*/
TEXTAREA.bt {font-size:12px}
TEXTAREA.editor {font-size:11px;width:98%;height:508px;border:1px dotted #AAA;background-color: #FAFAFA;padding:8px 10px;font-family:"Courier New", monospace; color:black;word-wrap:break-word;text-align:left}

/* 10. BUTTON,INPUT,SELECT
------------------------------------------------------------------------------------*/
/* Firefox */
SELECT {padding:2px}
/* Safari and Chrome */
@media screen and (-webkit-min-device-pixel-ratio:0) {
SELECT {padding:1px}
input[type="submit"] {padding:2px 6px;}
}

/* 11. LINKS
------------------------------------------------------------------------------------*/
A.debugl:link {margin:0 1px;}
A.debugls:link {background-color:#A00;padding:1px 2px 2px;color:#FFF}
A.debugls:visited {background-color:#A00;color:#FFF}
A:link {color:#050840}
A:visited {color:#050840}
A:active {color:#050840}
A:hover {color:#FF9E5F}
A:hover IMG.icon {border: 1px solid yellow;width:20px;height:20px}
A.tooltip  {position:relative;text-decoration:none;cursor:default}
A.tooltip1 {position:relative;text-decoration:none;cursor:default;color:red}
A.tooltip  SPAN {display:none;z-index:99}
A.tooltip1 SPAN {display:none;z-index:99}
A:hover SPAN {display:block;position:absolute;top:2em;right:1em;padding:10px;color:#350;font-weight:normal;background:#FFD;text-align: left;border: 1px solid #666}

/* 12. IMAGE
------------------------------------------------------------------------------------*/
IMG {border:0px solid}
IMG.icon {border:0px solid;width:22px;height:22px;background-color:#A00;border-radius:3px;-webkit-border-radius:3px}
IMG.userpicon {max-height:22px;max-width:72px}

/* 13. SPAN Elements
------------------------------------------------------------------------------------*/
SPAN.e_valid {background-color:#E6FEBF}
SPAN.e_expired {background-color:#FFF3E7}
SPAN.span_notifier {padding:1px 3px;border-radius:10px;color:#FFF;margin-left:2px;background:#F00}
SPAN.idlesec_normal {font-size:9px;color:black}
SPAN.idlesec_alert {font-size:9px;color:red}
SPAN.global_conf {color:blue;font-size:12px;cursor:default;padding:4px}
SPAN.user_totals_headline {display:inline-block;margin:10px 0}
SPAN.debugt {}
SPAN.text_script {display:inline-block;margin:28px;font-weight:bold}
SPAN.text_entitle {display:inline-block;margin:14px;font-weight:bold}
SPAN.text_totalecm {display:inline-block;margin:14px;font-weight:bold}

/* 14. GRAPH
------------------------------------------------------------------------------------*/
rect.graph_bg {fill:white}
text.graph_error {text-anchor:middle;fill:red}
text.graph_grid_txt {fill:gray;text-anchor:end;style:font-size:12px}
path.graph_grid {stroke:gray;stroke-opacity:0.5}
