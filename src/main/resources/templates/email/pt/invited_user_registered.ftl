<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Você foi convidado para a empresa ${company}!</title>
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
    <h1>Você foi convidado para a empresa ${company}.</h1>
    <p>Olá ${name},</p>

    <p>Bem-vindo(a) a Global Lanz. Estamos felizes em ter-nos conosco</p>
    <p>Você foi convidado a contribuir com ${company}!</p>

    <#if link?? && linkLabel??>
        <p>Para ativar sua conta, acesse o link abaixo </p>
        <a href="${link}" class="button">${linkLabel}</a>
    </#if>

    <div class="footer">
        Esta é uma mensagem automática. Não responda este e-mail.<br>
        &copy; ${year} Global Lanz Technologies. Todos os direitos reservados.
    </div>
</div>
</body>
</html>