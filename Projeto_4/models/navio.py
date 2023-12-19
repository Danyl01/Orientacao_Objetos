
class Navio:
    def __init__(self):
        self.numNavios = 15
        self.naviosAbatidos = 0

    def quantidadeNavios(self):
        return self.numNavios

    def navioAbatido(self):
        self.naviosAbatidos += 1

    def qtdNaviosAbatidos(self):
        return self.naviosAbatidos

    def navioRestante(self):
        rest = self.numNavios - self.naviosAbatidos
        return rest

    def acabouNavios(self):
        if self.numNavios == self.naviosAbatidos:
            return True
        else:
            return False