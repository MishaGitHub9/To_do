<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Список справ</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f4f8;
            max-width: 600px;
            margin: auto;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        input[type="text"] {
            width: calc(100% - 100px);
            padding: 10px;
            border: 2px solid #007BFF;
            border-radius: 4px;
            margin-right: 10px;
            transition: border-color 0.3s;
        }
        input[type="text"]:focus {
            border-color: #0056b3;
            outline: none;
        }
        button {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #0056b3;
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        li {
            padding: 10px;
            margin: 8px 0;
            background: #fff;
            border-radius: 4px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            display: flex;
            justify-content: space-between;
            align-items: center;
            transition: transform 0.3s;
        }
        li:hover {
            transform: scale(1.02);
        }
        .delete-button {
            background-color: red;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .delete-button:hover {
            background-color: darkred;
        }
    </style>
</head>
<body>
    <h1>Список справ</h1>
    <input type="text" id="taskInput" placeholder="Введіть нову справу">
    <button onclick="addTask()">Додати справу</button>

    <h2>Ваші справи:</h2>
    <ul id="taskList"></ul>

    <script>
        function addTask() {
            const taskInput = document.getElementById('taskInput');
            const taskValue = taskInput.value.trim();

            if (taskValue) {
                const li = document.createElement('li');
                li.textContent = taskValue;

                const deleteButton = document.createElement('button');
                deleteButton.textContent = 'Видалити';
                deleteButton.className = 'delete-button';
                deleteButton.onclick = function() {
                    li.classList.add('fade-out');
                    setTimeout(() => li.remove(), 300); // Затримка перед видаленням
                };

                li.appendChild(deleteButton);
                document.getElementById('taskList').appendChild(li);
                taskInput.value = ''; // Очищаємо поле вводу
            } else {
                alert('Будь ласка, введіть справу!');
            }
        }
    </script>
</body>
</html>
