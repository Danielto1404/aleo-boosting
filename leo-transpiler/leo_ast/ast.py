import pickle
import typing as tp
from leo_ast.node import LeoNode
from leo_ast.syntax import NEWLINE


class LeoAst:
    def __init__(self, nodes: tp.List[LeoNode]):
        self.nodes = nodes

    def to_code(self) -> str:
        """
        Convert the Leo program AST to a Leo program.

        :return: Leo program
        """
        return NEWLINE.join([node.to_code() for node in self.nodes])

    def save(self, path: str):
        """
        Save the Leo program AST to a file.

        :param path: Path to file
        """
        with open(path, "wb") as f:
            pickle.dump(self, f)

    def save_code(self, path: str):
        """
        Converts the Leo program AST to a Leo program and saves it to a file.

        :param path: Path to file
        """
        code = self.to_code()
        with open(path, "w") as f:
            f.write(code)


__all__ = ["LeoAst"]
