<%@ page import="model.StudentDAO,java.util.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    StudentDAO st = new StudentDAO();
    List<String[]> list = st.getAllStudents();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Students List</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: "Segoe UI", sans-serif;
            background: #eef1f7;
        }

        .container {
            width: 90%;
            margin: 50px auto;
        }

        h1 {
            text-align: center;
            color: #4f46e5;
            margin-bottom: 30px;
            font-size: 32px;
            font-weight: 700;
            animation: fadeIn 0.5s ease-in-out;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 6px 20px rgba(0,0,0,0.15);
            animation: fadeIn 0.6s ease-in-out;
        }

        th {
            background: #4f46e5;
            color: white;
            padding: 15px;
            font-size: 18px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        td {
            padding: 15px;
            font-size: 16px;
            color: #333;
            text-align: center;
        }

        tr:nth-child(even) {
            background: #f4f4ff;
        }

        tr:hover {
            background: #e2e0ff;
            cursor: pointer;
            transform: scale(1.005);
            transition: 0.2s ease-in-out;
        }

        .name-highlight {
            font-weight: bold;
            color: #4f46e5;
            font-size: 17px;
        }

        @keyframes fadeIn {
            from {opacity: 0; transform: translateY(15px);}
            to {opacity: 1; transform: translateY(0);}
        }

    </style>
</head>

<body>
    <div class="container">

        <h1> Registered Students 🎓</h1>

        <table>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Course</th>
            </tr>

            <% for(String[] s : list) { %>
                <tr>
                    <td class="name-highlight"><%= s[0] %></td>
                    <td><%= s[1] %></td>
                    <td><%= s[2] %></td>
                </tr>
            <% } %>
        </table>

    </div>
</body>
</html>
