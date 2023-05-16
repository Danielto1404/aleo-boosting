import argparse
import os


def transpile(args: argparse.Namespace):
    pass


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("--model", type=str, required=True,
                        help="Path to model")
    parser.add_argument("--model-type", type=str, required=True, default="xgboost",
                        help="Type of model, supports: [xgboost]")
    parser.add_argument("--output", type=str, required=True,
                        help="Path to output folder for Aleo Smart Contract")

    _args = parser.parse_args()

    os.makedirs(_args.output, exist_ok=True)

