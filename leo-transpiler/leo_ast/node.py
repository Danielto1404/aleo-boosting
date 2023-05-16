import abc
import typing as tp

from leo_ast.syntax import NL, TAB, LeoPunctuation, LeoStatements, LeoTypes


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
        return "{} {} {} {} {} {} {} {} {} {} {} {} {} {} {} {}".format(
            TAB * tabs,
            LeoStatements.IF.value,
            self.condition,
            LeoPunctuation.LEFT_CURLY_BRACKET.value,
            NL,
            if_code,
            NL,
            TAB * tabs,
            LeoPunctuation.RIGHT_CURLY_BRACKET.value,
            LeoStatements.ELSE.value,
            LeoPunctuation.LEFT_CURLY_BRACKET.value,
            NL,
            else_code,
            NL,
            TAB * tabs,
            LeoPunctuation.RIGHT_CURLY_BRACKET.value
        )


class ReturnNode(LeoNode):
    """
    Return node.
    """

    def __init__(self, value: str):
        self.value = value

    def to_code(self, tabs: int = 0) -> str:
        return "{} {} {}".format(TAB * tabs, LeoStatements.RETURN.value, self.value)


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
            NL,
            inner_code,
            NL,
            LeoPunctuation.RIGHT_CURLY_BRACKET.value
        )


n = LeoIfElseNode("a > b", ReturnNode("a"), ReturnNode("b"))

tree = LeoTransitionNode(
    "main",
    [LeoTypes.U32, LeoTypes.U32],
    LeoTypes.U32,
    n
)
