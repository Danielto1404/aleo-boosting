import typing as tp

from boostings.core import BoostingTranspiler
from leo import LeoIfElseNode, LeoNode, LeoReturnNode
from quantize import quantize


class XgboostTranspiler(BoostingTranspiler):
    def __init__(self, model, quantize_bits: int = 8):
        super().__init__(model, quantize_bits)

        trees = model.get_booster()
        self.feature_names = trees.feature_names

        self._dfs = [
            trees[i].trees_to_dataframe() for i in range(model.n_estimators)
        ]

    def get_leo_ast_nodes(self) -> tp.List[LeoNode]:
        nodes = [
            self.build_tree(self._dfs[i], self._dfs[i].iloc[0])
            for i in range(self.model.n_estimators)
        ]

        return nodes

    def build_tree(self, df, df_node) -> LeoNode:
        feature_name = df_node["Feature"]
        if feature_name != "Leaf":
            if_node_id = df_node["Yes"]
            else_node_id = df_node["No"]

            if_node = df.iloc[self.node_id_to_idx(if_node_id)]
            else_node = df.iloc[self.node_id_to_idx(else_node_id)]

            value = quantize(df_node["Split"], self.quantize_bits)

            condition = f"{feature_name} < {value}"

            left = self.build_tree(df, if_node)
            right = self.build_tree(df, else_node)
            return LeoIfElseNode(condition, left, right)
        else:
            return LeoReturnNode(df_node["Gain"])

    @staticmethod
    def node_id_to_idx(node_id: str) -> int:
        return int(node_id.split("-")[1])
