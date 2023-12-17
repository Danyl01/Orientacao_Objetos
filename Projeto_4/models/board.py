from navio import NavioTypes, Navio
from typing import Union, Literal

class BoardErros():
    class PositionNotValid(Exception):
        ...
    class BlocoJaDestruido(Exception):
        ...
    class PontoNaoValido(Exception):
        ...

class Board:
    def __init__(self, quantidade_de_linhas, quantidade_de_colunas) -> None:
        self.qt_linhas = quantidade_de_linhas
        self.qt_colunas = quantidade_de_colunas

        self.frota: dict[tuple, Navio] = {}

        self.blocos_destruidos = (
            set()
        )  #! Set para salvar posições de blocos destruidos pelo inimigo

    def _ponto_valido_em_relacao_a_board(self, posicao_x, posicao_y):
        if posicao_x < 0 or posicao_x > self.qt_linhas - 1:
            return False
        elif posicao_y < 0 or posicao_y > self.qt_colunas - 1:
            return False
        return True

    def _gerar_posicoes_dos_navios(self, posicao_x, posicao_y, tipo_de_navio: Union[
            NavioTypes.NAVIO_DE_DOIS_BLOCOS, NavioTypes.NAVIO_DE_TRES_BLOCOS
        ], orientacao: Literal[Literal["CIMA"], Literal["BAIXO"], Literal["ESQ"], Literal["DIR"]]):
        result_pos = set([(posicao_x, posicao_y)])
        if orientacao == "CIMA":
            for x in range(1, tipo_de_navio.value):
                result_pos.add((posicao_x - x, posicao_y))
        elif orientacao == "BAIXO":
            for x in range(1, tipo_de_navio.value):
                result_pos.add((posicao_x + x, posicao_y))
        elif orientacao == "ESQ":
            for y in range(1, tipo_de_navio.value):
                result_pos.add((posicao_x, posicao_y - y))
        elif orientacao == "DIR":
            for y in range(1, tipo_de_navio.value):
                result_pos.add((posicao_x, posicao_y + y))
        return tuple(result_pos)

    def adicionar_navio(
        self,
        tipo_de_navio: Union[
            NavioTypes.NAVIO_DE_DOIS_BLOCOS, NavioTypes.NAVIO_DE_TRES_BLOCOS
        ],
        orientacao: Literal[Literal["CIMA"], Literal["BAIXO"], Literal["ESQ"], Literal["DIR"]],
        pos_x,
        pos_y
    ):
        posicao = self._gerar_posicoes_dos_navios(pos_x, pos_y, tipo_de_navio, orientacao)
        if all([self._ponto_valido_em_relacao_a_board(x, y) for x, y in posicao]):
            self.frota[posicao] = Navio(tipo_de_navio, orientacao)
        else:
            raise BoardErros.PositionNotValid

    def get_vida_do_barco(self, posicao):
        return self.frota[posicao].vida

    def destruir_bloco(self, pos_x, pos_y, dano_no_bloco=1) -> bool:
        posicao_set = set([(pos_x, pos_y)])
        if not self._ponto_valido_em_relacao_a_board(pos_x, pos_y):
            raise BoardErros.PontoNaoValido

        if posicao_set.issubset(self.blocos_destruidos): # O bloco ja foi destruido
            raise BoardErros.BlocoJaDestruido

        self.blocos_destruidos.add((pos_x, pos_y))
        for posicoes in self.frota.keys():
            if posicao_set.issubset(posicoes):
                self.frota.get(posicoes).remover_vida(dano_no_bloco)
                return True
        return False
