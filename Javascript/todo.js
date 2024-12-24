function addTodo(text) {
  // 문자열 보간법
  console.log(`addTodo: ${text}`);

}

document.getElementById('addTodo').addEventListener('click', () => {
  const input = document.getElementById('todoInput');
  addTodo(input.value);
});
