import { useHistory } from 'react-router-dom';

function Name() {
  const history = useHistory();

  return (
    <>
      <h1>Enter your name</h1>
      <input type="text" />
      <button type="button" onClick={() => history.goBack()}>Back</button>
      <button type="button">Join Room</button>
    </>
  );
}

export default Name;
