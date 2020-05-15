const http = require('http');
const fs = require('fs')

//create a server object:
http.createServer(function (req, res) {
  const data = fs.readFileSync('/var/www/datafile.txt', 'utf8')
  res.write('File last updated at ' + data); //write a response to the client
  res.end(); //end the response
}).listen(80); //the server object listens on port 8080
