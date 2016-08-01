<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script type="text/javascript" src="http://cdn.bootcss.com/sockjs-client/1.1.1/sockjs.min.js"></script>
<script type="text/javascript">

	var echo_websocket;
	
	function init(){
		output  = document.getElementById("output");
	}
	
	function send_echo(){
		var wsUri = "http://localhost:8082/dom-chat/sockjs/webSocketServer";
		writeToscreen("Connecting to "+wsUri);
		echo_websocket = new SockJS(wsUri);
		echo_websocket.onopen = function(evt){
			writeToscreen("Connected! ");
			doSend(document.getElementById("textID").value());
			echo_websocket.close();
		}
		echo_websocket.onmessage = function(evt){
			writeToscreen("Received message: "+evt.data);
			echo_websocket.close();
		}
		echo_websocket.onerror = function(evt){
		}
	}
	
	function doSend(message){
		echo_websocket.send(message);
		writeToscreen("Sent message: "+evt.data);
	}
	
	function writeToscreen(message){
		var p = document.createElement("p");
		p.style.wordWrap = "break-word";
		p.innerHTML = message;
		output.appendChild(p);
	}
	
	window.addEventListener("load",init,false);
	
</script>
</head>

<body>
	<h1>Echo Server</h1>
	
	<div style="text-align:left;">
	<form>
		<input onclick="send_echo()" value="Press to send" type="button">
		<input id="textID" name="message" value="Hello Web Socket" type="text">
	</form>
	</div>
	<div id="output"></div>
</body>
</html>