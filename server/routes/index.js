var express = require('express');
var router = express.Router();
var exec = require('child_process').exec;

/* GET home page. */
router.get('/', function(req, res, next) {
  //res.render('index', { title: 'Remote_Forth' });
});

router.post('/', function (req, res) {
  /*var the_code = req.body.code;

  for(let i = 0; i < the_code.length; i++){
    if (the_code[i] == '\n'){
      the_code[i] = ' ';
    }
  }
  exec("printf " + '"' + the_code + '"' + " | ./forthinterpreter", function(error, stdout, stderr){
    //dir = stdout;
    var to_show = stdout + " and the code was\n" + the_code;
    res.render('show', {code: to_show});
  });
  //var to_show = the_code + " and dir is " + dir;
  //res.render('show', {title: to_show});*/

});

router.get('/testpath', function (req, res){
  //res.render('test')
});

router.post("/api", (req, res) => {
  var msg = "Hello! I received your: " + JSON.stringify(req.body);
  console.log(msg);
  var the_code = req.body.code;
  for(let i = 0; i < the_code.length; i++){
    if (the_code[i] == '\n'){
      the_code[i] = ' ';
    }
  }
  exec("printf " + '"' + the_code + '"' + " | ./forthinterpreter", function(error, stdout, stderr){

    for(let i = 0; i < stdout.length; i++){

    }
    res.send({"output": stdout}) ;
  });
  //res.json({ message: JSON.stringify((req.body))});
});

router.get("/run-code", (req, res) => {
  console.log(JSON.stringify(req.json()));
  //res.json({message: "Hello from server!"});
});

module.exports = router;
