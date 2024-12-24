function addTodo(text) {
  // 문자열 보간법
  console.log(`addTodo: ${text}`);
  const todoList = document.getElementById('todoList');
  const li = document.createElement('li');
  li.textContent = text;
  todoList.appendChild(li);
}

document.getElementById('addTodo').addEventListener('click', () => {
  const input = document.getElementById('todoInput');
  addTodo(input.value);
  input.value = '';
});
