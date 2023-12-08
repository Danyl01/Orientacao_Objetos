<!DOCTYPE html>
<html>
<head>
    <title>Ships Nation | Dificuldade</title>
    <style>
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
            font-family: 'Silkscreen', serif;
            color: #ffffff;
            /*font-palette: light;*/
        }

        .texto {
            position: absolute;
            top: 5%;
            left: 50%;
            transform: translateX(-50%);
            font-size: 40px;
            padding: 5px; /* Espaçamento interno */
            white-space: nowrap; /* Impede a quebra de linha */
            text-shadow: 0px 3px 5px rgba(0, 0, 0, 1); /* Adiciona sombra aos caracteres */
        }

        .gallery {
            top: 90%;
            left: 50%;
            display: flex;
            justify-content: space-around;
            align-items: center;
            padding: 20px;
        }

        .image-container {
            text-align: center;
        }

        /*.image-container img {*/
        /*    max-width: 100px;*/
        /*    height: auto;*/
        /*}*/

        .image-container input {
            max-width: 300px;
            height: auto;
        }

        .description {
            margin-top: 10px;
            text-align: center;
            font-size: 20px;
            text-shadow: 3px 3px 5px rgba(0, 0, 0, 1); /* Adiciona sombra aos caracteres */
        }

        .botao-imagem {
            cursor: pointer; /* Muda o cursor para indicar que é clicável */
        }
    </style>
</head>
<body>
<!--    <form action="/players" method="post"> &lt;!&ndash; Formulário para envio de dados ao clicar &ndash;&gt;-->
<!--        <input type="image" src="/static/Grid1.png" alt="Botão" class="botao-imagem">-->
<!--    </form>-->
    <audio autoplay loop>
        <source src="/static/background_music.mp3" type="audio/mpeg">
        Seu navegador não suporta o elemento de áudio.
    </audio>

    <div class="texto">Escolha a dificuldade</div>

    <div class="gallery">
        <div class="image-container">
<!--            <img src="/static/Grid1.png" alt="Imagem 1">-->
            <form action="/difficulty=easy/players" method="post"> <!-- Formulário para envio de dados ao clicar -->
                <input type="image" src="/static/Grid1.png" alt="Imagem 1" class="botao-imagem">
            </form>
            <div class="description">
                <p>Dificuldade: Fácil</p>
                <p>Número de jogadores: 8</p>
                <p>Tamanho do campo de batalha: 10x10</p>
                <p>Número inicial de blocos por jogador: 10</p>
            </div>
        </div>
        <div class="image-container">
<!--            <img src="/static/Grid2.png" alt="Imagem 2">-->
            <form action="/difficulty=medium/players" method="post"> <!-- Formulário para envio de dados ao clicar -->
                <input type="image" src="/static/Grid2.png" alt="Imagem 2" class="botao-imagem">
            </form>
            <div class="description">
                <p>Dificuldade: Média</p>
                <p>Número de jogadores: 4</p>
                <p>Tamanho do campo de batalha: 20x20</p>
                <p>Número inicial de blocos por jogador: 20</p>
            </div>
        </div>
        <div class="image-container">
<!--            <img src="/static/Grid3.png" alt="Imagem 3">-->
            <form action="/difficulty=hard/players" method="post"> <!-- Formulário para envio de dados ao clicar -->
                <input type="image" src="/static/Grid3.png" alt="Imagem 3" class="botao-imagem">
            </form>
            <div class="description">
                <p>Dificuldade: Difícil</p>
                <p>Número de jogadores: 2</p>
                <p>Tamanho do campo de batalha: 30x30</p>
                <p>Número inicial de blocos por jogador: 30</p>
            </div>
        </div>
    </div>
</body>
</html>
