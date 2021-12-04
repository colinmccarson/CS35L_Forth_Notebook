import './App.css';
import React from 'react';

function OutputSection(props){
  return (
      <h2> Output Section
        <p>
          {props.value}
        </p>
      </h2>
  );
}

class Page extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      comp: Array([{code: "", output: ""}]),
      stack: "",
      vars: "",
      userdef: ""
    }
    //console.log(this.state.comp.type);
  }

  submitAll() {
    //TODO
  }

  addFormFields() {
    this.setState({
      comp: this.state.comp.concat([{code:"", output:""}])
    });
    //console.log(this.state.comp.length);
  }

  removeFormFields(i) {
    //console.log("Deleting code block " + i);
    //let newArr = [...this.state.comp]
    //newArr.splice(i,1);
    //this.setState({comp: newArr});
    //console.log(JSON.stringify(this.state.comp[i]))
    let c = this.state.comp[i].code;
    //let o = this.state.comp[i].output;
    this.setState({comp: this.state.comp.filter(function(x) {
        //console.log("Trying " + c);
        return ((x.code !== c));
      })});
    //console.log("The size is " + this.state.comp.length);
  }

  handleSubmit(event, i) {
    event.preventDefault();
    alert(JSON.stringify({code: this.state.comp[i].code, output: this.state.comp[i].output}));
  }

  handleChange(event, index) {
    let newArr = [...this.state.comp];
    newArr[index].code = event.target.value;
    this.setState({comp: newArr});
  }

  async getResult(index) {
    fetch('/api',{
      method: 'POST',
      headers: { 'Content-Type': 'application/json'
      },
      body: JSON.stringify({"code": this.state.comp[index].code, "stack": this.state.stack,
      "vars": this.state.vars, "userdef": this.state.userdef})
    })
        .then(response => response.json())
        .then(data => {
          let dstack = data.stack === undefined ? "" : data.stack;
          let dvars = data.vars === undefined ? "" : data.vars;
          let duserdef = data.userdef === undefined ? "" : data.userdef;
          let newArr = [...this.state.comp];
          newArr[index].output = data.output;
          this.setState({comp: newArr, stack: dstack, vars: dvars, userdef: duserdef });
          console.log(JSON.stringify(this.state));
        })
        .catch(error => console.log(error));
  }

  async handleIndividualSubmit(index) {
    await this.getResult(index);
    //alert(JSON.stringify(data));
  }

  render(){
    //console.log("I will show " + this.state.comp.length + " components");
    return (
        <html>
        <body>
        <h1>Sixteenth - A lightweight Forth implementation</h1>
        <div className="button-section">
          <button className="button add" type="button" onClick={() => this.addFormFields()}>Add Code Block</button>
          <button className="button submit" type="submit" onClick={() => this.submitAll()}>Run All</button>
        </div>
        {this.state.comp.map((element, index) => (
            <div>
              <form onSubmit={this.handleSubmit}>
                <div className="form-inline" key={index}>
                  <label>Code Block {index + 1}</label>
                  <div className="the_run_button">
                    <button type="button" name="name" onClick={() => this.handleIndividualSubmit(index)}>Run</button>
                    <textarea name="code" cols="80" rows="10" value={element.code || ""}
                              onChange={e => this.handleChange(e, index)}>
                                        </textarea>
                  </div>
                  <OutputSection value={element.output}/>
                </div>
              </form>
              <button type="button" className="button remove" onClick={() => this.removeFormFields(index)}>Remove
              </button>
            </div>
        ))}
        </body>
        </html>
    );
  }
}

function App() {
  return (
      <Page/>
  );
}

export default App;
