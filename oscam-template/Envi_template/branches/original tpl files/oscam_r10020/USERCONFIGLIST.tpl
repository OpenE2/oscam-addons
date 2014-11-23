<!--OSCam;1367551276;1.20-unstable_svn;10020;-->
##TPLHEADERSHORT##
##REFRESH##
	<script type="text/javascript">
	
	var page = 'user';
	var jsonurl = 'oscamapi.json';
	var parameters = "?part=userstats";
	var stoppoll = 0;
	var pollintervall = 0;
	var pollrefresh = '##POLLREFRESHTIME##';
	
	</script>
	<script type="text/javascript">
	// script customization for templates
	
	/*
	* this function is called during poll runs on each row update
	* item contains the json class of actual item. Use the attribute
	* 'nopoll = "usercol1,usercolN"' in <tr> to exclude cell from normal poll
	*/
	function custompoll(item) {
		//example - uncomment to test
		/*
		var uid = "#" + item.user.usermd5;
		$( uid + " td.usercol4").html( 'ID of this row is ' + item.user.usermd5);
		*/
	}
	
	/*
	* this function is called after poll has updated the page
	*/
	function afterpoll(){
	 	// do something after poll
	}
	
	</script>
##TPLBODY##
##TPLMENU##
	<DIV ID="subnav">
		<UL ID="nav">
			<LI CLASS="configmenu"><A HREF="#" onclick="adduser();">Add User</A></LI>
			<LI CLASS="configmenu"><A HREF="userconfig.html?action=reinit">Reinit User DB</A></LI>
			<LI CLASS="configmenu"><A HREF="userconfig.html?action=resetalluserstats" onclick="return confirm('Reset Userstats ?')">Reset Userstats</A></LI>
			<LI CLASS="configmenu"><A TARGET="_blank" HREF="graph.svg?type=users&amp;hidelabels=1">Show Graphs</A></LI>
			<LI ID="poll" CLASS="pollselect" style="display: none;">Pollintervall:<input type="text" name="pintervall" class="pintervall" value="" readonly>sec.<button id="dec">&ndash;</button><button id="inc">+</button></LI>
		</UL>
	</DIV>
##TPLMESSAGE##
	<DIV ID="newuser">
		<form action="user_edit.html" method="get">
		<TABLE CLASS="users">
			<TR><TH>New User: <input name="user" type="text"><input type="submit" value="Add" title="Add New User"></TH></TR>
		</TABLE>
		</form>
	</DIV>
	<DIV ID="searchTable">
		<TABLE CLASS="users">
			<TR><TH><input type="text" id="searchTerm" class="search_box" placeholder="Enter Searchterm"></TH></TR>
		</TABLE>
	</DIV>
	<TABLE ID="dataTable" CLASS="users">
	<THEAD>
		<TR>
			<TH COLSPAN="4"></TH>
			<TH CLASS="##GRPVIEW##"></TH>
			<TH COLSPAN="2"></TH>
			<TH COLSPAN="8">ECM</TH>
			<TH COLSPAN="2">EMM</TH>
##TPLUSERCWCYCLE##
##TPLUSERANTICASC##
			<TH CLASS="##EXPIREVIEW##"></TH>
			<TH COLSPAN="3"></TH>
		</TR>
		<TR id="headline" onClick="cdpause()"> <!--  Resolve  -->
			<TH>On/Off</TH>
			<TH data-sort="string-ins" data-sort-default="asc" class="sortable">User</TH>
			<TH data-sort="ip" class="sortable">Status<BR>Address</TH>
			<TH data-sort="string-ins" data-sort-default="asc" class="sortable">Protocol</TH>
			<TH CLASS="##GRPVIEW##">Groups</TH>
			<TH>Idle Time<BR>On Channel</TH>
			<TH data-sort="string-ins" class="sortable">Last Channel</TH>
			<TH data-sort="int" data-sort-default="desc" class="sortable" TITLE="Last ECM Time">LTIME</TH>
			<TH data-sort="int" data-sort-default="desc" class="sortable" TITLE="Delivered ECM with status OK">OK</TH>
			<TH data-sort="int" data-sort-default="desc" class="sortable" TITLE="Delivered ECM with status not OK">NOK</TH>
			<TH data-sort="int" data-sort-default="desc" class="sortable" TITLE="Ignored ECM by filters">IGN</TH>
			<TH data-sort="int" data-sort-default="desc" class="sortable" TITLE="Timeout ECM, part of NOK">TOUT</TH>
			<TH data-sort="int" data-sort-default="desc" class="sortable" TITLE="Delivered ECM from cache, part of OK">CACHE</TH>
			<TH data-sort="int" data-sort-default="desc" class="sortable" TITLE="Delivered ECM from tunneled, part of OK">TUN</TH>
			<TH data-sort="int" data-sort-default="desc" class="sortable" TITLE="Sum of ECM's in last 60 seconds">last 60 s</TH>
			<TH data-sort="int" data-sort-default="desc" class="sortable" TITLE="Valid EMM delivered">OK</TH>
			<TH data-sort="int" data-sort-default="desc" class="sortable" TITLE="Invalid EMM delivered">NOK</TH>
##TPLCWCYCLETHV##
##TPLCWANTICASCTHV##
			<TH data-sort="string" class="sortable ##EXPIREVIEW##" TITLE="Expiration date of account">Exp. Date</TH>
			<TH COLSPAN="3">Action</TH>
		</TR>
	</THEAD>
	<TBODY class="content">
##USERCONFIGS##
	</TBODY>
	</TABLE>
<DIV CLASS="info">
<TABLE CLASS="infotable">
##TPLUSERINFOBIT##
</TABLE>
</DIV>
<DIV id="picolor"></DIV>
##TPLFOOTER##
