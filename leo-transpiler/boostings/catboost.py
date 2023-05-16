from boostings.core import BoostingTranspiler
from leo import LeoNode


class CatboostTranspiler(BoostingTranspiler):
    def tree2leo(self, tree_idx: int) -> LeoNode:
        pass


__all__ = ["CatboostTranspiler"]
