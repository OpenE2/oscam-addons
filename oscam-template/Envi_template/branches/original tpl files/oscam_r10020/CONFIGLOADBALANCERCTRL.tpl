<!--OSCam;25973108;1.20-unstable_svn;10020;WITH_LB-->
	<form action="config.html" method="get">
	<input name="part" type="hidden" value="loadbalancer">
	<TABLE CLASS="config">
		<TR><TH COLSPAN="4">Loadbalancer Statistic Control</TH></TR>
		<TR CLASS="configcontrol">
			<TD CLASS="centered" COLSPAN="2"><input type="submit" name="button" title="Load Stats" onclick="return confirm('Load saved Stats ?')" value="Load Stats" ##BTNDISABLED##></TD>
			<TD CLASS="centered" COLSPAN="2"><input type="submit" name="button" title="Save Stats" onclick="return confirm('Save Stats ?')" value="Save Stats" ##BTNDISABLED##></TD>
		</TR>
		<TR CLASS="configcontrol">
			<TD CLASS="centered"><input type="submit" name="button" title="Clear Stats" onclick="return confirm('Clear all Stats ?')" value="Clear Stats" ##BTNDISABLED##></TD>
			<TD CLASS="centered"><input type="submit" name="button" title="Clear Timeouts" onclick="return confirm('Clear all Timeouts ?')" value="Clear Timeouts" ##BTNDISABLED##></TD>
			<TD CLASS="centered"><input type="submit" name="button" title="Clear Not Found" onclick="return confirm('Clear all not Found ?')" value="Clear Not Found" ##BTNDISABLED##></TD>
			<TD CLASS="centered"><input type="submit" name="button" title="Clear Invalid" onclick="return confirm('Clear all Invalid ?')" value="Clear Invalid" ##BTNDISABLED##></TD>
		</TR>
	</TABLE>
	</form>
