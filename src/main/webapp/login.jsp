<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: "Segoe UI", Arial, sans-serif;
            background: linear-gradient(to right, #4f46e5, #6d28d9);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-container {
            background: white;
            padding: 40px 30px;
            border-radius: 12px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
            width: 350px;
            text-align: center;
            animation: fadeIn 0.8s ease-in-out;
        }

        .login-container h1 {
            margin-bottom: 25px;
            color: #4f46e5;
            font-size: 28px;
            font-weight: bold;
        }

        label {
            display: block;
            text-align: left;
            font-weight: 600;
            color: #333;
            margin-bottom: 6px;
        }

        input {
            width: 330px;
            padding: 10px;
            border: 1.5px solid #ccc;
            border-radius: 8px;
            margin-bottom: 18px;
            font-size: 15px;
            outline: none;
            transition: 0.3s;
        }

        input:focus {
            border-color: #4f46e5;
            box-shadow: 0 0 5px rgba(79,70,229,0.4);
        }

        button {
            width: 100%;
            padding: 12px;
            background: #4f46e5;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-weight: 600;
            transition: 0.3s;
        }

        button:hover {
            background: #4338ca;
        }

        .error {
            color: red;
            margin-top: 10px;
            font-size: 14px;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>

<body>
    <div class="login-container">
        <form action="login" method="post">
            <h1>Login</h1>

            <label>Username</label>
            <input type="text" name="username" placeholder="Enter username" required>

            <label>Password</label>
            <input type="password" name="password" placeholder="Enter password" required>

            <button type="submit">Submit</button>

            <% if(request.getParameter("error") != null){ %>
                <p class="error">Invalid Credentials</p>
            <% } %>
        </form>
    </div>
</body>
</html>
