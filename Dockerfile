FROM python:3.8
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["python", "train.py", "--bert", "--training", "--batch_size", "16", "--lr", "3e-5", "--n_epochs", "20", "--patience", "7"]