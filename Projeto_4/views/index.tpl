<!DOCTYPE html>
<html>
<head>
    <link href="https://fonts.cdnfonts.com/css/silkscreen" rel="stylesheet">
    <title>Ships Nation</title>
    <style>
        @import url('https://fonts.cdnfonts.com/css/silkscreen');
        body {
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-image: url('/static/background_ship.gif');
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Define a altura da tela como 100% da altura do viewport */
            width: 100vw; /* Define a largura da tela como 100% da largura do viewport */
            font-family: 'Silkscreen', sans-serif;
            font-weight: 400;
            font-style: normal;
            color: #ffffff;
        }

        #TitleGame {
            position: absolute;
            top: 20%;
            left: 50%;
            width: 1000px; /* Define a largura da imagem */
            height: auto; /* Mantém a proporção da altura */
            transform: translate(-50%, -50%);
        }

        .texto {
            position: absolute;
            top: 60%;
            left: 50%;
            transform: translateX(-50%);
            font-size: 32px;
            /*padding: 5px; !* Espaçamento interno *!*/
            /*white-space: nowrap; !* Impede a quebra de linha *!*/
            text-shadow: 0px 3px 5px rgba(0, 0, 0, 1); /* Adiciona sombra aos caracteres */
        }

        .container {
            position: relative;
            width: 100%;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .botao-posicionado {
            position: absolute;
            top: 80%;
            left: 50%;
            transform: translate(-50%, -50%);
            padding: 15px 30px;
            font-size: 50px;
            border: 1px solid #ccc;
            border-radius: 8px;
            cursor: pointer;
            background-color: #000000;
            font-family: 'Silkscreen Expanded', sans-serif;
            font-weight: 500;
            font-style: normal;
            color: #ffffff;
        }
    </style>
</head>
<body>
    <img id="TitleGame" src="/static/name.png" alt="Nome do Game">

    <div class="texto">Aperte F11</div>

    <div class="container">
        <a href="/difficulty"><button class="botao-posicionado">Jogar</button></a>
    </div>

<!--    <audio autoplay loop>-->
<!--        <source src="/static/background_music.mp3" type="audio/mpeg">-->
<!--        Seu navegador não suporta o elemento de áudio.-->
<!--    </audio>-->
</body>
</html>
