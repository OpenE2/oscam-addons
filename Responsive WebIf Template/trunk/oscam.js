/*  ====================  Javascript Scroll Position  ====================  */
function addUnloadHandler(){var a,e;if(window.attachEvent){a=window.attachEvent;e='on';}else{a=window.addEventListener;e='';}a(e+'load',function(){loadScroll();if(typeof Sys!='undefined' && typeof Sys.WebForms!='undefined')Sys.WebForms.PageRequestManager.getInstance().add_endRequest(loadScroll);},false);}function loadScroll(){var c=document.cookie.split(';');for(var i=0;i<c.length;i++){var p=c[i].split('=');if(p[0]=='scrollPosition'){p=unescape(p[1]).split('/');for(var j=0;j<p.length;j++){var e=p[j].split(',');try{if(e[0]=='window'){window.scrollTo(e[1],e[2]);}}catch(ex){}}return;}}}function saveScroll(){var s='scrollPosition=';var l,t;if(window.pageXOffset!==undefined){l=window.pageXOffset;t=window.pageYOffset;}else if(document.documentElement&&document.documentElement.scrollLeft!==undefined){l=document.documentElement.scrollLeft;t=document.documentElement.scrollTop;}else{l=document.body.scrollLeft;t=document.body.scrollTop;}if(l||t){s+='window,'+l+','+t+'/';}document.cookie=s+';';}
/*  ====================  Function Search in READERS and USERS  ====================  */
function doSearch() {
    		var searchText = document.getElementById('searchTerm').value;
    		var targetTable = document.getElementById('dataTable');
    		var targetTableColCount;

    		//Loop through table rows
    		for (var rowIndex = 0; rowIndex < targetTable.rows.length; rowIndex++) {
    			var rowData = '';

    			//Get column count from header row
    			if (rowIndex == 0) {
    				targetTableColCount = targetTable.rows.item(rowIndex).cells.length;
    				continue; //do not execute further code for header row.
    			}

    			//Process data rows. (rowIndex >= 1)
    			for (var colIndex = 0; colIndex < targetTableColCount; colIndex++) {
    				var cellText = '';

    				if (navigator.appName == 'Microsoft Internet Explorer')
    					cellText = targetTable.rows.item(rowIndex).cells.item(colIndex).innerText;
    				else
    					cellText = targetTable.rows.item(rowIndex).cells.item(colIndex).textContent;

    				rowData += cellText;
    			}

    			// Make search case insensitive.
    			rowData = rowData.toLowerCase();
    			searchText = searchText.toLowerCase();

    			//If search term is not found in row data
    			//then hide the row, else show
    			if (rowData.indexOf(searchText) == -1)
    				targetTable.rows.item(rowIndex).style.display = 'none';
    			else
    				targetTable.rows.item(rowIndex).style.display = 'table-row';
    		}
    	}
/*  ====================  Convert month number to month name  ====================  */
        /*******************************************
         *      Aditional functions by: billyk     *
         *******************************************/
         // Convert month number to month name
         function getExpDate(expdate) {
           if (expdate != "") {
           // var expdate = expdate.replace("/","-");
           var monthname = "";
           var newdate = "";
           var split = expdate.split('-');
           var year = split[0];
           var month = split[1];
           var day = split[2];

                if (month == "01") { monthname = "Jan"; }
           else if (month == "02") { monthname = "Feb"; }
           else if (month == "03") { monthname = "Mar"; }
           else if (month == "04") { monthname = "Apr"; }
           else if (month == "05") { monthname = "May"; }
           else if (month == "06") { monthname = "Jun"; }
           else if (month == "07") { monthname = "Jul"; }
           else if (month == "08") { monthname = "Aug"; }
           else if (month == "09") { monthname = "Sep"; }
           else if (month == "10") { monthname = "Oct"; }
           else if (month == "11") { monthname = "Nov"; }
           else if (month == "12") { monthname = "Dec"; }
           else { monthname = month; }
                  newdate = day + '-' + monthname + '-' + year;
                  document.write(newdate);
           } else if (expdate == "") {
                  document.write(" - ");
           }
         }
         