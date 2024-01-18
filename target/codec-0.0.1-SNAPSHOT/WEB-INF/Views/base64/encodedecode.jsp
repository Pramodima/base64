<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


	<style>
#configTable tbody tr td:nth-child(3n) {word-break: break-all;}
table.table-bordered tbody th, table.table-bordered tbody td {word-wrap: break-word;word-break: break-all !important;width: 20% !important;}
table.table-bordered tbody th, table.table-bordered tbody td:nth-child(1) {width: 3% !important;}
#configTable tbody{background-color: #f5f5f5 !important;}
</style>
<div class="page-content-wrapper">
	<div class="page-content">
		<div class="page-head">
			<!-- BEGIN PAGE TITLE -->
			<div class="page-title">
				<h3>Doceree Cache</h3>
			</div>
			<!-- END PAGE TITLE -->
		</div>
		<!-- END PAGE HEAD -->
		<!-- BEGIN PAGE BREADCRUMB -->

		<div class="portlet default no-space">
					<div class="portlet-body">
						<div class="row">
									<div class="col-md-4 pull-left">
										<div class="btn-group">

										<textarea name="input" id="encoded" placeholder="Type (or paste) here..." spellcheck="false" rows="20" cols="100"></textarea>
										<a href="#" style="float:left;" id="clickAction" onclick="clickActions()">Click to decode</a>
										</div>
								</div>


							</div>
							<!--/span-->
						</div>
				</div>
		<br clear="all"/>
 <div id="resultDiv">

        <textarea name="rdesc" id="rdesc"  rows="20" cols="100" required></textarea>
    </div>
<script type="text/javascript">
var clickActions = function() {
 var encodedStr = document.getElementById('encoded').value;
 alert("Put a message here."+encodedStr);
  if(encodedStr!=''){
  $.ajax({
    url: "/getDecodedString",
           data : "encodedString="+encodedStr,
    cache: false,
    success: function(html){
      $("#rdesc").append(html);
    },
    error: function (data) {
                alert('error');
            }
  });
}
}
	</script
	<!-- END JAVASCRIPTS -->
