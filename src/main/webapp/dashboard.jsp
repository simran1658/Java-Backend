<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>

    <style>
        body {
            margin: 0;
            font-family: "Poppins", sans-serif;
            background: #eef1f7;
            display: flex;
        }

        /* ---------------- SIDEBAR ---------------- */
        .sidebar {
            width: 260px;
            height: 100vh;
            background: linear-gradient(135deg, #4E54C8, #8F94FB);
            padding-top: 40px;
            color: white;
            position: fixed;
            border-radius: 0 25px 25px 0;
            box-shadow: 4px 0 25px rgba(0,0,0,0.2);
            animation: slideLeft 0.7s ease;
        }

        @keyframes slideLeft {
            from { transform: translateX(-100px); opacity: 0; }
            to   { transform: translateX(0); opacity: 1; }
        }

        .sidebar h2 {
            text-align: center;
            margin-bottom: 35px;
            font-size: 26px;
            letter-spacing: 1px;
        }

        .sidebar a {
            display: block;
            padding: 15px 25px;
            color: #fff;
            text-decoration: none;
            font-size: 18px;
            border-radius: 12px;
            margin: 10px 20px;
            transition: 0.3s;
        }

        .sidebar a:hover {
            background: rgba(255,255,255,0.25);
            transform: translateX(6px);
        }

        /* ---------------- MAIN CONTENT ---------------- */
        .main-container {
            margin-left: 260px;
            padding: 40px;
            width: calc(100% - 260px);
            animation: fadeIn 1s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to   { opacity: 1; transform: translateY(0); }
        }

        /* TOP BAR */
        .top-bar {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .top-bar h1 {
            font-size: 32px;
            font-weight: 600;
            color: #4E54C8;
            margin: 0;
        }

        .profile {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .profile img {
            width: 48px;
            height: 48px;
            border-radius: 50%;
            border: 3px solid #4E54C8;
        }

        .time-box {
            background: #4E54C8;
            padding: 10px 18px;
            color: white;
            font-weight: 600;
            border-radius: 10px;
            font-size: 17px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.25);
        }

        /* ---------------- WELCOME BOX ---------------- */
        .welcome-box {
            margin-top: 30px;
            padding: 35px;
            background: white;
            border-radius: 18px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.12);
            border-left: 6px solid #4E54C8;
        }

        .welcome-box h2 {
            margin: 0;
            font-size: 28px;
            color: #4E54C8;
        }

        .welcome-box p {
            margin-top: 10px;
            font-size: 18px;
            color: #444;
        }

        /* ---------------- CARDS ---------------- */
        .cards {
            display: flex;
            gap: 25px;
            margin-top: 40px;
            flex-wrap: wrap;
        }

        .card {
            width: 250px;
            background: white;
            padding: 25px;
            border-radius: 18px;
            text-align: center;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
            transition: 0.3s;
            position: relative;
            overflow: hidden;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 35px rgba(0,0,0,0.18);
        }

        .glow {
            position: absolute;
            top: -50px;
            right: -50px;
            width: 120px;
            height: 120px;
            background: rgba(78,84,200,0.35);
            border-radius: 50%;
            filter: blur(30px);
        }

        .card-icon {
            font-size: 45px;
            margin-bottom: 12px;
            color: #4E54C8;
        }

        .card-title {
            font-size: 20px;
            font-weight: 600;
            color: #333;
        }

        .card-value {
            font-size: 28px;
            margin-top: 10px;
            font-weight: bold;
            color: #111;
        }

        /* ---------------- QUICK ACTIONS ---------------- */
        .quick-actions {
            margin-top: 40px;
        }

        .quick-actions h2 {
            font-size: 26px;
            color: #4E54C8;
        }

        .action-buttons a {
            background: #4E54C8;
            padding: 12px 22px;
            border-radius: 10px;
            color: white;
            text-decoration: none;
            font-size: 17px;
            margin-right: 15px;
            transition: 0.3s;
        }

        .action-buttons a:hover {
            background: #3730A3;
        }
    </style>

    <script>
        function updateClock() {
            const now = new Date();
            document.getElementById("liveTime").innerHTML = now.toLocaleTimeString();
        }
        setInterval(updateClock, 1000);
    </script>

</head>

<body>

    <!-- SIDEBAR -->
    <div class="sidebar">
        <h2>📘 Student Portal</h2>
        <a href="dashboard.jsp">🏠 Dashboard</a>
        <a href="students.jsp">📄 View Students</a>
        <a href="addStudent.jsp">➕ Add Student</a>
        <a href="searchStudent.jsp">🔍 Search Student</a>
        <a href="updateStudent.jsp">✏️ Update Student</a>
        <a href="deleteStudent.jsp">🗑 Delete Student</a>
        <a href="logout">🚪 Logout</a>
    </div>

    <!-- MAIN CONTENT -->
    <div class="main-container">

        <div class="top-bar">
            <h1>Welcome, <%= session.getAttribute("username") %> 👋</h1>

            <div class="profile">
                <div class="time-box" id="liveTime">--:--:--</div>
            </div>
        </div>

        <div class="welcome-box">
            <h2>Dashboard Overview</h2>
            <p>Active Users Online: <b><%= listener.ActiveUserListener.getActiveUsers() %></b></p>
        </div>

        <!-- DASHBOARD CARDS -->
        <div class="cards">

            <div class="card">
                <div class="glow"></div>
                <div class="card-icon">👨‍🎓</div>
                <div class="card-title">Total Students</div>
                <div class="card-value">20</div>
            </div>

            <div class="card">
                <div class="glow"></div>
                <div class="card-icon">📚</div>
                <div class="card-title">Courses Offered</div>
                <div class="card-value">5</div>
            </div>

            <div class="card">
                <div class="glow"></div>
                <div class="card-icon">📈</div>
                <div class="card-title">New Admissions</div>
                <div class="card-value">8</div>
            </div>

            <div class="card">
                <div class="glow"></div>
                <div class="card-icon">📝</div>
                <div class="card-title">Pending Tasks</div>
                <div class="card-value">3</div>
            </div>

        </div>

        <!-- QUICK ACTIONS -->
        <div class="quick-actions">
            <h2>Quick Actions</h2>
            <div class="action-buttons">
                <a href="addStudent.jsp">➕ Add Student</a>
                <a href="searchStudent.jsp">🔍 Search</a>
                <a href="students.jsp">📄 View All</a>
                <a href="logout">🚪 Logout</a>
            </div>
        </div>

    </div>

</body>
</html>
