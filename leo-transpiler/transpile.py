import argparse
import os


def transpile(model: str, model_type: str, output: str):
    pass


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("--model", type=str, required=True,
                        help="Path to model file")
    parser.add_argument("--model-type", type=str, required=True, default="xgboost", choices=["xgboost"],
                        help="Model type to transpile")
    parser.add_argument("--output", type=str, required=True,
                        help="Path to output folder for Aleo Smart-Contracts")

    _args = parser.parse_args()

    os.makedirs(_args.output, exist_ok=True)