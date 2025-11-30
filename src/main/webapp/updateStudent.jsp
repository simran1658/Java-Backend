<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Update Student</title>

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

    input[type="number"],
    input[type="text"],
    input[type="email"] {
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

    input[type="number"]:focus,
    input[type="text"]:focus,
    input[type="email"]:focus {
        box-shadow: 0 0 10px rgba(255,255,255,0.6);
    }

    input[type="submit"] {
        width: 100%;
        padding: 13px;
        background: #EC4899;
        border: none;
        border-radius: 10px;
        font-size: 17px;
        color: white;
        cursor: pointer;
        font-weight: 700;
        transition: 0.3s ease;
        margin-left: 10px;
    }

    input[type="submit"]:hover {
        background: #DB2777;
        transform: translateY(-3px);
        box-shadow: 0 6px 18px rgba(0,0,0,0.25);
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

    .success {
        background: rgba(46, 204, 113, 0.35);
        border-left: 4px solid #2ecc71;
    }

    .error {
        background: rgba(255, 77, 77, 0.35);
        border-left: 4px solid #ff4d4d;
    }

</style>

</head>
<body>

<div class="container">

    <h2>✏️ Update Student</h2>

    <form action="updateStudent" method="post">
        <input type="number" name="id" placeholder="Enter Student ID" required>
        <input type="text" name="name" placeholder="Enter New Name" required>
        <input type="email" name="email" placeholder="Enter New Email" required>
        <input type="text" name="course" placeholder="Enter New Course" required>

        <input type="submit" value="Update Student">
    </form>

    <% 
        String msg = request.getParameter("msg");

        if(msg != null){
            if(msg.contains("Successfully")) {
    %>

        <div class="message success"><%= msg %></div>

    <%      } else { %>

        <div class="message error"><%= msg %></div>

    <%      } 
        } 
    %>

</div>

</body>
</html>
