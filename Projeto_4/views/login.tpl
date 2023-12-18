<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://fonts.cdnfonts.com/css/silkscreen" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ships Nation | Login</title>
    <style>
        @import url('https://fonts.cdnfonts.com/css/silkscreen');
        body {
            background-image: url('/static/background_ship.gif'); /* Imagem de fundo da tela de login */
            background-size: cover;
            background-position: center;
            text-align: center;
            margin: 0;
            padding: 0;
            overflow: hidden;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            width: 100vw;
            font-family: 'Silkscreen', sans-serif;
            font-weight: 400;
            font-style: normal;
            color: #ffffff;
        }

        .container {
            text-align: center;
        }

        input {
            margin-bottom: 10px;
            padding: 4px 9px;
            font-size: 32px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            background-color: #000000;
            font-family: 'Silkscreen', sans-serif;
            font-weight: 400;
            font-style: normal;
            color: #ffffff;
        }

        .botao {
            padding: 4px 9px;
            font-size: 32px;
            border: 1px solid #ccc;
            border-radius: 5px;
            cursor: pointer;
            background-color: #000000;
            font-family: 'Silkscreen Expanded', sans-serif;
            font-weight: 500;
            font-style: normal;
            color: #ffffff;
        }

        .botao:last-child {
            margin-right: 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <form action="/login" method="post">
            <div class="input-container">
                <input type="text" name="nome" placeholder="Nome de Usuário" />
            </div>
            <div class="input-container">
                <input type="password" name="senha" placeholder="Senha" />
            </div>
            <div class="input-container">
                <button class="botao" type="submit">Login</button>
                <button class="botao" formaction="/registro" type="submit">Registrar</button>
            </div>
        </form>
        <br><br><br>
        <a href="/difficulty"><button class="botao">Voltar</button></a>
    </div>
</body>
</html>
