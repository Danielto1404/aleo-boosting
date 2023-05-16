import enum


class LeoTypes(enum.Enum):
    U32 = "u32"
    U64 = "u64"


class LeoStatements(enum.Enum):
    PROGRAM = "program"
    IMPORT = "import"
    TRANSITION = "transition"
    IF = "if"
    ELSE = "else"
    RETURN = "return"


class LeoPunctuation(enum.Enum):
    COMMA = ","
    SEMINCOLON = ";"
    COLON = ":"
    RIGHT_ARROW = "->"
    LEFT_BRACKET = "("
    RIGHT_BRACKET = ")"
    LEFT_SQUARE_BRACKET = "["
    RIGHT_SQUARE_BRACKET = "]"
    LEFT_CURLY_BRACKET = "{"
    RIGHT_CURLY_BRACKET = "}"


class LeoOperators(enum.Enum):
    EQUAL = "="
    GT = ">"
    LT = "<"
    GTE = ">="
    LTE = "<="


SPACE = " "
TAB = SPACE * 2
NL = "\n"

__all__ = [
    "LeoTypes",
    "LeoStatements",
    "LeoPunctuation",
    "LeoOperators",
    "SPACE",
    "TAB",
    "NL",
]
