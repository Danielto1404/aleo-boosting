from leo.syntax import LeoTypes


def float_to_int8(x: float) -> str:
    quantized = int(x * 2 ** 7)
    return f"{quantized}{LeoTypes.I8.value}"


def float_to_int16(x: float) -> str:
    quantized = int(x * 2 ** 15)
    return f"{quantized}{LeoTypes.I16.value}"


def float_to_int32(x: float) -> str:
    quantized = int(x * 2 ** 31)
    return f"{quantized}{LeoTypes.I32.value}"


def float_to_int64(x: float) -> str:
    quantized = int(x * 2 ** 63)
    return f"{quantized}{LeoTypes.I64.value}"


def float_to_int128(x: float) -> str:
    quantized = int(x * 2 ** 127)
    return f"{quantized}{LeoTypes.I128.value}"


def quantize(x: float, bits: int) -> str:
    assert bits in [8, 16, 32, 64, 128]

    if bits == 8:
        return float_to_int8(x)
    elif bits == 16:
        return float_to_int16(x)
    elif bits == 32:
        return float_to_int32(x)
    elif bits == 64:
        return float_to_int64(x)
    elif bits == 128:
        return float_to_int128(x)


__all__ = [
    "quantize"
]
