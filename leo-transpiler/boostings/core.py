import abc
import os
import typing as tp
from pathlib import Path

from leo import LeoNode, LeoTransitionNode
from leo.syntax import LeoStatements, LeoPunctuation
from quantize import get_leo_quantized_type


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
        self.feature_names = None

    @abc.abstractmethod
    def get_leo_ast_nodes(self) -> tp.List[LeoNode]:
        """
        Returns a list of Leo AST nodes for each tree in the boosting model.
        """
        raise NotImplementedError("Abstract method")

    def save_code(self, root: str):
        root = Path(root)
        os.makedirs(root / "trees", exist_ok=True)
        nodes = self.get_leo_ast_nodes()
        for i, node in enumerate(nodes):
            with open(root / "trees" / f"tree_{i}.leo", "w") as f:

                transition = LeoTransitionNode(
                    transition_name=f"evaluate_tree_{i}",
                    input_arg_names=self.feature_names,
                    input_arg_types=[get_leo_quantized_type(self.quantize_bits) for _ in self.feature_names],
                    output_arg_type=get_leo_quantized_type(self.quantize_bits),
                    inner_node=node,
                )

                code = "{} {} {} {} {} {} {}".format(
                    LeoStatements.PROGRAM.value,
                    f"tree_{i}.aleo",
                    LeoPunctuation.LEFT_CURLY_BRACKET.value,
                    LeoPunctuation.NL.value,
                    transition.to_code(tabs=1),
                    LeoPunctuation.NL.value,
                    LeoPunctuation.RIGHT_CURLY_BRACKET.value,
                )
                f.write(code)

    def __repr__(self):
        return f"{self.__class__.__name__}()"


__all__ = ["BoostingTranspiler"]
