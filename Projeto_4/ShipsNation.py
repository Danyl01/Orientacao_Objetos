from bottle import route, run, static_file, template

@route('/')
def index():
    return template('index', width=1280, height=720)

@route('/play')
def play():
    return template('play')

@route('/static/<filename:path>')
def serve_static(filename):
    return static_file(filename, root='static/')

if __name__ == '__main__':
    run(host='localhost', port=8080, debug=True, reloader=True)
