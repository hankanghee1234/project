<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

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


</head>
<body>
<div class="container-fluid">
   <div class="row">
      <div class="col-md-5">
         <h3>
            h3. Lorem ipsum dolor sit amet.
         </h3>
         <nav class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
                
               <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                   <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
               </button> <a class="navbar-brand" href="#">Brand</a>
            </div>
            
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
               <ul class="nav navbar-nav">
                  <li class="active">
                     <a href="#">Link</a>
                  </li>
                  <li>
                     <a href="#">Link</a>
                  </li>
                  <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
                     <ul class="dropdown-menu">
                        <li>
                           <a href="#">Action</a>
                        </li>
                        <li>
                           <a href="#">Another action</a>
                        </li>
                        <li>
                           <a href="#">Something else here</a>
                        </li>
                        <li class="divider">
                        </li>
                        <li>
                           <a href="#">Separated link</a>
                        </li>
                        <li class="divider">
                        </li>
                        <li>
                           <a href="#">One more separated link</a>
                        </li>
                     </ul>
                  </li>
               </ul>
               <form class="navbar-form navbar-left" role="search">
                  <div class="form-group">
                     <input type="text" class="form-control" />
                  </div> 
                  <button type="submit" class="btn btn-default">
                     Submit
                  </button>
               </form>
               <ul class="nav navbar-nav navbar-right">
                  <li>
                     <a href="#">Link</a>
                  </li>
                  <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
                     <ul class="dropdown-menu">
                        <li>
                           <a href="#">Action</a>
                        </li>
                        <li>
                           <a href="#">Another action</a>
                        </li>
                        <li>
                           <a href="#">Something else here</a>
                        </li>
                        <li class="divider">
                        </li>
                        <li>
                           <a href="#">Separated link</a>
                        </li>
                     </ul>
                  </li>
               </ul>
            </div>
            
         </nav>
         <table class="table">
            <thead>
               <tr>
                  <th>
                     #
                  </th>
                  <th>
                     Product
                  </th>
                  <th>
                     Payment Taken
                  </th>
                  <th>
                     Status
                  </th>
               </tr>
            </thead>
            <tbody>
               <tr>
                  <td>
                     1
                  </td>
                  <td>
                     TB - Monthly
                  </td>
                  <td>
                     01/04/2012
                  </td>
                  <td>
                     Default
                  </td>
               </tr>
               <tr class="active">
                  <td>
                     1
                  </td>
                  <td>
                     TB - Monthly
                  </td>
                  <td>
                     01/04/2012
                  </td>
                  <td>
                     Approved
                  </td>
               </tr>
               <tr class="success">
                  <td>
                     2
                  </td>
                  <td>
                     TB - Monthly
                  </td>
                  <td>
                     02/04/2012
                  </td>
                  <td>
                     Declined
                  </td>
               </tr>
               <tr class="warning">
                  <td>
                     3
                  </td>
                  <td>
                     TB - Monthly
                  </td>
                  <td>
                     03/04/2012
                  </td>
                  <td>
                     Pending
                  </td>
               </tr>
               <tr class="danger">
                  <td>
                     4
                  </td>
                  <td>
                     TB - Monthly
                  </td>
                  <td>
                     04/04/2012
                  </td>
                  <td>
                     Call in to confirm
                  </td>
               </tr>
            </tbody>
         </table>
         <div class="btn-group">
             
            <button class="btn btn-default" type="button">
               <em class="glyphicon glyphicon-align-left"></em> Left
            </button> 
            <button class="btn btn-default" type="button">
               <em class="glyphicon glyphicon-align-center"></em> Center
            </button> 
            <button class="btn btn-default" type="button">
               <em class="glyphicon glyphicon-align-right"></em> Right
            </button> 
            <button class="btn btn-default" type="button">
               <em class="glyphicon glyphicon-align-justify"></em> Justify
            </button>
         </div>
      </div>
      <div class="col-md-7">
         <div class="carousel slide" id="carousel-383787">
            <ol class="carousel-indicators">
               <li class="active" data-slide-to="0" data-target="#carousel-383787">
               </li>
               <li data-slide-to="1" data-target="#carousel-383787">
               </li>
               <li data-slide-to="2" data-target="#carousel-383787">
               </li>
            </ol>
            <div class="carousel-inner">
               <div class="item active">
                  <img alt="Carousel Bootstrap First" src="http://lorempixel.com/output/sports-q-c-1600-500-1.jpg" />
                  <div class="carousel-caption">
                     <h4>
                        First Thumbnail label
                     </h4>
                     <p>
                        Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                     </p>
                  </div>
               </div>
               <div class="item">
                  <img alt="Carousel Bootstrap Second" src="http://lorempixel.com/output/sports-q-c-1600-500-2.jpg" />
                  <div class="carousel-caption">
                     <h4>
                        Second Thumbnail label
                     </h4>
                     <p>
                        Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                     </p>
                  </div>
               </div>
               <div class="item">
                  <img alt="Carousel Bootstrap Third" src="http://lorempixel.com/output/sports-q-c-1600-500-3.jpg" />
                  <div class="carousel-caption">
                     <h4>
                        Third Thumbnail label
                     </h4>
                     <p>
                        Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                     </p>
                  </div>
               </div>
            </div> <a class="left carousel-control" href="#carousel-383787" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-383787" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
         </div>
         <p class="lead">
            Lorem ipsum dolor sit amet, <strong>consectetur adipiscing elit</strong>. Aliquam eget sapien sapien. Curabitur in metus urna. In hac habitasse platea dictumst. Phasellus eu sem sapien, sed vestibulum velit. Nam purus nibh, lacinia non faucibus et, pharetra in dolor. Sed iaculis posuere diam ut cursus. <em>Morbi commodo sodales nisi id sodales. Proin consectetur, nisi id commodo imperdiet, metus nunc consequat lectus, id bibendum diam velit et dui.</em> Proin massa magna, vulputate nec bibendum nec, posuere nec lacus. <small>Aliquam mi erat, aliquam vel luctus eu, pharetra quis elit. Nulla euismod ultrices massa, et feugiat ipsum consequat eu.</small>
         </p>
      </div>
   </div>
</div>
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