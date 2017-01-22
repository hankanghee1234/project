<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<style id="mceDefaultStyles" type="text/css">
.mce-content-body div.mce-resizehandle {
	position: absolute;
	border: 1px solid black;
	background: #FFF;
	width: 5px;
	height: 5px;
	z-index: 10000
}

.mce-content-body .mce-resizehandle:hover {
	background: #000
}

.mce-content-body img[data-mce-selected], hr[data-mce-selected] {
	outline: 1px solid black;
	resize: none
}

.mce-content-body .mce-clonedresizable {
	position: absolute;
	outline: 1px dashed black;
	opacity: .5;
	filter: alpha(opacity = 50);
	z-index: 10000
}
</style>

<meta name="description"
	content="A framework for easily creating beautiful presentations using HTML">
<meta name="author" content="Hakim El Hattab">

<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style"
	content="black-translucent">

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<link rel="stylesheet"
	href="../resources/reveal-editor/static/css/reveal.min.css">
<link rel="stylesheet"
	href="../resources/reveal-editor/static/css/theme/default.css"
	id="theme">

<!-- For syntax highlighting -->
<link rel="stylesheet"
	href="../resources/reveal-editor/static/lib/css/zenburn.css">

<!-- If the query includes 'print-pdf', use the PDF print sheet -->
<script>
	document.write('<link rel="stylesheet" href="../resources/reveal-editor/static/css/print/'
			+ (window.location.search.match(/print-pdf/gi) ? 'pdf' : 'paper')
			+ '.css" type="text/css" media="print">');
</script>
<link rel="stylesheet"
	href="../resources/reveal-editor/static/css/print/paper.css"
	type="text/css" media="print">

<!--[if lt IE 9]>
		<script src="static/lib/js/html5shiv.js"></script>
		<![endif]-->

<link rel="stylesheet" href="../resources/reveal-editor/static/css/style.css">
<link rel="stylesheet" type="text/css" id="u0"
	href="http://tinymce.cachefly.net/4.0/skins/lightgray/skin.min.css">
<link rel="stylesheet"
	href="http://tinymce.cachefly.net/4.0/skins/lightgray/content.inline.min.css">
</head>

<body spellcheck="false"
	style="transition: -webkit-transform 0.8s ease;">

	<div class="reveal default center" data-transition-speed="default"
		data-background-transition="default">

		<!-- Any section element inside of this container is displayed as a slide -->
		<div class="slides"
			style="width: 960px; height: 700px; zoom: 0.975857;">
			<section class="present mce-content-body"
				style="top: -172px; display: block;" id="mce_0"
				contenteditable="true" spellcheck="false">
			<h1>Reveal.js</h1>
			<h3>HTML Presentations Made Easy</h3>
			<p>
				<small>Created by <a href="http://hakim.se"
					data-mce-href="http://hakim.se">Hakim El Hattab</a> / <a
					href="http://twitter.com/hakimel"
					data-mce-href="http://twitter.com/hakimel">@hakimel</a></small>
			</p>
			</section>
		</div>

		<div class="backgrounds">
			<div class="slide-background present"></div>
		</div>
		<div class="progress" style="display: block;">
			<span></span>
		</div>
		<aside class="controls" style="display: block;">
		<div class="navigate-left"></div>
		<div class="navigate-right"></div>
		<div class="navigate-up"></div>
		<div class="navigate-down"></div>
		</aside>
		<div class="slide-number"></div>
		<div class="state-background"></div>
		<div class="pause-overlay"></div>
	</div>

	<button id="add" title="Add new slide."></button>
	<form method="POST" action="/save">
		<input type="hidden" id="html" name="html"> <input
			type="submit" id="save" title="save">
	</form>
	<div id="toolbar"></div>

	<script src="../resources/reveal-editor/static/lib/js/head.min.js"></script>
	<script src="../resources/reveal-editor/static/js/reveal.min.js"></script>

	<script>
		// Full list of configuration options available here:
		// https://github.com/hakimel/reveal.js#configuration
		Reveal.initialize({
			controls : true,
			progress : true,
			history : true,
			center : true,

			theme : Reveal.getQueryHash().theme, // available themes are in /css/theme
			transition : Reveal.getQueryHash().transition || 'default', // default/cube/page/concave/zoom/linear/fade/none

			// Parallax scrolling
			// parallaxBackgroundImage: 'https://s3.amazonaws.com/hakim-static/reveal-js/reveal-parallax-1.jpg',
			// parallaxBackgroundSize: '2100px 900px',

			// Optional libraries used to extend on reveal.js
			dependencies : [ {
				src : '../resources/reveal-editor/static/lib/js/classList.js',
				condition : function() {
					return !document.body.classList;
				}
			}, {
				src : '../resources/reveal-editor/static/plugin/markdown/marked.js',
				condition : function() {
					return !!document.querySelector('[data-markdown]');
				}
			}, {
				src : '../resources/reveal-editor/static/plugin/markdown/markdown.js',
				condition : function() {
					return !!document.querySelector('[data-markdown]');
				}
			}, {
				src : '../resources/reveal-editor/static/plugin/highlight/highlight.js',
				async : true,
				callback : function() {
					hljs.initHighlightingOnLoad();
				}
			}, {
				src : '../resources/reveal-editor/static/plugin/zoom-js/zoom.js',
				async : true,
				condition : function() {
					return !!document.body.classList;
				}
			}, {
				src : '../resources/reveal-editor/static/plugin/notes/notes.js',
				async : true,
				condition : function() {
					return !!document.body.classList;
				}
			} ]
		});
	</script>
	<script type="text/javascript"
		src="../resources/reveal-editor/static/plugin/highlight/highlight.js"></script>
	<script type="text/javascript"
		src="../resources/reveal-editor/static/plugin/zoom-js/zoom.js"></script>
	<script type="text/javascript"
		src="../resources/reveal-editor/static/plugin/notes/notes.js"></script>
	<script src="http://tinymce.cachefly.net/4.0/tinymce.min.js"></script>
	<script>
		
	</script>
	<script src="../resources/reveal-editor/static/js/editor.js"></script>

</body>

</html>