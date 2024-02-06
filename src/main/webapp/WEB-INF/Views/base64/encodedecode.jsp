<!DOCTYPE html>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<head>
 <meta charset="utf-8" />
  <title>Base64 Decode and Encode - Online</title>
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <meta name="theme-color" content="#5fa926" />
  <meta name="description" content="Decode from Base64 format or encode into it . This site has an easy to use online tool/utility to encode/decode your data." />
  <meta name="keywords" content="base64, decode, online, tool" />
  <meta name="robots" content="index, follow" />
   <script type="application/ld+json">
  {
    "@context": "http://schema.org",
    "@type": "WebSite",
    "url": "https://base64-b6xr.onrender.com/",
    "name": "Base64 Decode and Encode - Online",
    "description": "Decode from Base64 format or encode into it . This site has an easy to use online tool/utility to encode/decode your data.",
    "keywords": "base64, decode, online, decoder, encoder, util, tool ",
    "inLanguage": "en",
    "dateCreated": 2024,
    "isAccessibleForFree": true
  }
  </script>
   <style><%@include file="/WEB-INF/Views/css/base64.css"%></style>
  <style>body{background-color:#1aa7ec;button { width: 170px;height: 50px;font-size: 20px}</style>
</head>


<div class="page-content-wrapper">
	<div class="page-content">
		<div class="page-head">
			<!-- BEGIN PAGE TITLE -->
			<div class="page-title">
				<h2>Base 64 Decoder</h2>
			</div>
			<button  type="submit"  , onclick="window.location.href = 'encode'">Encoder </button>
            <button  type="submit"  , onclick="window.location.href = '/'">Decoder </button>
            <br><br></br></br>
			<!-- END PAGE TITLE -->
		</div>
		<!-- END PAGE HEAD -->

		<div class="portlet default no-space">
					<div class="portlet-body">
						<div class="row">
									<div class="col-md-4 pull-left">
										<div class="btn-group">

										<textarea name="input" id="encoded" placeholder="Type (or paste) here..." spellcheck="false" rows="20" cols="100"></textarea>

										<div style="float: center;padding: 17px;color: #000;position: relative;"><button type="submit" style="float:center;" id="clickAction" onclick="clickActions()">Click to decode</a></div>
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
$("#rdesc").value='';
 var encodedStr = document.getElementById('encoded').value;
  if(encodedStr!=''){
  $.ajax({
    url: "/getDecodedString",
           data : "encodedString="+encodedStr,
    cache: false,
    success: function(html){

      $("#rdesc").val(html);
    },
    error: function (data) {

    }
  });
}
}
	</script
	<!-- END JAVASCRIPTS -->
