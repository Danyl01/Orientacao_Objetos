<!DOCTYPE html>
<html>
<head>
    <link href="https://fonts.cdnfonts.com/css/silkscreen" rel="stylesheet">
    <title>Ships Nation | Login</title>
    <style>
        @import url('https://fonts.cdnfonts.com/css/silkscreen');
        body {
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #000000;
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

        #construindo {
            position: absolute;
            top: 50%;
            left: 50%;
            width: 30%; /* Define a largura da imagem */
            height: auto; /* Mantém a proporção da altura */
            transform: translate(-50%, -50%);
        }

        .texto {
            position: absolute;
            top: 15%;
            left: 50%;
            transform: translateX(-50%);
            font-size: 32px;
        }

        .container {
            position: relative;
            width: 100%;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .botao {
            position: absolute;
            top: 90%;
            left: 50%;
            transform: translate(-50%, -50%);
            padding: 4px 9px;
            font-size: 32px;
            border: none;
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
    <img id="construindo" src="/static/under_construction.gif" alt="Não finalizado">

    <div class="texto">Em construção</div>

    <div class="container">
        <a href="/difficulty"><button class="botao">Voltar</button></a>
    </div>

<!--    <audio autoplay loop>-->
<!--        <source src="/static/background_music.mp3" type="audio/mpeg">-->
<!--        Seu navegador não suporta o elemento de áudio.-->
<!--    </audio>-->
</body>
</html>