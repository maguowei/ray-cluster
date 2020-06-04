FROM maguowei/python
COPY Pipfile* ./
RUN pipenv install --system
