import pickle


class LeoNode:
    pass


class LeoAst:
    def __init__(self, features_in: int, features_out: int):
        """
        :param features_in: Amount of input features
        :param features_out: Amount of output features
        """
        pass

    def to_code(self) -> str:
        """
        Convert the Leo program AST to a Leo program.

        :return: Leo program
        """

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
