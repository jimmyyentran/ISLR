import pandas as pd

feature_dict = {i:label for i,label in zip(
                range(4),
                  ('sepal length in cm',
                  'sepal width in cm',
                  'petal length in cm',
                  'petal width in cm', ))}

df = pd.io.parsers.read_csv('iris_data.csv', header=None, sep=',')

df.columns = [l for i, l in sorted(feature_dict.items())] + ['class label']

df.dropna(how="all", inplace=True)

print df.tail()
