<!DOCTYPE html>
<html lang="en">
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

        .board-container {
            display: flex;
            align-items: center;  /* Alinha o conteúdo do board-container no centro vertical */
            justify-content: center;  /* Alinha o conteúdo do board-container no centro horizontal */
        }

        table.grid {
            border-collapse: collapse;
        }

        table.grid td {
            width: 80px;
            height: 80px;
            text-align: center;
            font-size: 18px;
            font-weight: bold;
            color: #ffffff;
            border: 1px solid #ffffff;
            cursor: pointer;
            background-color: rgba(255, 255, 255, 0.2);
        }

        table.grid td:nth-child(odd) {
            background-color: rgba(200, 200, 200, 0.2);
        }

        table.grid td:hover {
            background-color: rgba(255, 255, 255, 0.5);
        }

        table.grid td:nth-child(odd):hover {
            background-color: rgba(200, 200, 200, 0.5);
        }
    </style>
</head>
<body>
    <h1>Olá {{nome}}. Você está na área de batalha!</h1>

    <div className="board-container">
        <div id="board"></div>  <!-- O grid será adicionado a este elemento div -->
    </div>

<!--    <audio autoplay loop>-->
<!--        <source src="/static/background_music.mp3" type="audio/mpeg">-->
<!--        Seu navegador não suporta o elemento de áudio.-->
<!--    </audio>-->

    <script type="text/javascript">

        let board = document.getElementById("board")
        board.appendChild(clickableGrid(10, 10, send_click_form))

        function clickableGrid(rows, cols, callback) {
            var i = 0;
            var grid = document.createElement('table');
            grid.className = 'grid';
            for (var r = 0; r < rows; ++r) {
                var tr = grid.appendChild(document.createElement('tr'));
                for (var c = 0; c < cols; ++c) {
                    var cell = tr.appendChild(document.createElement('td'));
                    cell.innerHTML = ++i;
                    cell.addEventListener('click', (function (el, r, c, i) {
                        return function () { callback(el, r, c, i); }
                    })(cell, r, c, i), false);
                }
            }
            return grid;
        }

        function send_click_form(_el, r, c, i) {
            const formData = new FormData();
            formData.append("posX", r);
            formData.append("posY", c);
            try {
                const response = fetch("/batalha=board-press", {
                    method: "POST",
                    body: formData,
                });
                console.log(i);
            } catch (e) {
                console.error(e);
            }
        }

    </script>
</body>

</html>