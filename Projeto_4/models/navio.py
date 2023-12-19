
class Navio:
    def __init__(self):
        self.numNavios = 5
        self.naviosAbatidos = 0

    def navioAbatido(self):
        self.navioAbatido += 1

    def acabouNavios(self):
        if self.numNavios == self.naviosAbatidos:
            return True
        else:
            return False