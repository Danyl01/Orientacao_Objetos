from my_libraries.Formas_Geometricas import Ponto, Circulo

class Plano2D():
    def __init__(self):
        self.espaco = []
    
    def InserirForma(self, forma, numeracao):
        formasGeometricas = {}
        formasGeometricas['Forma'] = forma
        formasGeometricas['Numero'] = numeracao
        self.espaco.append(formasGeometricas.copy())

    

    def verificaDentro(self, forma1, forma2):
        if forma1.iDClasse() + forma2.iDClasse() == 2: #Verificando se dois pontos estão ocupando o mesmo espaço
            if forma1.distPontos(forma2._xo, forma2._yo) == 0:
                return True #Estão colidindo
            else:
                return False #Nao estão colidindo
        if forma1.iDClasse() + forma2.iDClasse() == 3: #Verificando se um ponto e um círculo estão ocupando o mesmo espaço
            if forma1.tipoClasse() == 'Ponto': #Caso em que a primeira forma inserida é um ponto
                if forma1.distPontos(forma2._xo, forma2._yo) <= forma2._r:
                    return True #Estão colidindo
                else:
                    return False #Nao estão colidindo
            else: #Caso em que a primeira forma inserida é um círculo
                if forma1.distPontos(forma2._xo, forma2._yo) <= forma1._r:
                    return True
                else:
                    return False
        elif forma1.iDClasse() + forma2.iDClasse() == 4: #Verificando se dois circulos estão ocupando o mesmo espaço
            if forma1.distPontos(forma2._xo, forma2._yo) < forma1._r + forma2._r:
                return True #Estão colidindo
            else:
                return False #Não estão colidindo
            
    def status(self):
        print(f"{'-'*15} Formas registradas {'-'*15}")
        for i in self.espaco:
            print(f"{i['Forma'].tipoClasse()} {i['Numero']}")

        print(f"{'-'*15} Colisões {'-'*15}", end='')
        for i in self.espaco:
            print(f"\n{i['Forma'].tipoClasse()} {i['Numero']}: Colidindo com ", end='')
            colisoes = 0
            for v in self.espaco:
                if i['Numero'] != v['Numero']:
                    if self.verificaDentro(i['Forma'], v['Forma']):
                        print(f"{v['Forma'].tipoClasse()} {v['Numero']} ", end='')
                        colisoes += 1
            if colisoes == 0:
                print('nenhuma outra forma', end = '')

