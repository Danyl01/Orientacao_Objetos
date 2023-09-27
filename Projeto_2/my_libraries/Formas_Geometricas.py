from math import sqrt, pi

class Ponto:
    def __init__(self, xo, yo):
        self._xo = xo
        self._yo = yo


    def tipoClasse(self):
        return('Ponto')
    
    def iDClasse(self):
        return(1)
    
    def DistOrigem(self):
        dist = sqrt(self._xo**2+self._yo**2)
        return f"{dist:.2f}"
    
    def distPontos(self, x1, y1):
        dist = sqrt((self._xo-x1)**2+(self._yo-y1)**2)
        return dist
    
class Circulo(Ponto):
    def __init__(self, xo, yo, r):
        super().__init__(xo, yo)
        self._r = r
    
    def tipoClasse(self):
        return('Círculo')

    def iDClasse(self):
        return(2)

    def locCirc(self):
        print(f"O círculo está localizado na coordenada {self._xo} {self._yo}, com raio {self._r}")

    def Area(self):
        area = pi*self._r**2
        return area
    
    def Perimetro(self):
        per = 2*pi*self._r
        return per
    
    def FuncMat(self):
        print(f"Este círculo pode ser defindo pela seguinte função matemática: (x-{self._xo})^2 + (y-{self._yo})^2 = {self._r**2}")
    


