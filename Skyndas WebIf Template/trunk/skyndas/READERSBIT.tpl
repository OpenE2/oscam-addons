<!--OSCam;1777029975;1.20-unstable_svn;9102;-->
			<TR CLASS ="##READERCLASS##">
				<TD class="centered"><A HREF="readers.html?label=##READERNAMEENC##&amp;action=##SWITCH##" TITLE="##SWITCHTITLE##"><IMG CLASS="icon" SRC="##SWITCHICO##" ALT="##SWITCHTITLE##"></A></TD>
				<TD>
					<iframe name="myIFrame_##READERNAME##" src="readerconfig.html?label=##READERNAME##" width="0" height="0" style="visibility:hidden;display:none"  onload="getContent_##READERNAME##();"></iframe>
					<script language=javascript>
						function getContent_##READERNAME##()
						{
						var frame = window.frames["myIFrame_##READERNAME##"].document;
						var content = frame.getElementsByName("description")[0].value;
						$(yourdiv_##READERNAME##).tooltip('hide')
                                       .attr('data-original-title', content)
                                       .tooltip('fixTitle')
                        content = ""; 
						}
					</script>
					<span id="yourdiv_##READERNAME##" title="" style="cursor:pointer;">##READERNAME##</span>
				</TD>
				<TD>##CTYP##</TD>
				<TD class="centered">##EMMERRORUK## / ##EMMERRORG## / ##EMMERRORS## / ##EMMERRORUQ##</TD>
				<TD class="centered">##EMMWRITTENUK## / ##EMMWRITTENG## / ##EMMWRITTENS## / ##EMMWRITTENUQ##</TD>
				<TD class="centered">##EMMSKIPPEDUK## / ##EMMSKIPPEDG## / ##EMMSKIPPEDS## / ##EMMSKIPPEDUQ##</TD>
				<TD class="centered">##EMMBLOCKEDUK## / ##EMMBLOCKEDG## / ##EMMBLOCKEDS## / ##EMMBLOCKEDUQ##</TD>
				<TD class="centered">##ECMSOK##</TD>
				<TD class="centered">##ECMSNOK##</TD>
				<TD class="centered">##ECMSFILTEREDHEAD## / ##ECMSFILTEREDLEN## </TD>
				<TD class="centered">##LBWEIGHT##</TD>
				<TD class="centered"><A HREF="readerconfig.html?label=##READERNAMEENC##" TITLE="Edit this Reader"><IMG CLASS="icon" SRC="image?i=ICEDI" ALT="Edit Reader"></A></TD>
				<TD class="centered">##ENTITLEMENT##</TD>
				<TD class="centered">##READERREFRESH##</TD>
				<TD class="centered">##WRITEEMM##</TD>
				<TD class="centered"><A HREF="readerstats.html?label=##READERNAMEENC##&amp;hide=4" TITLE="Show loadbalancer statistics"><IMG CLASS="icon" SRC="image?i=ICSTA" ALT="Loadbalancer statistics"></A></TD>
				<TD class="centered"><A HREF="readers.html?label=##READERNAMEENC##&amp;action=delete" TITLE="Delete this Reader"><IMG CLASS="icon" SRC="image?i=ICDEL" ALT="Delete Reader"></A></TD>
			</TR>
