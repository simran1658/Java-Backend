<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Student</title>

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
            backdrop-filter: blur(12px);
            border-radius: 18px;
            padding: 35px 40px;
            box-shadow: 0 10px 35px rgba(0,0,0,0.25);
            animation: fadeIn 0.8s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to   { opacity: 1; transform: translateY(0); }
        }

        h2 {
            text-align: center;
            color: white;
            font-size: 30px;
            font-weight: 700;
            margin-bottom: 25px;
            letter-spacing: 1px;
        }

        h2 span {
            font-size: 32px;
        }

        label {
            font-size: 15px;
            font-weight: 600;
            color: #f0f0ff;
            margin-bottom: 6px;
            display: block;
        }

        input[type="text"],
        input[type="email"] {
            width: 100%;
            padding: 13px;
            margin-top: 6px;
            margin-bottom: 18px;
            border-radius: 10px;
            border: none;
            background: #ffffff;
            color: #333;
            font-size: 15px;
            outline: none;
            transition: 0.25s ease-in-out;
        }

        input:focus {
            box-shadow: 0 0 10px rgba(255,255,255,0.6);
        }

        input[type="submit"] {
            width: 100%;
            padding: 14px;
            background: #ffffff;
            color: #4E54C8;
            border: none;
            border-radius: 10px;
            font-size: 17px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s ease;
            margin-top: 5px;
            margin-left: 10px;
        }

        input[type="submit"]:hover {
            background: #e8e8ff;
            transform: translateY(-3px);
            box-shadow: 0 6px 18px rgba(0,0,0,0.25);
        }

    </style>
</head>

<body>

    <div class="container">
        
        <form action="addStudent" method="post">

            <h2><span>➕</span> Add Student</h2>

            <label>Name</label>
            <input type="text" name="name" placeholder="Enter student name" required>

            <label>Email</label>
            <input type="email" name="email" placeholder="Enter student email" required>

            <label>Course</label>
            <input type="text" name="course" placeholder="Enter course" required>

            <input type="submit" value="Add Student">

        </form>

    </div>

</body>
</html>
