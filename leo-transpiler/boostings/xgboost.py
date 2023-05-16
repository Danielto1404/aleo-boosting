from boostings.core import BoostingTranspiler
from leo import LeoNode


class XgboostTranspiler(BoostingTranspiler):
    def tree2leo(self, tree_idx: int) -> LeoNode:
        pass
