from controllers.dataRecord import dataRecord
from controllers.batalha import Batalha
from bottle import redirect, template


class applications:
    def __init__(self):
        self.paginas = {
            "index": self.index,
            "login": self.login,
            "batalha": self.batalha,
        }

        self.__bancoDados = dataRecord()
        self.__batalha = Batalha()

    def render(self, pagina, obj=None):
        conteudo = self.paginas.get(
            pagina, self.index
        )  # obter a função associada à chave 'pagina' no dicionário self.paginas. Se a chave não existir, o método padrão self.index será usado como conteúdo.
        return conteudo(obj)

    def login(self, obj):
        return template("views/login")

    def index(self, obj):
        return template("views/home", ctl=obj)

    def batalha(self, obj):
        # handle input
        #if (obj is not None):
            
        # build return object
        nomeJogador = self.__bancoDados.getUserName()

        return template("views/batalha", nome=nomeJogador, grid=obj)

    def autenticar_jogador(self, nome, senha):
        if self.__bancoDados.checarJogador(
            nome, senha
        ):  # Se o login estiver certo, o usuario será redirecionado para o campo de batalha
            redirect("/batalha/0/0")
        redirect("/login")

    def is_logado(self):  # retornar se o logado está logado (TRUE or FALSE)
        return self.__bancoDados.verificarAutenticacao()
