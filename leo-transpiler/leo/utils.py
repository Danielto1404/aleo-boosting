from leo.syntax import LeoPunctuation, LeoStatements


def aleo_program(code: str, program_name: str):
    return "{} {} {} {} {} {} {}".format(
        LeoStatements.PROGRAM.value,
        f"{program_name}.aleo",
        LeoPunctuation.LEFT_CURLY_BRACKET.value,
        LeoPunctuation.NL.value,
        code,
        LeoPunctuation.NL.value,
        LeoPunctuation.RIGHT_CURLY_BRACKET.value,
    )


__all__ = [
    "aleo_program"
]
