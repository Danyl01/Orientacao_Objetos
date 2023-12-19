from controllers.Aplications import applications
from bottle import Bottle, route, run, static_file, template, redirect, request
from viewers.CampodeBatalha import Board
from controllers.dataRecord import dataRecord
from models.jogador import jogador

ctl = applications()
board =Board(10,10)
data = dataRecord()


@route("/")
def index():
    data.logout()
    return template("index", width=1280, height=720)


@route("/difficulty")
def dificuldade():
    return template("difficulty")


@route("/difficulty=easy")
def jogadores():
    redirect("/login")


@route("/difficulty=medium")
def jogadores():
    return template("construction")


@route("/difficulty=hard")
def jogadores():
    return template("construction")


@route("/login", method="GET") 
def login():
    return ctl.render("login")


@route("/login", method="POST") 
def login():
    nome = request.forms.get("nome")
    senha = request.forms.get("senha")
    print(f"nome registrado: {nome}   senha registrada: {senha}")
    ctl.autenticar_jogador(nome, senha)


memoria = []

@route("/batalha/<linha:int>/<coluna:int>")
def batalha(linha, coluna):
    valores = board.enviarValores()
    if ctl.is_logado():
        print(memoria)
        return template('batalha.tpl', linha=linha, coluna=coluna, imagem_src="/static/agua.png", renderizar_grid=board.renderizar_grid, balas=valores['balas']-1, memoria=memoria, navioRest=valores['naviosRestantes'], navioDest=valores['navioDestruido'])
    else:
        redirect("/login")

@route("/clicar/<linha:int>/<coluna:int>", method="POST")
def clicar(linha, coluna):
    global memoria
    id = linha*10+coluna-1
    print(f"Quadrado clicado: Linha {linha}, Coluna {coluna}, ID = {linha*10+coluna-1}")
    posicao = {'linha': linha, 'coluna': coluna, 'id': id}
    memoria.append(posicao)
    return "OK"


@route("/static/<filename:path>")
def serve_static(filename):
    return static_file(filename, root="static/")


@route("/winner")
def vitoria():
    return template("winner")


@route("/loser")
def derrota():
    return template("loser")


if __name__ == "__main__":
    run(host="localhost", port=8080, debug=True)
