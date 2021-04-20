import { useHistory } from 'react-router-dom';

function Home() {
  const history = useHistory();

  return (
    <>
      <h1>Fake It Till You Make It</h1>
      <button type="button" onClick={() => history.push('/create')}>Create Room</button>
      <button type="button" onClick={() => history.push('/join')}>Join Room</button>
    </>
  );
}

export default Home;
