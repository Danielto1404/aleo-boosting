import abc

from leo_ast import LeoAst


class BoostingTranspiler(abc.ABC):

    @abc.abstractmethod
    def tree2leo(self, tree_idx: int) -> LeoAst:
        pass

    def __repr__(self):
        return f"{self.__class__.__name__}()"


__all__ = ["BoostingTranspiler"]
