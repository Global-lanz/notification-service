<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Solicitação de alteração de senha</title>
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
    <h1>Você solicitou a recuperação da sua senha.</h1>
    <p>Olá ${name}</p>

    <p>Você solicitou a recuperação da sua senha.</p>

    <#if link?? && linkLabel??>
        <p>Para atualizar sua senha, por favor acesse o link abaixo</p>
        <a href="${link}" class="button">${linkLabel}</a>
    </#if>
    <p>Se você não solicitou a recuperação de sua senha, ignore este e-mail.</p>

    <div class="footer">
        Esta é uma mensagem automática. Não responda este e-mail.<br>
        &copy; ${year} Global Lanz Technologies. Todos os direitos reservados.
    </div>
</div>
</body>
</html>