FROM quay.io/jupyter/scipy-notebook:2024-01-15
RUN pip install scikit-datasets yfinance tensorflow keras scipy
RUN pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu