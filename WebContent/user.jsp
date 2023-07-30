<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>
    <style>
        /* CSS Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('your-background-image.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        .navbar {
            background-color: #333;
            color: #fff;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px;
        }

        .navbar-left {
            display: flex;
        }

        .navbar a {
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
            margin-right: 10px;
        }

        .navbar a:hover {
            background-color: #555;
        }

        .navbar .logout {
            margin-left: auto;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            text-align: center;
            margin-top: 30px;
        }

        h1 {
            margin-bottom: 20px;
        }

        p {
            margin-bottom: 10px;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s ease;
            margin-right: 10px;
        }

        .button:hover {
            background-color: #45a049;
        }

        .logout-button {
            margin-top: 20px;
        }

        .footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 15px;
            position: absolute;
            bottom: 0;
            width: 100%;
        }

        p {
            font-size: 18px;
        }

        .offers {
            margin-top: 30px;
            text-align: left;
        }

        .offers h2 {
            margin-bottom: 10px;
        }

        .offers ul {
            list-style: disc;
            margin-left: 20px;
        }

        .customization {
            margin-top: 30px;
            text-align: left;
        }

        .customization h2 {
            margin-bottom: 10px;
        }

        .customization p {
            font-size: 16px;
        }

        .customization .button {
            margin-top: 10px;
        }

        .blogs {
            margin-top: 30px;
            text-align: left;
        }

        .blogs h2 {
            margin-bottom: 10px;
        }

        .blogs .blog {
            border: 1px solid #ccc;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 20px;
        }

        .blogs .blog h3 {
            margin-bottom: 5px;
        }

        .blogs .blog p {
            font-size: 16px;
            margin-bottom: 10px;
        }

        .diet-plans {
            margin-top: 30px;
            text-align: left;
        }

        .diet-plans h2 {
            margin-bottom: 10px;
        }

        .diet-plans .plan {
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
            margin-bottom: 20px;
        }

        .diet-plans .plan h3 {
            margin-bottom: 10px;
        }

        .diet-plans .plan p {
            font-size: 16px;
            margin-bottom: 10px;
        }
       .footer {
    background-color: #333;
    color: #fff;
    text-align: center;
    padding: 20px 16px;
    font-size: 18px;
    width: 100%;
}

/* Add a wrapper div to contain both the main content and the footer */
.wrapper {
    min-height: 10vh;
    position: relative;
}

/* Apply a padding-bottom to the wrapper to accommodate the footer */
.wrapper {
    padding-bottom: 60px; /* Adjust this value based on your footer's height */
}
    </style>
</head>
<body>
    <div class="navbar">
        <div class="navbar-left">
            <a href="user.jsp">Home</a>
            <a href="addinfo.jsp">Get a Diet plan</a>
            <a href="viewplan.jsp">View Diet Plan</a>
            <a href="userpro.jsp">Your plan</a>
        </div>
        <a href="logout.jsp" class="logout">Logout</a>
    </div>
    
    <div class="container">
        <h1>Welcome, User!</h1>
        <p>Get a good diet plan with awesome offers and customize it according to your taste.</p>

        <div class="customization">
            <h2>Customization Options</h2>
            <p>We understand that every individual is unique. Customize your diet plan with:</p>
            <ul>
                <li>Vegetarian or non-vegetarian options.</li>
                <li>Gluten-free or lactose-free diet plans.</li>
                <li>Allergies and intolerances.</li>
                <li>Meal timings and frequency.</li>
            </ul>
            <a href="addinfo.jsp" class="button">Customize Plan</a>
        </div>

        <div class="blogs">
            <h2>Latest Blogs</h2>
            <div class="blog">
                <h3>10 Delicious and Nutritious Breakfast Ideas</h3>
                <p>Start your day right with these tasty and healthy breakfast options.</p>
                <a href="#" class="button">Read More</a>
            </div>
            <div class="blog">
                <h3>5 Easy Snacks for Weight Loss</h3>
                <p>Stay on track with your weight loss goals by trying these simple and satisfying snacks.</p>
                <a href="#" class="button">Read More</a>
            </div>
        </div>

        <div class="diet-plans">
            <h2>Suggested Diet Plans</h2>
            <div class="plan">
                <h3>Weight Loss Plan</h3>
                <p>Designed for those looking to shed extra pounds and achieve a healthy weight.</p>
                <a href="viewplan.jsp" class="button">View Plan</a>
            </div>
            <div class="plan">
                <h3>Muscle Gain Plan</h3>
                <p>Ideal for individuals aiming to build muscle mass and increase strength.</p>
                <a href="viewplan.jsp" class="button">View Plan</a>
            </div>
            <div class="plan">
                <h3>Heart-Healthy Plan</h3>
                <p>A balanced diet plan to promote heart health and lower cholesterol levels.</p>
                <a href="viewplan.jsp" class="button">View Plan</a>
            </div>
        </div>
    </div>

   <div class="wrapper">
   
    <div class="footer">
        &copy; 2023 Your Company. All rights reserved.
    </div>
</div>
</body>
</html>