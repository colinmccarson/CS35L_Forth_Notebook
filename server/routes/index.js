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
  let msg = "Hello! I received your: " + JSON.stringify(req.body);
  console.log(msg);
  let the_code = req.body.code;
  for(let i = 0; i < the_code.length; i++){
    if (the_code[i] === '\n'){
      the_code[i] = ' ';
    }
  }
  //console.log("here");
  //console.log(the_code);
  //console.log("Stack is " + req.body.stack);
  let getMarshalled = "__PROGRAM__\n" + the_code;
  getMarshalled += "\n__DATA__\n";
  //Reverse Stack
  let tmp = "";
  for(let x = req.body.stack.length-1; x >= 0; x--){
    if(req.body.stack[x] !== " ") {
      tmp += req.body.stack[x] + "\n";
    }
  }
  tmp = tmp.slice(0, tmp.length-1); //elim trail
  getMarshalled += tmp + "\n__VARS__\n";
  //console.log("here3");
  let vars = "\n";
  if (req.body.vars !== undefined){
    vars = req.body.vars;
  }
  let und = "";
  if (req.body.userdef !== undefined){
    console.log("not undef");
    und = req.body.userdef;
  }
  getMarshalled += vars + "\n__USERDEFINED__\n" + und;
  console.log(getMarshalled);
  console.log("END MARSHAL");
  //console.log("here4");
  exec("printf " + '"' + getMarshalled + '"' + " | ./forthinterpreter", function(error, stdout, stderr){
    //console.log("userdef after exec is");
    //console.log(getMarshalled.split("__USERDEFINED__")[0]);
    let divorce = stdout.split("__CONTEXT__");
    let top = "";
    let bot = "";
    if(divorce.length === 2){
      top = divorce[0];
      bot = divorce[1];
    } //SANITIZE
    top.replace("\n", "");
    console.log("START TOP");
    console.log(top);
    console.log(bot);
    console.log("ENDBOT");
    let lines = stdout.split("\n");
    let stack = "";
    let mode = -1;
    let vars = "";
    let userdefined = "";
    for(let i = 0; i < lines.length; i++){
      if(lines[i] !== ""){
        if(lines[i] === "__DATA__"){
          mode = 0;
        }
        else if (lines[i] === "__VARS__"){
          mode = 1;
        }
        else if (lines[i] === "__USERDEFINED__"){
          console.log("Now collecting userdef");
          mode = 2;
        }
        else {
          if (mode === 0){ //DATA
            stack += lines[i] + " ";
          }
          else if (mode === 1){ //VARS
            vars += lines[i] + " ";
          }
          else if (mode === 2){ //USERDEFINED
            console.log(lines[i]);
            userdefined += lines[i] + " ";
          }
        }
      }
    }
    stack = stack.slice(0, stack.length-1); //elim trailing whitespace
    console.log(stack);
    vars = vars.slice(0, vars.length-1); //elim trailing ws
    console.log(vars);
    userdefined = userdefined.slice(0,userdefined.length-2); //elim trail ws
    console.log(userdefined);
    //console.log("here6");
    res.send({"output": top, "stack": stack, "vars": vars, "userdef": userdefined});
  });
  //res.json({ message: JSON.stringify((req.body))});
});

router.get("/run-code", (req, res) => {
  console.log(JSON.stringify(req.json()));
  //res.json({message: "Hello from server!"});
});

module.exports = router;
