from boostings.core import BoostingTranspiler
from leo_ast import LeoAst


class CatboostTranspiler(BoostingTranspiler):
    def tree2leo(self, tree_idx: int) -> LeoAst:
        pass


__all__ = ["CatboostTranspiler"]
