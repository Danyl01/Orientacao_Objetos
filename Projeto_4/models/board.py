import random
from models.navio import NavioTypes, Navio
from typing import List

class BoardErrors:
    class PositionNotValid(Exception):
        pass

    class BlocoJaDestruido(Exception):
        pass

    class PontoNaoValido(Exception):
        pass

class Board:
    def __init__(self, quantidade_de_linhas, quantidade_de_colunas) -> None:
        self.qt_linhas = quantidade_de_linhas
        self.qt_colunas = quantidade_de_colunas

        self.frota: dict[tuple, Navio] = {}
        self.blocos_destruidos = set()

        self.posicao_navios = []  # Moved to instance variable
        self.numNavios = 7
        self.gerar_Grid()

    def gerar_Grid(self):

        self.grid = [["."] * self.qt_colunas for _ in range(self.qt_linhas)]  # Fixed grid initialization
        numNaviosColocados = 0

        while numNaviosColocados < self.numNavios:
            random_linha = random.randint(0, self.qt_linhas - 1)
            random_col = random.randint(0, self.qt_colunas - 1)
            if self.validar_e_adiconar_navio(random_linha, random_col):
                numNaviosColocados += 1

    def calcular_posicao_quadrado(self, x, y):
        # Calcula a posição do quadrado com base nas coordenadas passadas
        coluna = x - 1
        linha = y - 1

        # Retorna a posição do quadrado no grid
        return coluna, linha

    def renderizar_grid(self, imagem_src, x, y, memoria):
            tamanho_quadrado = 50  # Ajuste conforme necessário
            linha, coluna = self.calcular_posicao_quadrado(x, y)
            print(self.grid)
            posicoes_navios = self.encontrar_ID()
            print(f"as posições do navio são: {posicoes_navios}")
            grid_html = ""
            cont = 10
            for i in range(self.qt_linhas):
                for j in range(self.qt_colunas):
                    self.grid
                    estilo_quadrado = f"grid-row: {i + 1}; grid-column: {j + 1}; width: {tamanho_quadrado}px; height: {tamanho_quadrado}px; border: 2px solid #ccc;"
                    if i == linha and j == coluna:
                        grid_html += f'<div class="grid-item" style="{estilo_quadrado}"><img src="{imagem_src}" alt="Imagem" style="width: 100%; height: 100%;"></div>'
                    elif any(posicao['id'] == cont for posicao in memoria):
                        grid_html += f'<div class="grid-item" style="{estilo_quadrado}"><img src="{imagem_src}" alt="Imagem" style="width: 100%; height: 100%;"></div>'
                    #debug
                    elif any(loc_navio == cont for loc_navio in posicoes_navios):
                        grid_html += f'<div class="grid-item" style="{estilo_quadrado}"><img src="{f"/static/navioimagem.png"}" alt="Imagem" style="width: 100%; height: 100%;"></div>'
                        print(f"Foi encontrado um navio no ID: {cont}")
                    else:
                        grid_html += f'<div class="grid-item" style="{estilo_quadrado}"></div>'
                    cont += 1
            return grid_html

    def validar_e_adiconar_navio(self, linha, coluna):
        if self.grid[linha][coluna] != '.':
            return False
        self.posicao_navios.append([linha, coluna])
        self.grid[linha][coluna] = 'o'
        return True
    
    def encontrar_ID(self):
        guardar = []
        for i, linha in enumerate(self.grid):
            for j, valor in enumerate(linha):
                if valor == 'o':
                    id = (i+1)*10+j
                    guardar.append(id)
        return guardar


