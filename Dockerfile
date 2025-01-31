FROM python:3.10
MAINTAINER Fatemeh Hashemi <f.hashemi91@gmail.com>
WORKDIR /code

COPY . /code/
RUN pip install poetry
RUN poetry config virtualenvs.create false
RUN poetry install
CMD ["poetry", "run", "uvicorn", "payment_service.main:app", "--host", "0.0.0.0", "--port", "8080"]
