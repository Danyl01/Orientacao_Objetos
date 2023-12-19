class jogador:
    def __init__(self, nome, senha):
        self.nome = nome
        self.senha = senha

        self.balas = 15
        self.xp = 0

    def QtdBalas(self):
        return self.balas
    
    def usarBala(self):
        self.balas -= 1

    def adiconarXp(self):
        self.xp += 1


