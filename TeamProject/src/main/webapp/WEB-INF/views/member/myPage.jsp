<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="description" content="Miminium Admin Template v.1">
<meta name="author" content="Isna Nur Azis">
<meta name="keyword" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="../resources/miminium-master/asset/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="../resources/miminium-master/asset/css/plugins/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="../resources/miminium-master/asset/css/plugins/simple-line-icons.css">
<link rel="stylesheet" type="text/css"
	href="../resources/miminium-master/asset/css/plugins/mediaelementplayer.css">
<link rel="stylesheet" type="text/css"
	href="../resources/miminium-master/asset/css/plugins/animate.min.css">
<link rel="stylesheet" type="text/css"
	href="../resources/miminium-master/asset/css/plugins/icheck/skins/flat/red.css">
<link href="../resources/miminium-master/asset/css/style.css"
	rel="stylesheet">

<link rel="shortcut icon"
	href="../resources/miminium-master/asset/img/logomi.png">
</head>
<style>
body {
	background-image: url("../resources/conference1.jpg");
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
<body>

</body>

<script src="../resources/miminium-master/asset/js/jquery.min.js" />
<script src="../resources/miminium-master/asset/js/jquery.ui.min.js" />
<script src="../resources/miminium-master/asset/js/bootstrap.min.js" />
<script
	src="../resources/miminium-master/asset/js/plugins/icheck.min.js" />
<script
	src="../resources/miminium-master/asset/js/plugins/moment.min.js" />
<script
	src="../resources/miminium-master/asset/js/plugins/mediaelement-and-player.min.js" />
<script
	src="../resources/miminium-master/asset/js/plugins/jquery.nicescroll.js" />
<script src="../resources/miminium-master/asset/js/main.js" />

<script type="text/javascript">
	$(document).ready(function() {
		$('input').iCheck({
			checkboxClass : 'icheckbox_flat-red',
			radioClass : 'iradio_flat-red'
		});
		$('video,audio').mediaelementplayer({
			alwaysShowControls : true,
			videoVolume : 'vertical',
			features : [ 'playpause', 'progress', 'volume', 'fullscreen' ]
		});
	});
</script>

</html>