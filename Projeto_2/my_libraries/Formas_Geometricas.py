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
    
    def temPonto(self, forma):
        if self.distPontos(forma._xo, forma._yo) <= self._r:
            return True #Estão colidindo
        else:
            return False #Nao estão colidindo
    
    def funcMat(self):
        print(f"Este círculo pode ser defindo pela seguinte função matemática: (x-{self._xo})^2 + (y-{self._yo})^2 = {self._r**2}")
    

class Linha():
    def __init__(self, xo, yo, x1, y1):
        self.P1 = Ponto(xo, yo)
        self.P2 = Ponto(x1, y1)

    def tamLinha(self):
        tam = self.P1.distPontos(self.P2._xo, self.P2._yo)
        return float(f"{tam:.2f}")
    
    def Inclinacao(self):
        inc = (self.P2._yo - self.P1._yo)/(self.P2._xo-self.P1._xo)
        return float(f"{inc:.2f}")

    def tipoClasse(self):
        return('Linha')
    
    def iDClasse(self):
        return(5)
    
    def funcMat(self):
        print(f"Esta linha pode ser definda pela seguinte função matemática: y = {self.Inclinacao()}(x-{self.P1._xo}) + {self.P1._yo} ou  {self.Inclinacao()}x + ({self.Inclinacao()*(-self.P1._xo) + self.P1._yo}) - y = 0")

    def temPonto(self, forma):
        forma._yo = float(f"{forma._yo:.2f}")
        y = float(f"{(self.Inclinacao()*forma._xo-self.Inclinacao()*self.P1._xo+self.P1._yo):.2f}")
        if forma._yo == y and forma._xo >= min(self.P1._xo, self.P2._xo) and forma._xo <= max(self.P1._xo, self.P2._xo):
            return True
        else:
            return False
        
    def interceptaLinha(self, forma):
        x = (-forma.Inclinacao()*forma.P1._xo + self.Inclinacao()*self.P1._xo + forma.P1._yo - self.P1._yo)/(self.Inclinacao()-forma.Inclinacao())
        y = self.Inclinacao()*(x-self.P1._xo) + self.P1._yo
        p = Ponto(x,y)
        if self.temPonto(p) and forma.temPonto(p):
            return True
        else:
            return False
        
    def interceptaCirculo(self, forma):
        d = abs((self.P1._yo - self.P2._yo)*forma._xo + (self.P2._xo-self.P1._xo)*forma._yo+(self.P1._xo*self.P2._yo - self.P2._xo*self.P1._yo))/(sqrt((self.P2._xo-self.P1._xo)**2+(self.P2._yo-self.P1._yo)**2))
        if d <= forma._r:
            if forma.temPonto(self.P1) or forma.temPonto(self.P2) or min(self.P1._xo, self.P2._xo) <= (forma._xo - forma._r) :
                return True
            else:
                return False
        else:
            return False

