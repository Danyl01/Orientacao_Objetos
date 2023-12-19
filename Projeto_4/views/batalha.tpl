<html>
    <head>
        <link href="https://fonts.cdnfonts.com/css/silkscreen" rel="stylesheet">
        <style>
            @import url('https://fonts.cdnfonts.com/css/silkscreen');
            body {
                        margin: 0;
                        padding: 0;
                        overflow: hidden;
                        background-image: url('/static/BoardNoGrid.png');
                        background-size: cover;
                        display: flex;
                        flex-direction: column;
                        align-items: center;
                        justify-content: center;
                        height: 100vh;
                        width: 100vw;
                        font-family: 'Silkscreen', sans-serif;
                        font-weight: 400;
                        font-style: normal;
                        color: #ffffff;
                    }
            h1 {
                font-size: 25px;
                text-shadow: 0px 3px 5px rgba(0, 0, 0, 1);
            }

            .grid-container {
                display: grid;
                grid-template-columns: repeat(10, 50px);  /* Ajuste conforme necessário */
                grid-template-rows: repeat(10, 50px);  /* Ajuste conforme necessário */
                gap: 1px;
            }
            .grid-item {
                border: 1px solid #ccc;
            }
        </style>
    </head>
    <body>
        <h1>Imagem renderizada no quadrado do grid ({{linha}}, {{coluna}})</h1>
        <div class="grid-container">
            {{! renderizar_grid(imagem_src, linha, coluna, memoria) }}
        </div>
        
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                var gridItems = document.querySelectorAll(".grid-item");

                gridItems.forEach(function (item, index) {
                    // Adicione os atributos data-linha e data-coluna aos elementos do grid
                    var linha = Math.floor(index / 10) + 1;
                    var coluna = (index % 10) + 1;

                    item.setAttribute("data-linha", linha);
                    item.setAttribute("data-coluna", coluna);

                    // Adicione o evento de clique
                    item.addEventListener("click", function () {
                        // Obtém a linha e coluna do atributo data-*
                        var linha = this.getAttribute("data-linha");
                        var coluna = this.getAttribute("data-coluna");

                        // Redireciona para a página correspondente ao quadrado clicado
                        window.location.href = "/batalha/" + linha + "/" + coluna;

                        // Envia uma solicitação ao servidor indicando a posição clicada
                        fetch("/clicar/" + linha + "/" + coluna, {
                            method: "POST",
                        });
                    });
                });
            });
        </script>
    </body>


    
</html>
