from flask import Flask, jsonify, request

app = Flask(__name__)

# In-memory storage for simplicity
todos = []

@app.route('/todos', methods=['GET'])
def get_todos():
    return jsonify(todos)

@app.route('/todos', methods=['POST'])
def add_todo():
    todo = request.json.get('task')
    todos.append(todo)
    return jsonify({'message': 'Todo added!'}), 201

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
