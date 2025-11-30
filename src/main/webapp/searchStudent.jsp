<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Search Student</title>

<style>

    body {
        margin: 0;
        padding: 0;
        font-family: "Poppins", sans-serif;
        background: linear-gradient(135deg, #4E54C8, #8F94FB);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .container {
        width: 430px;
        background: rgba(255, 255, 255, 0.18);
        padding: 35px;
        border-radius: 18px;
        backdrop-filter: blur(12px);
        box-shadow: 0 10px 30px rgba(0,0,0,0.25);
        animation: fadeIn 0.8s ease-in-out;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to   { opacity: 1; transform: translateY(0); }
    }

    h2 {
        text-align: center;
        font-size: 28px;
        color: white;
        font-weight: 700;
        margin-bottom: 22px;
        letter-spacing: 1px;
    }

    input[type="number"] {
        width: 100%;
        padding: 13px;
        border-radius: 10px;
        border: none;
        outline: none;
        margin-bottom: 18px;
        font-size: 16px;
        background: #fff;
        color: #333;
    }

    input[type="number"]:focus {
        box-shadow: 0 0 10px rgba(255,255,255,0.6);
    }

    input[type="submit"] {
        width: 100%;
        padding: 13px;
        background: #4E54C8;
        border: none;
        border-radius: 10px;
        font-size: 17px;
        color: white;
        cursor: pointer;
        font-weight: 700;
        transition: 0.3s ease;
        margin-bottom: 15px;
        margin-left: 10px;
    }

    input[type="submit"]:hover {
        background: #3E44B5;
        transform: translateY(-3px);
        box-shadow: 0 6px 18px rgba(0,0,0,0.25);
    }

    .result-box {
        background: rgba(255,255,255,0.25);
        padding: 18px;
        border-radius: 14px;
        margin-top: 18px;
        color: white;
        animation: fadeIn 0.6s ease-in-out;
    }

    .result-box h3 {
        margin-top: 0;
        color: #fff;
        font-size: 20px;
        margin-bottom: 12px;
    }

    .label {
        font-weight: 600;
        color: #e7e7ff;
    }

    .message {
        margin-top: 18px;
        padding: 14px;
        border-radius: 10px;
        font-size: 17px;
        text-align: center;
        animation: fadeIn 0.6s ease-in-out;
        color: white;
    }

    .error {
        background: rgba(255, 77, 77, 0.35);
        border-left: 4px solid #ff4d4d;
    }

</style>

</head>
<body>

<div class="container">

    <h2>🔍 Search Student</h2>

    <!-- Search Form -->
    <form action="searchStudent" method="get">
        <input type="number" name="id" placeholder="Enter Student ID" required>
        <input type="submit" value="Search Student">
    </form>

    <%  
        String name = request.getParameter("name");
        String msg = request.getParameter("msg");
    %>

    <!-- Error Message -->
    <% if(msg != null) { %>
        <div class="message error"><%= msg %></div>
    <% } %>

    <!-- Search Result -->
    <% if(name != null && msg == null) { %>

        <div class="result-box">
            <h3>✨ Student Details</h3>

            <p><span class="label">ID:</span> <%= request.getParameter("idval") %></p>
            <p><span class="label">Name:</span> <%= request.getParameter("name") %></p>
            <p><span class="label">Email:</span> <%= request.getParameter("email") %></p>
            <p><span class="label">Course:</span> <%= request.getParameter("course") %></p>
        </div>

    <% } %>

</div>

</body>
</html>
