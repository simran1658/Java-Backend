<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Student Portal</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: "Segoe UI", Arial, sans-serif;
            background: linear-gradient(135deg, #4f46e5, #6d28d9);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            overflow: hidden;
        }

        .container {
            text-align: center;
            animation: fadeIn 1s ease-in-out;
        }

        h1 {
            font-size: 45px;
            font-weight: 700;
            margin-bottom: 10px;
        }

        p {
            font-size: 20px;
            opacity: 0.9;
            margin-bottom: 25px;
        }

        a {
            display: inline-block;
            padding: 12px 28px;
            background: white;
            color: #4f46e5;
            font-size: 18px;
            font-weight: 600;
            text-decoration: none;
            border-radius: 8px;
            transition: 0.3s ease-in-out;
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }

        a:hover {
            background: #ecebff;
            transform: translateY(-3px);
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .bubble {
            position: absolute;
            bottom: -80px;
            background: rgba(255,255,255,0.15);
            border-radius: 50%;
            animation: rise 10s infinite ease-in;
        }

        @keyframes rise {
            0% { transform: translateY(0); opacity: 0.6; }
            100% { transform: translateY(-1200px); opacity: 0; }
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Welcome to Student Portal </h1>
        <p>Your gateway to student management & academic workflows</p>
        <a href="login.jsp">Go to Login Page</a>
    </div>

    <%-- Floating animation bubbles for aesthetic look --%>
    <div class="bubble" style="left: 10%; width: 80px; height: 80px;"></div>
    <div class="bubble" style="left: 50%; width: 100px; height: 100px; animation-duration: 12s;"></div>
    <div class="bubble" style="left: 80%; width: 60px; height: 60px; animation-duration: 9s;"></div>
    <div class="bubble" style="left: 30%; width: 70px; height: 70px; animation-duration: 13s;"></div>

</body>
</html>
