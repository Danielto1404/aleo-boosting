import abc
import os
import typing as tp
from pathlib import Path

from leo_transpiler.leo import (LeoFunctionCall, LeoFunctionDeclarationNode,
                                LeoNode, LeoReturnNode, LeoSequentialNode,
                                LeoSumNode)
from leo_transpiler.leo.syntax import LeoStatements
from leo_transpiler.leo.utils import aleo_program
from leo_transpiler.quantize import get_leo_quantized_type


class BoostingTranspiler(abc.ABC):
    def __init__(
            self,
            model,
            feature_names: tp.List[str],
            n_estimators: int,
            n_classes: tp.Optional[int],
            quantize_bits: int
    ):
        self.model = model
        self.quantize_bits = quantize_bits
        self.feature_names = feature_names
        self.n_classes = n_classes
        self.n_estimators = n_estimators
        self.is_regression = n_classes is None

    @abc.abstractmethod
    def get_leo_ast_nodes(self) -> tp.List[LeoNode]:
        """
        Returns a list of Leo AST nodes for each tree in the boosting model.
        """
        raise NotImplementedError("Abstract method")

    def save_code(self, root: str, program_name: str = "main"):
        """
        Converts the Leo program AST to a Leo program and saves it to a file.

        :param root: Path to directory ./src
        :param program_name: Name of the Leo program (default: main)
        """
        root = Path(root)
        os.makedirs(root, exist_ok=True)
        nodes = self.get_leo_ast_nodes()

        functions = []
        input_types = [get_leo_quantized_type(self.quantize_bits) for _ in self.feature_names]
        output_type = get_leo_quantized_type(self.quantize_bits)

        for i, node in enumerate(nodes):
            func = LeoFunctionDeclarationNode(
                func_type=LeoStatements.FUNCTION.value,
                func_name=f"tree_{i}" if self.is_regression else f"class_{i % self.n_classes}_tree_{i // self.n_classes}",
                input_arg_names=self.feature_names,
                input_arg_types=input_types,
                output_arg_type=output_type,
                body=node,
            )
            functions.append(func)

        calls = [
            LeoFunctionCall(
                var_name=f"pred_{i}" if self.is_regression else f"class_{i % self.n_classes}_pred_{i // self.n_classes}",
                var_type=output_type,
                func_name=f"tree_{i}" if self.is_regression else f"class_{i % self.n_classes}_tree_{i // self.n_classes}",
                func_args=self.feature_names
            )
            for i in range(len(nodes))
        ]

        if self.is_regression:
            returns = [
                LeoSumNode("value", output_type, args=[f"pred_{i}" for i in range(len(nodes))]),
                LeoReturnNode("value")
            ]
        else:
            returns = [
                LeoSumNode(
                    var_name=f"class_{c}_proba",
                    var_type=output_type,
                    args=[f"class_{c}_pred_{i}" for i in range(self.n_estimators)]
                )
                for c in range(self.n_classes)
            ]

        main_transition = LeoFunctionDeclarationNode(
            func_type=LeoStatements.TRANSITION.value,
            func_name=LeoStatements.MAIN.value,
            input_arg_names=self.feature_names,
            input_arg_types=input_types,
            output_arg_type=output_type,
            body=LeoSequentialNode(calls + returns)
        )

        code = LeoSequentialNode(functions + [main_transition], lines=2).to_code(tabs=1)
        with open(root / "main.leo", "w") as f:
            f.write(aleo_program(code, program_name))

    def __repr__(self):
        return f"{self.__class__.__name__}()"


__all__ = [
    "BoostingTranspiler"
]
