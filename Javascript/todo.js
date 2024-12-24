function addTodo(text) {
  // 문자열 보간법
  console.log(`addTodo: ${text}`);
  const todoList = document.getElementById('todoList');
  const li = document.createElement('li'); // <li></li> 생성
  li.textContent = text; // <li>text</li> 내용 추가
  todoList.appendChild(li); // <ul><li>text</li></ul> 추가
}

document.getElementById('addTodo').addEventListener('click', () => {
  const input = document.getElementById('todoInput');
  addTodo(input.value);
  input.value = '';
});
