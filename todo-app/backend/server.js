const express = require('express');
const mongoose = require('mongoose');
const cors = require('cors');

const app = express();
const port = 3000;

app.use(express.json());
app.use(cors({
    origin: '*',
    methods: ['GET', 'POST', 'PUT', 'DELETE'],
    allowedHeaders: ['Content-Type']
}));


mongoose.connect('mongodb://localhost:27017/todoapp', {
    useNewUrlParser: true,
    useUnifiedTopology: true
});


const todoSchema = new mongoose.Schema({
    text: { type: String, required: true }
});

const Todo = mongoose.model('Todo', todoSchema);


app.post('/todos', async (req, res) => {
    console.log("post request received");
    const todo = new Todo({ text: req.body.text });
    await todo.save();
    res.status(201).json(todo);
});


app.get('/todos', async (req, res) => {
    console.log("get request received");
    const todos = await Todo.find();
    res.json(todos);
});


app.put('/todos/:id', async (req, res) => {
    console.log("put request received");
    const todo = await Todo.findByIdAndUpdate(
        req.params.id,
        { text: req.body.text },
        { new: true }
    );
    if (!todo) return res.status(404).send('To-do item not found.');
    res.json(todo);
});


app.delete('/todos/:id', async (req, res) => {
    console.log("delete request received");
    const todo = await Todo.findByIdAndDelete(req.params.id);
    if (!todo) return res.status(404).send('To-do item not found.');
    res.status(204).send();
});

app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});