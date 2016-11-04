var express = require('express');
var app = express();

app.get('/', function(req, res) {
    res.send('Hello peeps');
});

app.listen(3030, function() {
   console.log('App listening on port 3030!')
});

