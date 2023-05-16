# Aleo Boosting is a transpiler for python compatible boosting models to Aleo smart contracts.


### Privacy preserving ML using Boosting models and Aleo smart contracts.

1. Read quick [documentation](./leo-transpiler-python/README.md)
2. See some examples in [examples](./examples) folder

<br/>

___

### _Why boosting models?_
Boostings models are one of the most popular ML models, they are widely used in many areas, such as:
* Recommendation systems
* Fraud detection

Boosting models are also very easy to use, they are usually implemented in many ML libraries, such as:
* [XGBoost](https://xgboost.readthedocs.io/en/latest/)
* [Catboost](https://catboost.ai/)
* [LightGBM](https://lightgbm.readthedocs.io/en/latest/)

For now, we support only [XGBoost](./leo-transpiler-python/leo_transpiler/boostings/xgboost.py), but we are working on adding support for other boosting models. Read more about [supported models](./leo-transpiler-python/README.md#supported-models)

___

### _Demo: Privacy preserving recommendation system_
Due to privacy preserving nature of Aleo smart contracts, we can build recommendation system without revealing user's data to the server. Many problems can be solved using this approach, for example, we can build a recommendation system for a dating app, where users can find their perfect match without revealing their personal data to the server.

For demonstration purposes we will use [Book Recommenation Dataset](https://www.kaggle.com/datasets/arashnic/book-recommendation-dataset) from Kaggle.

You can follow step-by-step example from [this](./book-recommender-system/) instruction

___

### _How it works?_
1. You shoold train XGBoost model.
2. Transpile trained XGBoost model to Aleo smart contract using [leo-transpiler-python](./leo-transpiler-python/leo_transpiler/boostings/xgboost.py)
3. Deploy transpiled Aleo smart contract to Aleo blockchain
4. Predict user's book preferences using deployed Aleo smart contract
5. Enjoy privacy preserving recommendation system 🚀 :)