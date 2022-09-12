import os

data_path = os.path.join('..', 'data')
os.makedirs(data_path, exist_ok=True)

input_path = os.path.join(data_path, 'input')
os.makedirs(input_path, exist_ok=True)

input_path_tab = os.path.join(input_path, 'tabs')
os.makedirs(input_path_tab, exist_ok=True)
