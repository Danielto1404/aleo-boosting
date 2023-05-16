import abc

from leo_ast.syntax import (NEWLINE, TAB, LeoOperators, LeoPunctuation,
                            LeoStatements, LeoTypes)


class LeoNode(abc.ABC):
    """
    Abstract class for Leo AST nodes.
    """

    @abc.abstractmethod
    def to_code(self, *args, **kwargs) -> str:
        """
        Convert the Leo AST node to a Leo program.
        """


class LeoIfElseNode(LeoNode):
    def __init__(self, condition: str, if_node: LeoNode, else_node: LeoNode):
        self.condition = condition
        self.if_node = if_node
        self.else_node = else_node

    def to_code(self, *args, **kwargs) -> str:
        """
        Convert the Leo AST node to a Leo program.

        :param args: Additional arguments
        :return: Leo program
        """
        if_code = self.if_node.to_code(*args, **kwargs)
        else_code = self.else_node.to_code(*args, **kwargs)
        return f"""
        {LeoStatements.IF.value} {self.condition} {LeoPunctuation.LEFT_CURLY_BRACKET.value} 
        {TAB}{if_code}
        {LeoPunctuation.RIGHT_CURLY_BRACKET.value} {LeoStatements.ELSE.value} {LeoPunctuation.LEFT_CURLY_BRACKET.value}
        {TAB}{else_code}
        {LeoPunctuation.RIGHT_CURLY_BRACKET.value}
        """


class ReturnNode(LeoNode):
    """
    Return node.
    """

    def __init__(self, value: str):
        self.value = value

    def to_code(self, *args, **kwargs) -> str:
        return f"{LeoStatements.RETURN.value} {self.value}"


tree = LeoIfElseNode("a > b", ReturnNode("a"), ReturnNode("b"))
