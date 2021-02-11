import React from 'react';
import {checkOff} from '../api';

const ToDo = ({todo, updateToDo}) => {
  let checkbox;
  const onChange = () => {
    checkOff(todo.id, !todo.active).then(todo => updateToDo(todo));
  };

  return (
    <div>
      <input type="checkbox" checked={!todo.active} onChange={onChange} ref={input => checkbox = input} /> 
      {todo.name}
    </div>
  );
};

export default ToDo;