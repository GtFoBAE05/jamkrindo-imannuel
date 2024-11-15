<%@ page import="java.util.List" %>
<%@ page import="org.imannuel.simpleformapp.model.Department" %>
<%@ page import="org.imannuel.simpleformapp.model.Student" %>
<%@ page contentType="text/html; charset=utf-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Home</title>
    <style>
        <%@ include file="/css/style.css" %>
    </style>
</head>
<body>
<div style="text-align: center">
    <b>Welcome ${student.studentId}</b>
    <br><br>

    <table>
        <thead>
        <tr>
            <th>Department</th>
            <th>Student ID</th>
            <th>Marks</th>
            <th>Pass %</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<Department> departments = (List<Department>) request.getAttribute("listGrades");

            if (departments != null) {
                for (Department department : departments) {
                    int totalStudents = department.getStudents().size();
                    int passCount = 0;

                    for (Student student : department.getStudents()) {
                        if (student.getGrade().getMarks() >= 40) {
                            passCount++;
                        }
                    }

                    double passPercentage = totalStudents > 0 ? ((double) passCount / totalStudents) * 100 : 0;

                    for (int i = 0; i < totalStudents; i++) {
                        Student student = department.getStudents().get(i);
        %>
        <tr>
            <% if (i == 0) { %>
            <td rowspan="<%= totalStudents %>"><%= department.getDepartmentName() %>
            </td>
            <% } %>
            <td onclick="showStudentAlert('<%= student.getStudentId() %>', '<%= student.getStudentName() %>')"
                style="cursor: pointer"><%= student.getStudentId() %>
            </td>
            <td><%= student.getGrade().getMarks() %>
            </td>

            <% if (i == 0) { %>
            <td rowspan="<%= totalStudents %>"><%= String.format("%.2f", passPercentage) + "%" %>
            </td>
            <% } %>
        </tr>
        <%
                    }
                }
            }
        %>
        </tbody>
    </table>
</div>

<script>
    function showStudentAlert(studentId, studentName) {
        alert("Student ID: " + studentId + " - Student Name: " + studentName);
    }
</script>

</body>
</html>
