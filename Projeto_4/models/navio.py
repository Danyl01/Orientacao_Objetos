from enum import Enum
from typing import Union


class NavioTypes(Enum):
    NAVIO_DE_DOIS_BLOCOS = 2
    NAVIO_DE_TRES_BLOCOS = 3
    NAVIO_DE_QUATRO_BLOCOS = 4


class Navio:
    def __init__(
        self,
        tipo_de_navio: Union[
            NavioTypes.NAVIO_DE_DOIS_BLOCOS, NavioTypes.NAVIO_DE_TRES_BLOCOS
        ],
        orientacao
    ) -> None:
        self.tipo = tipo_de_navio
        self.vida = tipo_de_navio.value
        self.orientacao = orientacao

    def remover_vida(self, vida_para_ser_removida):
        self.vida -= vida_para_ser_removida

    def adicionar_vida(self, vida_para_ser_adicionada):
        self.vida += vida_para_ser_adicionada