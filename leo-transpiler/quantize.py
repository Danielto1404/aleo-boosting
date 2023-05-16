from leo.syntax import LeoTypes


def get_leo_quantized_type(bits: int) -> LeoTypes:
    assert bits in [8, 16, 32, 64, 128], "bits must be one of 8, 16, 32, 64, 128"

    if bits == 8:
        return LeoTypes.I8
    elif bits == 16:
        return LeoTypes.I16
    elif bits == 32:
        return LeoTypes.I32
    elif bits == 64:
        return LeoTypes.I64
    elif bits == 128:
        return LeoTypes.I128


def quantize(x: float, bits: int) -> str:
    assert bits in [8, 16, 32, 64, 128], "bits must be one of 8, 16, 32, 64, 128"

    x = max(min(x, 1), -1)
    value = int(x * (1 << (bits - 1)))

    if x == 1:
        value -= 1

    leo_type = get_leo_quantized_type(bits).value
    return f"{value}{leo_type}"


__all__ = [
    "quantize",
    "get_leo_quantized_type"
]
