import { useHistory } from 'react-router-dom';

function Join() {
  const history = useHistory();

  return (
    <>
      <h1>Join Game</h1>
      <input type="text" />
      <button type="button" onClick={() => history.goBack()}>Back</button>
      <button type="button" onClick={() => history.push('/name')}>Continue</button>
    </>
  );
}

export default Join;
