import enum


class LeoTypes(enum.Enum):
    U32 = "u32"
    U64 = "u64"


class LeoStatements(enum.Enum):
    PROGRAM = "program"
    IMPORT = "import"
    TRANSITION = "transition"


class LeoPunctuation(enum.Enum):
    COMMA = ","
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


TAB = "\t"
NEWLINE = "\n"

__all__ = [
    "LeoTypes",
    "LeoStatements",
    "LeoPunctuation",
    "LeoOperators",
    "TAB",
    "NEWLINE",
]
