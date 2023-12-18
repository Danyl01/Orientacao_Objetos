<!DOCTYPE html>
<html>
<head>
    <link href="https://fonts.cdnfonts.com/css/silkscreen" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/static/styles.css"> <!-- Link para o arquivo CSS -->
    <title>Ships Nation | Dificuldade</title>
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
            display: flex;
            justify-content: space-around;
            align-items: flex-start;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.8); /* Cor de fundo com 80% de opacidade */
            text-align: center;
            color: white;
        }

        .bloco {
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: center;
        }

        .text1 {
            position: absolute;
            top: 5%;
            left: 50%;
            transform: translateX(-50%);
            font-size: 40px;
            padding: 5px; /* Espaçamento interno */
            white-space: nowrap; /* Impede a quebra de linha */
            font-family: 'Silkscreen', sans-serif;
            font-weight: 400;
            font-style: normal;
            color: #ffffff;
        }

        .text2 {
            margin-top: 3px;
            font-size: 20px;
        }

        .botao {
            margin-top: 35%;
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

        .imagem {
            margin-top: 20px;
            max-width: 60%;
            height: auto;
        }
    </style>
</head>
<body>
    <div class="fundo-opaco">
        <div class="text1"><span>Escolha a dificuldade</span></div>
        <div class="bloco">
            <button class="botao" onclick="location.href='/difficulty=easy'">Easy</button>
            <img class="imagem" src="/static/Grid1.png" alt="Imagem 1">
            <div class="text2">
                <span>
                    <p>Número de jogadores:<br>8</p>
                    <p>Tamanho do campo de batalha de cada jogador:<br>10x10</p>
                    <p>Número inicial de blocos por jogador:<br>10</p>
                </span>
            </div>
        </div>
        <div class="bloco">
            <button class="botao" onclick="location.href='/difficulty=medium'">Medium</button>
            <img class="imagem" src="/static/Grid2.png" alt="Imagem 2">
            <div class="text2">
                <span>
                    <p>Número de jogadores:<br>4</p>
                    <p>Tamanho do campo de batalha de cada jogador:<br>20x20</p>
                    <p>Número inicial de blocos por jogador:<br>20</p>
                </span>
            </div>
        </div>
        <div class="bloco">
            <button class="botao" onclick="location.href='/difficulty=hard'">Hard</button>
            <img class="imagem" src="/static/Grid3.png" alt="Imagem 3">
            <div class="text2">
                <span>
                    <p>Número de jogadores:<br>2</p>
                    <p>Tamanho do campo de batalha de cada jogador:<br>30x30</p>
                    <p>Número inicial de blocos por jogador:<br>30</p>
                </span>
            </div>
        </div>
    </div>
<!--    <audio autoplay loop>-->
<!--        <source src="/static/background_music.mp3" type="audio/mpeg">-->
<!--        Seu navegador não suporta o elemento de áudio.-->
<!--    </audio>-->
</body>
</html>
