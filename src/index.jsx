import { useEffect } from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom';
import io from 'socket.io-client';

import { server } from './utils';
import Home from './pages/Home';

function App() {
  useEffect(() => {
    io(server);
  }, []);

  return (
    <Router>
      <Switch>
        <Route path="/">
          <Home />
        </Route>
      </Switch>
    </Router>
  );
}

ReactDOM.render(<App />, document.getElementById('root'));
