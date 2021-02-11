import React from 'react';
import ToDo from './ToDo';

const ToDoList = props => {
  const {todos} = props;
  return (
    <div>
      {todos.map(todo => <ToDo todo={todo} key={todo.id} {...props} />)}
    </div>
  );
};

export default ToDoList;