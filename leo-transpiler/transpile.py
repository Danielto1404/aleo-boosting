import argparse
import os

from boostings import CatboostTranspiler, XgboostTranspiler
from leo_ast.node import tree


def transpile(model: str, model_type: str, output: str):
    pass


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("--model", type=str, required=True,
                        help="Path to model file")
    parser.add_argument("--model-type", type=str, default="xgboost", choices=["xgboost", "catboost"],
                        help="Model type to transpile: (Default: xgboost)")
    parser.add_argument("--output", type=str, default="aleo-smart-contracts",
                        help="Path to output folder for Aleo Smart-Contracts. (Default: aleo-smart-contracts)")

    _args = parser.parse_args()

    # os.makedirs(_args.output, exist_ok=True)

    print(tree.to_code())
