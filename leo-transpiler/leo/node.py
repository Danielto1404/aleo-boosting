import abc
import typing as tp

from leo.syntax import LeoOperators, LeoPunctuation, LeoStatements, LeoTypes


class LeoNode(abc.ABC):
    """
    Abstract class for Leo AST nodes.
    """

    @abc.abstractmethod
    def to_code(self, tabs: int = 0) -> str:
        """
        Convert the Leo AST node to a Leo program.

        :param tabs: Number of tabs to indent the code
        :return: Leo program
        """
        raise NotImplementedError("Abstract method")


class LeoIfElseNode(LeoNode):
    def __init__(self, condition: str, if_node: LeoNode, else_node: LeoNode):
        self.condition = condition
        self.if_node = if_node
        self.else_node = else_node

    def to_code(self, tabs: int = 0) -> str:
        if_code = self.if_node.to_code(tabs + 1)
        else_code = self.else_node.to_code(tabs + 1)
        return "{} {} {} {} {} {} {} {} {} {} {} {} {} {} {} {} {} {}".format(
            LeoPunctuation.TAB.value * tabs,
            LeoStatements.IF.value,
            LeoPunctuation.LEFT_BRACKET.value,
            self.condition,
            LeoPunctuation.RIGHT_BRACKET.value,
            LeoPunctuation.LEFT_CURLY_BRACKET.value,
            LeoPunctuation.NL.value,
            if_code,
            LeoPunctuation.NL.value,
            LeoPunctuation.TAB.value * tabs,
            LeoPunctuation.RIGHT_CURLY_BRACKET.value,
            LeoStatements.ELSE.value,
            LeoPunctuation.LEFT_CURLY_BRACKET.value,
            LeoPunctuation.NL.value,
            else_code,
            LeoPunctuation.NL.value,
            LeoPunctuation.TAB.value * tabs,
            LeoPunctuation.RIGHT_CURLY_BRACKET.value
        )


class LeoReturnNode(LeoNode):
    def __init__(self, value: str):
        self.value = value

    def to_code(self, tabs: int = 0) -> str:
        return "{} {} {}{}".format(
            LeoPunctuation.TAB.value * tabs,
            LeoStatements.RETURN.value,
            self.value,
            LeoPunctuation.SEMINCOLON.value
        )


class LeoTransitionNode(LeoNode):
    def __init__(
            self,
            transition_name: str,
            input_arg_types: tp.List[LeoTypes],
            output_arg_type: LeoTypes,
            inner_node: LeoNode
    ):
        self.transition_name = transition_name
        self.input_arg_types = input_arg_types
        self.output_arg_type = output_arg_type
        self.inner_node = inner_node

    def to_code(self, tabs: int = 0) -> str:
        input_args = [f"x{i}{LeoPunctuation.COLON.value} {t.value}" for i, t in
                      enumerate(self.input_arg_types)]
        input_args = f"{LeoPunctuation.COMMA.value} ".join(input_args)

        inner_code = self.inner_node.to_code(tabs + 1)

        return "{} {} {} {} {} {} {} {} {} {} {} {}".format(
            LeoStatements.TRANSITION.value,
            self.transition_name,
            LeoPunctuation.LEFT_BRACKET.value,
            input_args,
            LeoPunctuation.RIGHT_BRACKET.value,
            LeoPunctuation.RIGHT_ARROW.value,
            self.output_arg_type.value,
            LeoPunctuation.LEFT_CURLY_BRACKET.value,
            LeoPunctuation.NL.value,
            inner_code,
            LeoPunctuation.NL.value,
            LeoPunctuation.RIGHT_CURLY_BRACKET.value
        )


class LeoAssignNode(LeoNode):
    def __init__(self, var_name: str, var_type: LeoTypes, expression: str):
        self.var_name = var_name
        self.var_type = var_type
        self.expression = expression

    def to_code(self, tabs: int = 0) -> str:
        return "{} {} {}{} {} {} {}{}".format(
            LeoPunctuation.TAB.value * tabs,
            LeoStatements.LET.value,
            self.var_name,
            LeoPunctuation.COLON.value,
            self.var_type.value,
            LeoOperators.EQUAL.value,
            self.expression,
            LeoPunctuation.SEMINCOLON.value
        )


class LeoSequentialNode(LeoNode):
    def __init__(self, nodes: tp.List[LeoNode]):
        self.nodes = nodes

    def to_code(self, tabs: int = 0) -> str:
        codes = [node.to_code(tabs) for node in self.nodes]
        code = LeoPunctuation.NL.value.join(codes)
        return code


__all__ = [
    "LeoNode",
    "LeoIfElseNode",
    "LeoReturnNode",
    "LeoTransitionNode",
    "LeoAssignNode",
    "LeoSequentialNode"
]
