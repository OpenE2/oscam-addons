<!--OSCam;3060977157;1.20-unstable_svn;9063;TOUCH-->
<!DOCTYPE html><head><meta name=viewport content='width=device-width, minimum-scale=1, maximum-scale=1'><title>OSCam</title><meta http-equiv=Content-Type content='text/html; charset=##HTTP_CHARSET##'><meta name=format-detection content='telephone=no'/><meta name=apple-mobile-web-app-capable content=yes /><link rel=stylesheet type='text/css' href='site.css'><link rel=stylesheet href='http://code.jquery.com/mobile/1.1.1/jquery.mobile-1.1.1.min.css'/><script src='http://code.jquery.com/jquery-1.7.2.min.js'></script><script src='http://code.jquery.com/mobile/1.1.1/jquery.mobile-1.1.1.min.js'></script><script>actDebugLevel='##ACTDEBUG##'</script><script type='text/javascript' src='oscam.js'></script></head><div data-theme=c id=home data-role=page><div data-theme=b data-role=header data-position=fixed><a data-theme=e data-icon=refresh href='javascript:reloadPage()'>Refresh</a><h1>OSCam</h1><a data-theme=e data-icon=delete data-iconpos=notext href='javascript:window.location="/"'></a></div><div data-role=content><div id=rdrDiv data-role=content><ul data-role=listview id=rdrList></ul></div><div id=usrDiv data-role=content><ul data-role=listview id=usrList></ul></div><div id=logDiv data-role=content><ul data-role=listview id=logList></ul><div id=logText style='display:none'>##LOGHISTORY##</div></div><div id=sysDiv><span style='font-size:12px'><strong>Now:</strong> ##CURDATE## ##CURTIME##, <strong>Uptime:</strong> ##UPTIME##<br><strong>Access from:</strong> ##CURIP##<br><strong>Version:</strong> ##CS_VERSION## build r##CS_SVN_VERSION##<br></span><div style='text-align:center'><hr><p>Shutdown / Restart</p><div data-role=controlgroup data-type=horizontal style='width:250px;margin:auto'><a data-theme=e id=shutdown data-role=button style='color:red'>Shutdown</a><a data-theme=e id=restart data-role=button data-icon=refresh>Restart</a></div><hr><p>Load Balancer control</p><div id=lbButs style='width:260px;margin:auto'></div><span id=dbgBlk><hr><p>Debug Level: <span id=dbgLevel /></p><div data-role=controlgroup data-type=horizontal data-mini=true style='width:235px;margin:0 auto'><a data-theme=e id=dbgOff data-role=button>Debug log OFF</a><a data-theme=e id=dbgAll data-role=button style='color:green'>Debug log ALL</a></div><br><div id=dbgButs data-role=fieldcontain style='width:460px;margin:auto;'></div></span></div></div></div><div data-theme=b data-role=footer data-position=fixed id=footer></div></div>
