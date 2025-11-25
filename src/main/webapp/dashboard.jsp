<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: "Segoe UI", Arial, sans-serif;
            background: #f5f7fa;
        }

        .navbar {
            background: #4f46e5;
            padding: 18px 40px;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 3px 12px rgba(0,0,0,0.15);
        }

        .navbar h2 {
            margin: 0;
            font-size: 26px;
            font-weight: 600;
        }

        .menu a {
            color: white;
            margin-left: 25px;
            text-decoration: none;
            font-size: 17px;
            font-weight: 500;
            transition: 0.3s;
        }

        .menu a:hover {
            color: #d1d5ff;
        }

        .container {
            text-align: center;
            margin-top: 60px;
        }

        .welcome-box {
            background: white;
            padding: 40px;
            width: 500px;
            margin: auto;
            border-radius: 14px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.15);
            animation: fadeIn 0.6s ease-in-out;
        }

        .welcome-box h1 {
            font-size: 30px;
            color: #4f46e5;
            margin-bottom: 10px;
        }

        .stats {
            margin-top: 25px;
            font-size: 18px;
            font-weight: 600;
            color: #333;
        }

        /* Dashboard Cards */
        .cards {
            display: flex;
            justify-content: center;
            gap: 25px;
            margin-top: 40px;
            flex-wrap: wrap;
        }

        .card {
            background: white;
            width: 220px;
            padding: 25px;
            border-radius: 14px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.1);
            text-align: center;
            transition: 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
        }

        .card-icon {
            font-size: 40px;
            margin-bottom: 10px;
            color: #4f46e5;
        }

        .card-title {
            font-size: 20px;
            font-weight: 600;
            color: #4f46e5;
        }

        .card-value {
            margin-top: 8px;
            font-size: 22px;
            font-weight: 700;
            color: #222;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>

<body>

    <!-- Top Navigation -->
    <div class="navbar">
        <h2>Student Portal Dashboard</h2>
        <div class="menu">
            <a href="students.jsp">View Students</a>
            <a href="addStudent.jsp">Add Student</a>
            <a href="logout">Logout</a>
        </div>
    </div>

    <!-- Main Content -->
    <div class="container">

        <!-- Welcome Box -->
        <div class="welcome-box">
            <h1>Welcome, <%= session.getAttribute("username") %> 👋</h1>

            <p class="stats">
                Active Users Online: <%= listener.ActiveUserListener.getActiveUsers() %>
            </p>
        </div>

        <!-- Dashboard Cards -->
        <div class="cards">

            <div class="card">
                <div class="card-icon">👨‍🎓</div>
                <div class="card-title">Total Students</div>
                <div class="card-value">20</div>
            </div>

            <div class="card">
                <div class="card-icon">📚</div>
                <div class="card-title">Courses Offered</div>
                <div class="card-value">5</div>
            </div>

            <div class="card">
                <div class="card-icon">📈</div>
                <div class="card-title">New Admissions</div>
                <div class="card-value">08</div>
            </div>

            <div class="card">
                <div class="card-icon">📝</div>
                <div class="card-title">Pending Tasks</div>
                <div class="card-value">03</div>
            </div>

        </div>

    </div>

</body>
</html>
