### Leo Transpiler Python is a transpiler that converts Python code to Aleo Smart Contracts.

<br/>

### Usage:
1. Import Xgboost transpiler
```python
from leo_transpiler.boostings import XgboostTranspiler

transpiler = XgboostTranspiler(model, quantize_bits=64)
```

By default we use 64 bits for quantization, but you can change it to 128, 32 bits or 16 bits.

Also we automatically detect if you Xgboot model is a classifier or regressor. And we use different transpilers for each case.

For _XgboostClassifier_ our framework will create function that returns prediction for each tree and then we will sum all predictions and return final prediction. Also we will return probabilities for each class using `Probas` structure which is defined in generated code.

For _XgboostRegressor_ our framework will create function that returns prediction for each tree and then we will sum all predictions and return final prediction.
___

2. Save Aleo Smart Contract
```python
path = "PATH_TO_SRC_ALEO_PROJECT"
transpiler.save_code(root=path, program_name="iris")
```

3. View part of generated code:
```bash
cat [path]/main.leo
```

```bash
program iris.aleo { 
     struct Probas { class_0_proba: i128, class_1_proba: i128, class_2_proba: i128 }

    function class_0_tree_0 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 2266760870222161408i128 ) { 
            return 3912589863452533760i128; 
        } else { 
            return -2020486755692502528i128; 
        } 
    }
    
    ...

    transition main ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> Probas { 
        let class_0_pred_0: i128 = class_0_tree_0(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_1_pred_0: i128 = class_1_tree_0(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_2_pred_0: i128 = class_2_tree_0(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_0_pred_1: i128 = class_0_tree_1(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_1_pred_1: i128 = class_1_tree_1(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_2_pred_1: i128 = class_2_tree_1(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_0_pred_2: i128 = class_0_tree_2(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_1_pred_2: i128 = class_1_tree_2(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_2_pred_2: i128 = class_2_tree_2(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_0_pred_3: i128 = class_0_tree_3(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_1_pred_3: i128 = class_1_tree_3(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_2_pred_3: i128 = class_2_tree_3(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_0_pred_4: i128 = class_0_tree_4(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_1_pred_4: i128 = class_1_tree_4(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_2_pred_4: i128 = class_2_tree_4(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_0_pred_5: i128 = class_0_tree_5(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_1_pred_5: i128 = class_1_tree_5(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_2_pred_5: i128 = class_2_tree_5(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_0_proba: i128 = class_0_pred_0 + class_0_pred_1 + class_0_pred_2 + class_0_pred_3 + class_0_pred_4 + class_0_pred_5;
        let class_1_proba: i128 = class_1_pred_0 + class_1_pred_1 + class_1_pred_2 + class_1_pred_3 + class_1_pred_4 + class_1_pred_5;
        let class_2_proba: i128 = class_2_pred_0 + class_2_pred_1 + class_2_pred_2 + class_2_pred_3 + class_2_pred_4 + class_2_pred_5;
        return Probas { class_0_proba: class_0_proba, class_1_proba: class_1_proba, class_2_proba: class_2_proba }; 
    } 
```

You can see `Probas` structure above that's becase we have 3 classes in our dataset. You can also see `class_0_proba`, `class_1_proba`, `class_2_proba` variables, which are probabilities of each class. You can use them in your service later on.

___

### Supported models:
- [XGBoost](./leo-transpiler-python/leo_transpiler/boostings/xgboost.py)

### In progress:
- [Catboost](./leo-transpiler-python/leo_transpiler/boostings/catboost.py)
- [LightGBM](./leo-transpiler-python/leo_transpiler/boostings/lightgbm.py)