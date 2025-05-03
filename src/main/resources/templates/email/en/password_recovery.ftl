<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Password change request</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
            margin: 0;
        }
        .container {
            max-width: 600px;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.05);
        }
        h1 {
            color: #333;
        }
        p {
            color: #555;
            line-height: 1.6;
        }
        .footer {
            font-size: 12px;
            color: #888;
            margin-top: 30px;
            text-align: center;
        }
        .button {
            display: inline-block;
            background-color: #007BFF;
            color: white;
            padding: 12px 20px;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
        }
        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Your have requested to update your password.</h1>
    <p>Hello ${name}</p>

    <p>You have requested to recover your password.</p>

    <#if link?? && linkLabel??>
        <p>To update your password, please access the link below</p>
        <a href="${link}" class="button">${linkLabel}</a>
    </#if>
    <p>If you haven't requested to recover your password, please ignore this e-mail.</p>

    <div class="footer">
        This is an automated message. Do not respond this e-mail<br>
        &copy; ${year} Global Lanz Technologies. All rights reserved.
    </div>
</div>
</body>
</html>