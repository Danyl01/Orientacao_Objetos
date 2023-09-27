from my_libraries.Formas_Geometricas import Ponto, Circulo
from my_libraries.Espaco import Plano2D

plano_cartesiano = Plano2D()
C1 = Circulo(20, 0, 10)
C2 = Circulo(10, 10, 10)
P1 = Ponto(24, 0)
P2 = Ponto(0, 15)

plano_cartesiano.InserirForma(C1, 1)
plano_cartesiano.InserirForma(C2, 2)
plano_cartesiano.InserirForma(P1, 3)
plano_cartesiano.InserirForma(P2, 4)

plano_cartesiano.status()


'''
print(plano_cartesiano.verificaDentro(P1, C1))
print(plano_cartesiano.verificaDentro(C1, C2))
'''