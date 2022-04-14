
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>CRUD Operations</title>
    </head>

    <style>
        .btn {
            border:3px solid black;
            color:white;
            padding: 14px 28px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            transition-duration: 0.4s;
            cursor: pointer;
        }

        .center{
            margin: 0;
            position: absolute;
            top: 50%;
            left:50%;
            -ms-transform: translate(-50%, 50%);
            transform: translate(-50%, -50%);
        }

        .info{
            background-color: #2196F3;
        }
    </style>


    <body>
        <h3 style="text-align: center">Working with Users</h3>
        <div class="center">
            <button class="btn info"
                onclick="window.location.href='jsp/adduserform.jsp'">Add User</button>
            <button class="btn info"
                onclick="window.location.href='jsp/viewusers.jsp'">View Users</button>
        </div>


</body>
</html>
