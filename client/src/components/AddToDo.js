import React from 'react';
import {createToDo} from '../api';

const AddToDo = ({addToDo})=> {
  let name;
  const submitForm = e => {
    e.preventDefault();
    createToDo(name.value).then(todo => addToDo(todo));
  }

  return (
    <form onSubmit={submitForm}>
      <input type="text" placeholder="name" required ref={input => name = input} />
      <button>Add ToDo</button>
    </form>
  );
};

export default AddToDo;