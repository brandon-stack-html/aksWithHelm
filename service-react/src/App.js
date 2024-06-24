import React, { useState, useEffect } from 'react';

function App() {
  const [messageA, setMessageA] = useState('');
  const [messageB, setMessageB] = useState('');

  useEffect(() => {
    fetch(process.env.REACT_APP_SERVICE_A_URL)
      .then(response => response.text())
      .then(data => setMessageA(data));
    
    fetch(process.env.REACT_APP_SERVICE_B_URL)
      .then(response => response.text())
      .then(data => setMessageB(data));
  }, []);

  return (
    <div>
      <h1>Messages from Services</h1>
      <p>Service A: {messageA}</p>
      <p>Service B: {messageB}</p>
    </div>
  );
}

export default App;
