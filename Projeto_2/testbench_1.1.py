from my_libraries.Formas_Geometricas import Ponto, Circulo, Linha
from my_libraries.Espaco import Plano2D

plano_cartesiano = Plano2D()

C1 = Circulo(0,0,4)
C2 = Circulo(4,4,2)
C3 = Circulo(8,5,2)
P4 = Ponto(2,6)
P5 = Ponto(-2,-2)
L6 = Linha(8,1,0,2)
L7 = Linha(4,-2,8,4)


plano_cartesiano.InserirForma(C1, 1)
plano_cartesiano.InserirForma(C2, 2)
plano_cartesiano.InserirForma(C3, 3)
plano_cartesiano.InserirForma(P4, 4)
plano_cartesiano.InserirForma(P5, 5)
plano_cartesiano.InserirForma(L6, 6)
plano_cartesiano.InserirForma(L7, 7)

plano_cartesiano.status()