<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Your First WebSocket!</title>
</head>
<body>



	<!-- 	<form method="get" id="Node" action="http://192.168.0.28:8080/" > -->
	<form method="post" id="nodeWeb" action="nodeWeb"></form>

	<form method="post" id="Socket" action="sendSocket"></form>



	<h1 style="text-align: center;">Hello World WebSocket Client</h1>
	<br>
	<div style="text-align: center;">
		<form action="">
			<input onclick="send_message()" value="Send" type="button"> <input
				id="textID" name="message" value="Hello WebSocket!" type="text"><br>
		</form>
	</div>
	<div id="output"></div>


	<button id="sendSocket">sendSocket</button>
	<button id="node">node</button>


	<script src="https://code.jquery.com/jquery-2.2.4.js"></script>

	<script type="text/javascript">
		$(document).ready(
				function() {

					$("#sendSocket").on("click", function() {

						$("#Socket").submit();
					});

					$("#node").on("click", function() {

						$("#nodeWeb").submit();
					});

					/*Javascript WebSocket 이벤트 정리
					onopen
					=> WebSocket 연결
					onmessage
					=> 메시지 수신
					onerror
					=> 전송 에러 발생
					onclose
					=> WebSocket 연결 해제
					[출처] Spring 4 WebSocket 샘플 구현|작성자 완전컴맹
					 */

					var wsUri = "ws://localhost:8082/websocket/echo.do";

					function init() {
						output = document.getElementById("output");
					}
					function send_message() {
						/*websocket = new WebSocket(wsUri);  */
						websocket = new WebSocket(
								"ws://localhost:8081/WebSocketEx/broadsocket");
						/*      websocket = new WebSocket("232");  */
						websocket.onopen = function(evt) {
							onOpen(evt)

						};
						websocket.onmessage = function(evt) {
							onMessage(evt)
						};
						websocket.onerror = function(evt) {
							onError(evt)
						};
					}

					function onOpen(evt) {

						writeToScreen("Connected to Endpoint!");
						doSend(textID.value);
						/*  $('#Node').submit(); */

					}
					function onMessage(evt) {
						writeToScreen("Message Received: " + evt.data);
					}
					function onError(evt) {
						writeToScreen('ERROR: ' + evt.data);
					}
					function doSend(message) {
						writeToScreen("Message Sent: " + message);
						websocket.send(message);
						/* websocket.close(); */
					}
					function writeToScreen(message) {
						var pre = document.createElement("p");
						pre.style.wordWrap = "break-word";
						pre.innerHTML = message;

						output.appendChild(pre);
					}
					window.addEventListener("load", init, false);

				});
	</script>
</body>
</html>
