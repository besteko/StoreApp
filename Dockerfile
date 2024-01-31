FROM python:3.9

COPY . /app

WORKDIR /app

RUN python -m venv venv
RUN . venv/bin/activate

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT python3 app.py 


