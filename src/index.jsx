// import { useEffect } from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom';
// import io from 'socket.io-client';

// import { getServer } from './utils';
import Home from './pages/Home';
import Create from './pages/Create';
import Join from './pages/Join';
import Name from './pages/Name';

function App() {
  // useEffect(() => {
  //   io(server);
  // }, []);

  return (
    <Router>
      <Switch>
        <Route exact path="/">
          <Home />
        </Route>
        <Route path="/create">
          <Create />
        </Route>
        <Route path="/join">
          <Join />
        </Route>
        <Route path="/name">
          <Name />
        </Route>
      </Switch>
    </Router>
  );
}

ReactDOM.render(<App />, document.getElementById('root'));
