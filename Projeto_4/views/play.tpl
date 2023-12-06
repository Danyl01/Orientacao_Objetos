<!DOCTYPE html>
<html>
<head>
    <title>Galeria de Imagens</title>
    <style>
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
<body>
    <div class="gallery">
        <div class="image-container">
            <img src="/static/grid1.jpg" alt="Imagem 1">
            <div class="description">
                <p>Dificuldade: Fácil</p>
                <p>Número de jogadores: 8</p>
                <p>Tamanho do campo de batalha: 10x10</p>
                <p>Número inicial de blocos por jogador: 10</p>
            </div>
        </div>
        <div class="image-container">
            <img src="/static/grid2.jpg" alt="Imagem 2">
            <div class="description">
                <p>Dificuldade: Médio</p>
                <p>Número de jogadores: 4</p>
                <p>Tamanho do campo de batalha: 20x20</p>
                <p>Número inicial de blocos por jogador: 20</p>
            </div>
        </div>
        <div class="image-container">
            <img src="/static/grid3.jpg" alt="Imagem 3">
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
