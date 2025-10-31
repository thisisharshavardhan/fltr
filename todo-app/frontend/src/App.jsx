import { useState, useEffect } from 'react'
import axios from 'axios'

function App() {
  const [todos, setTodos] = useState([])
  const [input, setInput] = useState('')

  const API_URL = 'http://localhost:3000/todos'

  useEffect(() => {
    fetchTodos()
  }, [])

  const fetchTodos = async () => {
    const response = await axios.get(API_URL)
    setTodos(response.data)
  }

  const addTodo = async () => {
    if (!input.trim()) return
    
    await axios.post(API_URL, { text: input })
    
    setInput('')
    fetchTodos()
  }

  const deleteTodo = async (id) => {
    await axios.delete(`${API_URL}/${id}`)
    fetchTodos()
  }

  return (
    <div style={{ padding: '20px', maxWidth: '600px', margin: '0 auto' }}>
      <h1>To-Do List</h1>
      
      <div style={{ marginBottom: '20px' }}>
        <input 
          type="text" 
          value={input}
          onChange={(e) => setInput(e.target.value)}
          placeholder="Enter a to-do"
          style={{ padding: '8px', marginRight: '10px', width: '300px' }}
        />
        <button onClick={addTodo} style={{ padding: '8px 16px' }}>Add</button>
      </div>
      
      <ul style={{ listStyle: 'none', padding: 0 }}>
        {todos.map(todo => (
          <li key={todo._id} style={{ marginBottom: '10px', display: 'flex', justifyContent: 'space-between', alignItems: 'center', padding: '10px', border: '1px solid #ddd' }}>
            <span>{todo.text}</span>
            <button onClick={() => deleteTodo(todo._id)} style={{ padding: '4px 12px' }}>Delete</button>
          </li>
        ))}
      </ul>
    </div>
  )
}

export default App
