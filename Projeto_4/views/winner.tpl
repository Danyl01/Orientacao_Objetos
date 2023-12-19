<!DOCTYPE html>
<html>
<head>
    <link href="https://fonts.cdnfonts.com/css/silkscreen" rel="stylesheet">
    <title>Ships Nation | Game Over</title>
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

        .fundo-opaco {
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.8); /* Cor de fundo com 80% de opacidade */
            text-align: center;
            color: white;
        }

        .text {
            position: absolute;
            top: 30%;
            left: 50%;
            transform: translateX(-50%);
            font-size: 60px;
            font-family: 'Silkscreen', sans-serif;
            font-weight: 400;
            font-style: normal;
        }

        .botao {
            position: absolute;
            top: 90%;
            left: 50%;
            transform: translate(-50%, -50%);
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

    </style>
</head>
<body>
    <div class="fundo-opaco">
        <div class="text">
            Parabéns<br><br>
            Você venceu!
        </div>
        <a href="/"><button class="botao">Novo Jogo</button></a>
    </div>

<!--    <audio autoplay loop>-->
<!--        <source src="/static/background_music.mp3" type="audio/mpeg">-->
<!--        Seu navegador não suporta o elemento de áudio.-->
<!--    </audio>-->
</body>
</html>