<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        <%@ include file="/css/style.css" %>
    </style>

    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script type="text/javascript"
            src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>
</head>
<body>
<div class="loginContainer">
    <h1 class="formTitle">Welcome Back</h1>
    <p class="formDescription">Please login to your account</p>

    <form id="loginForm" action="login" method="post">
        <div class="inputContainer">
            <label for="userId" class="inputLabel">
                <span class="inputLabelText">User ID: </span>
                <input type="text" name="userId" id="userId" class="inputField" placeholder="User ID..." required/>
                <span class="inputErrorMessage" id="userIdError"></span>
            </label>
            <br>
            <label for="password" class="inputLabel">
                <span class="inputLabelText">Password: </span>
                <input type="password" name="password" id="password" class="inputField" placeholder="Password..."
                       required/>
                <span class="inputErrorMessage" id="passwordError"></span>
            </label>
        </div>

        <c:if test="${not empty message}">
            <div class="serverErrorMessage">${message}</div>
        </c:if>

        <button type="submit" class="submitButton">Login</button>
    </form>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        $("#loginForm").validate({
            rules: {
                userId: {
                    required: true,
                },
                password: {
                    required: true,
                }
            },
            messages: {
                userId: {
                    required: "User ID is Required",
                },
                password: {
                    required: "Password is required",
                }
            }
        });
    });
</script>

</body>
</html>
