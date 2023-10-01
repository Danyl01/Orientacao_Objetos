from my_libraries.Formas_Geometricas import Ponto, Circulo, Linha

class Plano2D():
    def __init__(self):
        self.espaco = []
    
    def InserirForma(self, forma, numeracao):
        formasGeometricas = {}
        formasGeometricas['Forma'] = forma
        formasGeometricas['Numero'] = numeracao
        self.espaco.append(formasGeometricas.copy())

    

    def verificaDentro(self, forma1, forma2): #Verificar se um forma está colidindo com outra
        if forma1.iDClasse() + forma2.iDClasse() == 2: #Verificando se dois pontos estão ocupando o mesmo espaço
            if forma1.distPontos(forma2._xo, forma2._yo) == 0:
                return True #Estão colidindo
            else:
                return False #Nao estão colidindo
        if forma1.iDClasse() + forma2.iDClasse() == 3: #Verificando se um ponto e um círculo estão ocupando o mesmo espaço
            if forma1.tipoClasse() == 'Ponto': #Caso em que a primeira forma inserida é um ponto
                return(forma2.temPonto(forma1))
            elif forma1.tipoClasse() == 'Círculo':
                return(forma1.temPonto(forma2))
        elif forma1.iDClasse() + forma2.iDClasse() == 4: #Verificando se dois circulos estão ocupando o mesmo espaço
            if forma1.distPontos(forma2._xo, forma2._yo) < forma1._r + forma2._r:
                return True #Estão colidindo
            else:
                return False #Não estão colidindo
        if forma1.iDClasse() + forma2.iDClasse() == 6: #Verificando se um ponto pertence a reta
            if forma1.tipoClasse() == 'Ponto': #Caso em que a primeira forma inserida é um ponto
                return forma2.temPonto(forma1)
            else: #Caso em que a primeira forma inserida é uma linha
                return forma1.temPonto(forma2)
        if forma1.iDClasse() + forma2.iDClasse() == 10: #Verificando se uma linha está interceptando outra
            return forma1.interceptaLinha(forma2)
        if forma1.iDClasse() + forma2.iDClasse() == 7: ##Verificando se uma linha está interceptando um círculo
            if forma1.tipoClasse() == 'Círculo': #Caso em que a primeira forma inserida é um círculo
                return forma2.interceptaCirculo(forma1)
            else: #Caso em que a primeira forma inserida é uma linha
                return forma1.interceptaCirculo(forma2)

            
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


    def informacoes(self):
        print(f"\n{'-'*15} {'Informações formas'.center(20)} {'-'*15}")
        for i in self.espaco:
            print(f"{'-'*15} {i['Forma'].tipoClasse().center(20)} {i['Numero']} {'-'*15}")
            i['Forma'].infoForma()
        

