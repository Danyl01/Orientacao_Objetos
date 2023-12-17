<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        body {
            background-image: url('/static/background_ship.gif'); /* Imagem de fundo da tela de login */
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            color: white;
            text-align: center;
            margin: 0;
            padding: 0;
            overflow: hidden;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            width: 100vw;
        }
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        input {
            margin: 5px;
            padding: 10px;
            border: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Login</h1>
        <form action="/login" method="post">
            Nome: <input name="nome" type="text" /> <br>
            Senha: <input name="senha" type="password" /> <br>
            <input value="Login" type="submit" />
        </form>
    </div>
    <audio autoplay loop>
        <source src="/static/background_music.mp3" type="audio/mp3">
        Your browser does not support the audio element.
    </audio>
</body>
</html>