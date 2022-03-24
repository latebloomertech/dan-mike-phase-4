import logo from './logo.svg';
import './App.css';
import { useState, useEffect } from "react";


function App() {
  const [count, setCount] = useState(0);

useEffect(() => {
  fetch("/hello")
    .then((r) => r.json())
    .then((data) => setCount(data.count));
}, []);


  return (
    <div className="App">
      <h1>Page Count: {count}</h1>
      <h2>Adding Test</h2>
    </div>
  );
}

export default App;
