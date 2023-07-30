<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #333;
            overflow: hidden;
        }

        .navbar a {
            float: left;
            color: #fff;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: #333;
        }
         .navbar .logout{
        float:right;
        }

        .content {
            padding: 20px;
        }
        .content {
            text-align: center;
        }
        
        /* Additional styles for diet information */
        .diet-info {
            background-color: #f7f7f7;
            border: 1px solid #ccc;
            padding: 20px;
            margin-top: 20px;
        }
        
        .diet-info h2 {
            color: #333;
        }
        
        .diet-info p {
            font-size: 18px;
            line-height: 1.6;
            margin-bottom: 10px;
        }
        .footer {
      background-color: #333;
      color: #fff;
       padding: 14px 16px;
      text-align: center;
      font-size: 18px;
    }
        
    </style>
</head>
<body>
    <div class="navbar">
        <a href="admin.jsp">Home</a>
        <a href="info.jsp">User List</a>
        <a href="add.jsp">Add Plans</a>
        <a href="view.jsp">Diet Plans</a>
        <a href="memb.jsp">Our Members</a>
        <a href="getplan.jsp">View get plan list</a>
        <a href="logout.jsp" class="logout">Logout</a>
    </div>
    <div class="content">
        <h1>Welcome to Admin Dashboard!</h1>
        <p>Make your plans for the users and help them stay healthy.</p>
        
        <div class="diet-info">
            <h2>Diet Information</h2>
            <p>As an admin, you play a crucial role in guiding users towards healthier choices and lifestyle habits. Here are some essential tips and diet information you can share with your users:</p>
            <p>1. Encourage a Balanced Diet: Emphasize the importance of a balanced diet that includes a variety of fruits, vegetables, whole grains, lean proteins, and healthy fats.</p>
            <p>2. Portion Control: Educate users about the significance of portion control to avoid overeating and maintain a healthy weight.</p>
            <p>3. Stay Hydrated: Remind users to drink an adequate amount of water throughout the day to stay hydrated and support overall well-being.</p>
            <p>4. Limit Sugary and Processed Foods: Advise users to limit the consumption of sugary and processed foods, as they can contribute to health issues.</p>
            <p>5. Promote Regular Exercise: Encourage users to engage in regular physical activity to improve cardiovascular health and enhance mood.</p>
            <p>6. Provide Personalized Plans: Tailor diet plans according to individual needs, preferences, and health goals to ensure maximum effectiveness.</p>
            <p>7. Monitor Progress: Regularly track users' progress and offer guidance to keep them motivated on their health journey.</p>
        </div>
        
    </div>
     <div class="footer">
    <p>&copy; 2023 Diet Planner. All rights reserved.</p>
  </div>
</body>
</html>
