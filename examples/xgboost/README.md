### This example show how to train Xgboost model on Iris dataset and transpile it to Aleo Smart Contract.


</br>

## Prerequisites
- [Aleo Getting started](https://developer.aleo.org/getting_started)
- [Python3](https://www.python.org/downloads/)
- [XGBoost](https://xgboost.readthedocs.io/en/latest/build.html)
- [Pandas](https://pandas.pydata.org/pandas-docs/stable/getting_started/install.html)
- [SciKit Learn](https://scikit-learn.org/stable/install.html)


## Usage:
1. Train and transpile the Xgboost model, [this](./transpile.ipynb) notebook shows how to do it.
2. Now let's navigate to generated source [code](./iris/src/main.leo)
3. Let's build our Aleo project:
   ```bash
   cd iris
   ```
   and then build the project:
   ```bash 
   leo build

   # Leo Compiled 'main.leo' into Aleo instructions
   # Leo ✅ Built 'iris.aleo' (in "./examples/xgboost/iris/build")
    ```
4. It's time to run our smart-contracts 🚀
Let's, first navigate to the [inputs/iris.in](./iris/inputs/iris.in) file and change input data to following:
    ```[main]
    sepal_length_cm: i16 = 10;
    sepal_width_cm: i16 = 10;
    petal_length_cm: i16 = 10;
    petal_width_cm: i16 = 10`
    ```