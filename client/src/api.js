export const getToDos = () => 
  fetch('/todoitems')
    .then(res => res.json());

export const createToDo = name =>
  fetch('/todoitems', {
    body: JSON.stringify({name: name }),
    headers: {
      'Content-Type': 'application/json'
    },
    method: 'POST'
  })
    .then(res => res.json())

export const checkOff = (id, active) =>
  fetch(`/todoitems/${id}`, {
    body: JSON.stringify({active: active}),
    headers: {
      'Content-Type': 'application/json'
    },
    method: 'PUT'
  })
    .then(res => res.json())