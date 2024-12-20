async function fetchTodos() {
    const response = await fetch('/todos');
    const todos = await response.json();
    const list = document.getElementById('todo-list');
    list.innerHTML = '';
    todos.forEach(todo => {
        const li = document.createElement('li');
        li.textContent = todo;
        list.appendChild(li);
    });
}

async function addTodo() {
    const newTodo = document.getElementById('new-todo').value;
    await fetch('/todos', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({ task: newTodo }),
    });
    fetchTodos();
}

fetchTodos();
