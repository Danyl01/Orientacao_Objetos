from controllers.Aplications import applications
from bottle import Bottle, route, run, static_file, template, redirect, request

ctl = applications()


@route('/')
def index():
    return template('index', width=1280, height=720)


@route('/difficulty')
def dificuldade():
    return template('difficulty')


@route('/difficulty=easy/players', method='POST')
def jogadores():
    redirect('/login')


@route('/difficulty=medium/players', method='POST')
def jogadores():
    return template('players')


@route('/difficulty=hard/players', method='POST')
def jogadores():
    return template('players')


@route('/login', method='GET') #Usuario consegue acessar o link
def login():
    return ctl.render('login')

@route('/login', method='POST') #Apenas o site consegue fazer alteração
def login():
    nome = request.forms.get('nome')
    senha = request.forms.get('senha')
    print(f'nome registrado: {nome}   senha registrada: {senha}')
    ctl.autenticar_jogador(nome,senha)

@route('/batalha')
def batalha():
    if ctl.is_logado():
        return ctl.render('batalha')
    else:
        redirect('/login')


@route('/static/<filename:path>')
def serve_static(filename):
    return static_file(filename, root='static/')


if __name__ == '__main__':
    run(host='localhost', port=8080, debug=True)
