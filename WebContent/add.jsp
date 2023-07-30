<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Diet Plan</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
        }

        h1 {
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        button[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Add Diet Plan</h1>
        <form action="addserv" method="post">
            <div class="form-group">
                <label for="planName">Plan Name:</label>
                <input type="text" id="planname" name="planname" required>
            </div>
            <div class="form-group">
                <label for="protein">Protein (gm):</label>
                <input type="number" id="protein" name="protein" required>
            </div>
            <div class="form-group">
                <label for="carb">Carbs:</label>
                <input type="number" id="carbs" name="carbs" required>
            </div>
            <div class="form-group">
                <label for="mealsPerDay">Meals Per Day:</label>
                <input type="number" id="meal" name="meal" required>
            </div>
            <div class="form-group">
                <label for="fats">Fats:</label>
                <input type="number" id="fats" name="fats" required>
            </div>
            <button type="submit">Add Plan</button>
        </form>
    </div>
</body>
</html>
