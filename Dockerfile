FROM python:3.11
WORKDIR /Verba
COPY . /Verba
ARG OPENAI_API_KEY
ARG WEAVIATE_URL_VERBA
ARG WEAVIATE_API_KEY_VERBA
RUN pip install -e '.'
EXPOSE 8000
CMD ["verba", "start","--port","8000","--host","0.0.0.0"]
