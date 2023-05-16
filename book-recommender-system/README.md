## In this project we will show how to use our framework for building privacy-preserving recommender system.

For demonstration purposes we will use [Book Recommenation Dataset](https://www.kaggle.com/datasets/arashnic/book-recommendation-dataset) from Kaggle.

We don't to create fancy recommender system in order to show how to use our framework, so we will use XGBoost model for classification built on top of 3 features: `user_age`, `user_location` and `book_publication_year`.

Following steps are required to build privacy-preserving recommender system:
1. [Data preprocessing and model training](#data-preprocessing)
2. [Creating Aleo Project](#creating-aleo-project)
3. [Model transplilation to Aleo Smart Contracts](#model-transpilation)
4. [Smart contract execution](#smart-contract-execution)


## 1. Data preprocessing and model training <a name="data-preprocessing"></a>
a. Download dataset from [here](https://www.kaggle.com/arashnic/book-recommendation-dataset) and put it into `data` folder.

Now let's open [this](./notebooks/train.ipynb) notebook and follow instructions there.

## 2. Creating Aleo Project <a name="creating-aleo-project"></a>

To create new Aleo project run following command:

```bash
leo new aleo_book_recommender
```

## 3. Model transpilation to Aleo Smart Contracts <a name="model-transpilation"></a>

Instructions for model transpilation can be found [here](./notebooks/convert.ipynb)


## 4. Smart contract execution <a name="smart-contract-execution"></a>

Due to unstable testnet we will use local development environment for now.

1. Build Aleo Smart Contracts

```bash
leo build
```

2. Create mock data for testing

Let's pick a few random users and books from our dataset and create mock data for them.
We've prepared this data for you, so you can find it [here](./artifacts/test.csv).

We apply quantization to our model, so we need to quantize our data as well. Our model uses 32-bit floating point numbers, so we need to quantize our data to 32-bit integers. [This notebook](./notebooks/quantisation.ipynb) shows how to do it.

Here is Aleo inputs from test dataset with positive target (user liked the book):

```bash
[main]
book_publication_year: i32 = 32571i32;
user_age: i32 = 32767i32;
user_in_canada: i32 = 32767i32;
user_in_italy: i32 = 0i32;
user_in_spain: i32 = 0i32;
user_in_united_kingdom: i32 = 0i32;
user_in_usa: i32 = 0i32;
```

Here is Aleo inputs from test dataset with negative target (user didn't like the book):

```bash
[main]
book_publication_year: i32 = 32539i32;
user_age: i32 = 4387i32;
user_in_canada: i32 = 0i32;
user_in_italy: i32 = 0i32;
user_in_spain: i32 = 0i32;
user_in_united_kingdom: i32 = 0i32;
user_in_usa: i32 = 32767i32;
```


Let's grab the first one and paste in [aleo_book_recommender.in](./aleo_book_recommender/inputs/aleo_book_recommender.in) file.

Run the following command to compile and execute smart contract:

```bash
leo run
# 5144i32
```
Okay we've got positive result, so our model works as expected.


Let's try the second one:

```bash
leo run
# -5290i32
```

Okay we've got negative result, so our model works as expected.

## Conclusion

This is how you can build privacy-preserving recommender system using Aleo framework.
Score of the model is not very high, but you can improve it by adding more features and using more complex model.

## References
- [Aleo](https://aleo.org/)
- [Aleo Documentation](https://docs.aleo.org/)
- [Python](https://www.python.org/)