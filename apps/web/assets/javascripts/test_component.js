import React from 'react';
import ReactDOM from 'react-dom';

class Test extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      date: new Date(),
      book: props.book
    };
  }

  render() {
    const time = this.state.date.toLocaleTimeString();
    return (
      <div className="card">
        <div className="card-header">
          <h4>Hey everyone</h4>
        </div>
        <div className="card-block">
          <p className="lead">
            Reading { this.state.book.title } at {time}
          </p>
        </div>
      </div>
    );
  }

  tick() {
    this.setState({ date: new Date() });
  }

  componentDidMount() {
    this.timerID = setInterval(
      () => this.tick(),
      1000
    );
  }

  componentWillUnmount() {
    clearInterval(this.timerID);
  }
}

const book = JSON.parse(document.getElementById('book-obj').dataset.obj);

ReactDOM.render(
  <Test book={ book } />,
  document.getElementById('root')
);
