from bottle import route, run, static_file, template


@route('/')
def index():
    return template('index', width=1280, height=720)


@route('/difficulty')
def dificuldade():
    return template('difficulty')


@route('/difficulty=easy/players', method='POST')
def jogadores():
    return template('players')


@route('/difficulty=medium/players', method='POST')
def jogadores():
    return template('players')


@route('/difficulty=hard/players', method='POST')
def jogadores():
    return template('players')


@route('/static/<filename:path>')
def serve_static(filename):
    return static_file(filename, root='static/')


if __name__ == '__main__':
    run(host='localhost', port=8080, debug=True)
