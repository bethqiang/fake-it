import { useHistory } from 'react-router-dom';

import { generateString } from '../utils';

function Create() {
  const history = useHistory();

  return (
    <>
      <h1>Create Game</h1>
      <p>Your game code is</p>
      <p>{generateString()}</p>
      <p>Share this code with the other players!</p>
      <button type="button" onClick={() => history.goBack()}>Back</button>
      <button type="button" onClick={() => history.push('/name')}>Continue</button>
    </>
  );
}

export default Create;
