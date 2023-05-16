from leo import LeoNode


class LinearRegressionTranspiler:
    def __init__(self, model):
        self.weights = model.coef_

    def to_code(self) -> LeoNode:
        pass
