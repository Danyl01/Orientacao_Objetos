<!DOCTYPE html>
<html>
<head>
    <title>Ships Nation</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            overflow: hidden;
            /*background-image: url('/static/under_construction.gif');*/
            background-color: #000000;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Define a altura da tela como 100% da altura do viewport */
            width: 100vw; /* Define a largura da tela como 100% da largura do viewport */
            font-family: 'Silkscreen', serif;
            color: #ffffff;
        }

        #construindo {
            position: absolute;
            top: 50%;
            left: 50%;
            width: 350px; /* Define a largura da imagem */
            height: auto; /* Mantém a proporção da altura */
            transform: translate(-50%, -50%);
        }

        .texto {
            position: absolute;
            top: 20%;
            left: 50%;
            transform: translateX(-50%);
            font-size: 25px;
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
            top: 90%;
            left: 50%;
            transform: translate(-50%, -50%);
            padding: 1px 1px;
            font-size: 30px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            background-color: #000000;
            color: #ffffff;
            font-family: 'Silkscreen', serif;
        }
    </style>
</head>
<body>
    <img id="construindo" src="/static/under_construction.gif" alt="Não finalizado">

    <div class="texto">Em construção</div>

    <div class="container">
        <a href="/difficulty"><button class="botao-posicionado">Voltar</button></a>
    </div>

<!--    <audio autoplay loop>-->
<!--        <source src="/static/background_music.mp3" type="audio/mpeg">-->
<!--        Seu navegador não suporta o elemento de áudio.-->
<!--    </audio>-->
</body>
</html>