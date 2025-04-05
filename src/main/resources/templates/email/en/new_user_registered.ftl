<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Your account has been registered.</title>
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
    <h1>Your account has been registered.</h1>
    <p>Hello ${name},</p>

    <p>Welcome to Global Lanz. We are happy to have you with us!</p>

    <#if link?? && linkLabel??>
        <p>To activate your account, please access the link below</p>
        <a href="${link}" class="button">${linkLabel}</a>
    </#if>

    <div class="footer">
        This is an automated message. Do not respond this e-mail<br>
        &copy; ${year} Global Lanz Technologies. All rights reserved.
    </div>
</div>
</body>
</html>