<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

    <style>
        body {
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .loginContainer {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            text-align: center;
        }

        .formTitle {
            font-size: 24px;
            margin-bottom: 10px;
            color: #020202;
        }

        .formDescription {
            font-size: 14px;
            color: #6a6a6a;
            margin-bottom: 20px;
        }

        .inputContainer {
            margin-bottom: 20px;
            text-align: left;
        }

        .inputLabel {
            display: block;
            margin-bottom: 8px;
            font-size: 14px;
            color: #333;
        }

        .inputField {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #cccccc;
            border-radius: 4px;
            outline: none;
            transition: border-color 0.3s;
        }

        .inputErrorMessage {
            color: #e74c3c;
            font-size: 12px;
            margin-top: 5px;
        }

        .serverErrorMessage {
            color: #e74c3c;
            font-size: 14px;
            margin-top: 15px;
        }

        .submitButton {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 12px 20px;
            font-size: 16px;
            border-radius: 4px;
            width: 100%;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .submitButton:hover {
            background-color: #0056b3;
        }
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
