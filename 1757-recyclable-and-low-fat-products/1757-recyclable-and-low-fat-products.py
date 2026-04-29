import pandas as pd

def find_products(products: pd.DataFrame) -> pd.DataFrame:
     find_products = products[(products['low_fats'] == 'Y') & (products['recyclable'] == 'Y') ][['product_id']]
     return find_products


     
    