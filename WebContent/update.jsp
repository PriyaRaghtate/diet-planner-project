<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Diet Plan</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Update Diet Plan</h1>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
        %>
        
        <form method="post" action="updateaction.jsp">
            <div class="form-group">
                <label for="id">ID:</label>
                <input type="text" class="form-control" id="id" name="id">
            </div>
            <div class="form-group">
                <label for="planname">Plan Name:</label>
                <input type="text" class="form-control" id="planname" name="planname">
            </div>
            <div class="form-group">
                <label for="protein">Protein (g):</label>
                <input type="number" class="form-control" id="protein" name="protein">
            </div>
            <div class="form-group">
                <label for="carbs">Carbs (g):</label>
                <input type="number" class="form-control" id="carbs" name="carbs">
            </div>
            <div class="form-group">
                <label for="meal">Meals per Day:</label>
                <input type="number" class="form-control" id="meal" name="meal">
            </div>
            <div class="form-group">
                <label for="fats">Fats (g):</label>
                <input type="number" class="form-control" id="fats" name="fats">
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>
</body>
</html>
