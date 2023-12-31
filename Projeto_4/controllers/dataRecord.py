from models.jogador import jogador
import json


class dataRecord:
    def __init__(self):
        self.read()
        self.__autenticado = False

    def read(self):
        # self.__jogadores= [] # banco (json)
        self.jogadores = []  # banco (json)
        try:
            with open(
                "controllers/db/dadosJogadores.json", "r"
            ) as arquivo_json:  # Abrir o banco de dados
                dados_jogador = json.load(arquivo_json)  # Carregar os dados
                self.jogadores = [
                    jogador(**data) for data in dados_jogador
                ]  # Armazenar os dados em uma lista
        except FileNotFoundError:  # Caso não existir arquivo
            self.jogadores.append(
                jogador("Guest", "000000")
            )  # Criar um jogador aleatório

    def getUserName(self):  # retornar o nome do jogador
        # return self.__jogadores.nome
        return self.jogadores.nome

    def checarJogador(
        self, nome, senha
    ):  # Verificar se existe algum jogador no banco de dados que possui o mesmo nome e senha inseridos pelo usuário
        for jogadores in self.jogadores:
            if jogadores.nome == nome and jogadores.senha == senha:
                self.jogadores = jogadores
                self.__autenticado = True
                return self.__autenticado  # Caso tenha sucesso, irá retornar True
        return False  # Caso não tenha sucesso, irá retornar False

    def verificarAutenticacao(
        self,
    ):  # Função que, quando chamada, irá dizer se o usuário está logado ou não
        return self.__autenticado
    
    def logout(self):

        self.jogadores= None
        self.__autenticado= False
        print('Logout realizado com sucesso!')
