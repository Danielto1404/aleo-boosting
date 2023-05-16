import abc
import typing as tp

from leo import LeoNode


class BoostingTranspiler(abc.ABC):
    def __init__(self, model, quantize_bits: int = 8):
        """
        Abstract class for transpilers of boosting models.

        :param model: Boosting model
        :param quantize_bits: Number of bits to quantize the model to (default: 8)
            Possible values: 8, 16, 32, 64, 128
        """
        self.model = model
        self.quantize_bits = quantize_bits

    @abc.abstractmethod
    def get_leo_ast_nodes(self) -> tp.List[LeoNode]:
        """
        Returns a list of Leo AST nodes for each tree in the boosting model.
        """
        raise NotImplementedError("Abstract method")

    def __repr__(self):
        return f"{self.__class__.__name__}()"


__all__ = ["BoostingTranspiler"]
