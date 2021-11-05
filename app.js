
var io = require('socket.io-client');
var socket = io.connect('http://192.168.15.245:3000', { reconnect: true });

// Add a connect listener
socket.on('connect', function (socket) {
	console.log('Connected!');
});

socket.on('connect_failed', function () {
	console.log("Sorry, there seems to be an issue with the connection!");
});


