import React, {useEffect, useState} from 'react';
import './App.css';
import AddToDo from './components/AddToDo';
import ToDoList from './components/ToDoList';
import {getToDos} from './api';

function App() {
  const [toDos, setToDos]  = useState([]);
  const addToDo = todo => {setToDos([...toDos, todo])};
  useEffect(() => {
    getToDos().then(todos => setToDos(todos));
  }, []);
  const updateToDo = todo => {setToDos(toDos.map(t => (t.id === todo.id) ? todo : t))};

  return (
    <div className="App">
      <AddToDo addToDo={addToDo} />
      <ToDoList todos={toDos} updateToDo={updateToDo} />
    </div>
  );
}

export default App;
