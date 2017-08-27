import React from 'react';
import ReactDOM from 'react-dom';

function tick() {
  const element = (
    <div className="card-block">
      <h4>Hey yall</h4>
      <p className="lead">Its {new Date().toLocaleTimeString()}.</p>
    </div>
  );

  ReactDOM.render(
    element,
    document.getElementById('root')
  );
}

setInterval(tick, 1000);
