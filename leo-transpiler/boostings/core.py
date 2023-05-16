import abc

from leo import LeoNode


class BoostingTranspiler(abc.ABC):

    @abc.abstractmethod
    def tree2leo(self, tree_idx: int) -> LeoNode:
        pass

    def __repr__(self):
        return f"{self.__class__.__name__}()"


__all__ = ["BoostingTranspiler"]
