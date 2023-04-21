FROM python:3.10

WORKDIR /FinalProject

COPY . .

RUN pip install poetry
RUN poetry config virtualenvs.create false && poetry install

ENTRYPOINT ["python", "__main__.py"]