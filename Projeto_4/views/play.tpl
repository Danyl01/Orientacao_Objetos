<!DOCTYPE html>
<html>
<head>
    <title>Dificuldade</title>
    <style>
        body {
            background-image: url('/static/background.jpg');
            /*font-family: 'Roboto', sans-serif;*/
            /*font-family: 'Rye';*/
            font-family: 'Black Ops One';
            /*font-palette: light;*/
        }
        .gallery {
            display: flex;
            justify-content: space-around;
            align-items: center;
            padding: 20px;
        }
        .image-container {
            text-align: center;
        }
        .image-container img {
            max-width: 300px;
            height: auto;
        }
        .description {
            margin-top: 10px;
            text-align: center;
        }
    </style>
</head>
<body style="background-color:cyan">
<!--    <audio autoplay loop>-->
<!--        <source src="/static/background_music.mp3" type="audio/mpeg">-->
<!--        Seu navegador não suporta o elemento de áudio.-->
<!--    </audio>-->
    <div class="gallery">
        <div class="image-container">
            <img src="/static/Grid1.png" alt="Imagem 1">
            <div class="description">
                <p>Dificuldade: Fácil</p>
                <p>Número de jogadores: 8</p>
                <p>Tamanho do campo de batalha: 10x10</p>
                <p>Número inicial de blocos por jogador: 10</p>
            </div>
        </div>
        <div class="image-container">
            <img src="/static/Grid2.png" alt="Imagem 2">
            <div class="description">
                <p>Dificuldade: Média</p>
                <p>Número de jogadores: 4</p>
                <p>Tamanho do campo de batalha: 20x20</p>
                <p>Número inicial de blocos por jogador: 20</p>
            </div>
        </div>
        <div class="image-container">
            <img src="/static/Grid3.png" alt="Imagem 3">
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
