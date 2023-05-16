from boostings.core import BoostingTranspiler
from leo import LeoNode


class CatboostTranspiler(BoostingTranspiler):
    def get_leo_ast_nodes(self, tree_idx: int) -> LeoNode:
        pass


__all__ = ["CatboostTranspiler"]
