# from models.board import Board
from enum import Enum

class GAME_STAT_STATE(Enum):
    PLAY_STATE = 1
    SETUP_STATE = 2

class Batalha():
    
    def __init__(self):
        self.state = GAME_STAT_STATE.SETUP_STATE    
        #self.my_board = Board(10, 10)
        #self.their_board = Board(10, 10)