<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Student</title>
    <style>

        body {
            margin: 0;
            padding: 0;
            font-family: "Segoe UI", Arial, sans-serif;
            background: #eef1f7;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background: white;
            padding: 35px 40px;
            width: 420px;
            border-radius: 14px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.15);
            animation: fadeIn 0.7s ease-in-out;
        }

        h3 {
            text-align: center;
            font-size: 28px;
            margin-bottom: 25px;
            color: #4f46e5;
            font-weight: 700;
        }

        label {
            font-weight: 600;
            color: #333;
            display: block;
            margin-bottom: 6px;
            font-size: 15px;
        }

        input[type="text"],
        input[type="email"] {
            width: 100%;
            padding: 12px;
            font-size: 15px;
            border: 1.5px solid #ccc;
            border-radius: 8px;
            margin-bottom: 18px;
            outline: none;
            transition: 0.3s;
        }

        input:focus {
            border-color: #4f46e5;
            box-shadow: 0 0 5px rgba(79,70,229,0.3);
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            border: none;
            background: #4f46e5;
            color: white;
            border-radius: 8px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.3s;
        }

        input[type="submit"]:hover {
            background: #4338ca;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(15px); }
            to { opacity: 1; transform: translateY(0); }
        }

    </style>
</head>

<body>

    <div class="form-container">
        <form action="addStudent" method="post">
            <h3>Add Student</h3>

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
