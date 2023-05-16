from boostings.core import BoostingTranspiler
from leo import LeoNode, LeoIfElseNode, LeoReturnNode


class XgboostTranspiler(BoostingTranspiler):
    def tree2leo(self, tree) -> LeoNode:
        self.tree = tree
        df = tree.get_booster().trees_to_dataframe()
        root = df.iloc[0]
        tree = self.build_subtree(root)
        return tree

    def build_subtree(self, df_node) -> LeoNode:
        if df_node['Feature'] != 'Leaf':
            if_node_id = df_node['Yes']
            else_node_id = df_node['No']

            if_node = self.tree.iloc[self.node_id_to_idx(if_node_id)]
            else_node = self.tree.iloc[self.node_id_to_idx(else_node_id)]

            condition = f'x[{df_node["Feature"]}] <= {df_node["Split"]}'
            left = self.build_subtree(if_node)
            right = self.build_subtree(else_node)
            return LeoIfElseNode(condition, left, right)
        else:
            return LeoReturnNode(df_node['Gain'])

    @staticmethod
    def node_id_to_idx(node_id: str) -> int:
        return int(node_id.split("-")[1])
