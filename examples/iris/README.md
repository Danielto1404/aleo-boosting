### This example show how to train Xgboost model on Iris dataset and transpile it to Aleo Smart Contract.

Iris - is an classic dataset for classification. It contains 3 classes of 50 instances each, where each class refers to a type of iris plant. One class is linearly separable from the other 2; the latter are NOT linearly separable from each other.

</br>

## Prerequisites
Core dependencies:
- [Aleo Getting started](https://developer.aleo.org/getting_started)
- [Python3](https://www.python.org/downloads/)
- [Jupyter Notebook](https://jupyter.org/install)

Library dependencies:
- [XGBoost](https://xgboost.readthedocs.io/en/latest/build.html)
- [Pandas](https://pandas.pydata.org/pandas-docs/stable/getting_started/install.html)
- [SciKit Learn](https://scikit-learn.org/stable/install.html)

## Usage:
1. Train and transpile the Xgboost model, [this](./train.ipynb) notebook shows how to do it.
2. Now let's navigate to generated source [code](./contracts/src/main.leo)
3. Let's build our Aleo project:
   ```bash
   cd iris
   ```
   and then build the project:
   ```bash 
   leo build

   # Leo Compiled 'main.leo' into Aleo instructions
   # Leo ✅ Built 'contracts.aleo' (in "./examples/xgboost/contracts/build")
    ```
4. It's time to run our smart-contracts 🚀
    We've used quantization_bits=32, so we need to change input data to match it. Simplest way to do it is to use our function for quantization
    ```python
    from leo_transpiler.quatize import quantize
    import pandas as pd

    df = pd.read_csv("./test.csv")

    	sepal_length_cm	sepal_width_cm	petal_length_cm	petal_width_cm	target
    >>> 0	0.666667 	    0.541667	    0.796610	    1.000000    	2
    >>> 1	0.611111	    0.416667	    0.762712	    0.708333	    2
    >>> 2	0.027778	    0.500000	    0.050847	    0.041667	    0
    >>> 3	0.555556	    0.125000	    0.576271	    0.500000	    1
    >>> 4	0.083333	    0.583333	    0.067797	    0.083333	    0

    features = [c for c in df.columns if c != "target"]
    df[features] = df[features].applymap(lambda x: quantize(x, 32))

    >>> 	sepal_length_cm	sepal_width_cm	petal_length_cm	petal_width_cm	target
    >>> 0	15473i32	    19114i32	    19438i32	    20480i32    	1
    >>> 1	6371i32	        16384i32    	1110i32	        1365i32	        0
    >>> 2	8192i32	        19114i32	    2221i32     	1365i32	        0
    >>> 3	19114i32	    16384i32	    23881i32	    30037i32    	2
    >>> 4	23665i32	    15018i32	    22770i32	    30037i32	    2
    ```

    Let's change input data in [inputs/contracts.in](./contracts/inputs/contracts.in) file to match our quantization:
    Simply replace all floats with integers and add `i32` at the end of each number, and expect that our model will return probabilities for each class correctly.
    ```bash
    // The program input for contracts/src/main.leo
    [main]
    sepal_length_cm: i32 = 19114i32;
    sepal_width_cm: i32 = 16384i32;
    petal_length_cm: i32 = 23881i32;
    petal_width_cm: i32 = 30037i32;
    ```
5. Okay, we done now let's execute smart-contract
    ```bash
    leo run

    # • {
    # class_0_proba: -35374i32,
    # class_1_proba: -33195i32,
    # class_2_proba: 48609i32
    # } 
    ```

    Our model gives us scores for each class, so we need to convert them to probabilities. We can do it with softmax function:
    ```python
    import numpy as np
    probas = [np.exp(x) for x in [-35374, -33195, 48609]]
    probas = [x / sum(probas) for x in probas]
    print(probas)

    >>> [0.0, 0.0, 1.0]
    ```

    We've classified our input data as class_2 with 100% probability, which is correct.
