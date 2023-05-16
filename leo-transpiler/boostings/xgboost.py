from boostings.core import BoostingTranspiler
from leo_ast import LeoNode, LeoIfElseNode, ReturnNode
from pandas import DataFrame
from xgboost import XGBRegressor


class XgboostTranspiler(BoostingTranspiler):
    def tree2leo(self, tree: XGBRegressor) -> LeoNode:
        self.tree = tree
        
        df = tree.get_booster().trees_to_dataframe()
        
        root = df.iloc[0]
        
        tree = self.build_subtree(root)
        
        return tree
        
    def build_subtree(self, df_node) -> LeoIfElseNode:     
        if df_node['Feature'] != 'Leaf':
            if_node_id = df_node['Yes']
            else_node_id = df_node['No']

            if_node = self.tree.iloc[self.node_id_to_idx(if_node_id)]
            else_node = self.tree.iloc[self.node_id_to_idx(else_node_id)]

            tmp += f'if x[{df_node["Feature"]}] <= {df_node["Split"]}:\n'
            self.build_subtree(if_node)
            tmp += f'else:\n'
            self.build_subtree(else_node)
        else:
            tmp += f'return {df_node["Gain"]}\n'     
               
        root = LeoIfElseNode("a > b", ReturnNode("a"), ReturnNode("b"))

    @staticmethod
    def node_id_to_idx(node_id: str) -> int:
        return int(node_id.split('-')[1])