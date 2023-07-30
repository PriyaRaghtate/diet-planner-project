<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add User Information</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Add User Information</h1>
        <form method="post" action="addaction.jsp">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="weight">Weight (kg):</label>
                <input type="number" class="form-control" id="weight" name="weight" required>
            </div>
            <div class="form-group">
                <label for="height">Height (cm):</label>
                <input type="number" class="form-control" id="height" name="height" required>
            </div>
            <div class="form-group">
                <label for="mealsPerDay">Meals per Day:</label>
                <input type="number" class="form-control" id="mealsPerDay" name="mealsPerDay" required>
            </div>
            <div class="form-group">
                <label for="goal">Goal:</label>
               <select class="form-control" id="goal" name="goal" required>
    			<option value="weight_loss">Weight Loss</option>
    			<option value="muscle_gain">Muscle Gain</option>
    			<option value="maintain_weight">Maintain Weight</option>
			  </select>

            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <textarea class="form-control" id="description" name="description" rows="3" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</body>
</html>
