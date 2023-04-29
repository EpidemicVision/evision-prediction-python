FROM python:3.10-slim-buster

WORKDIR /usr/src/

RUN apt-get update && apt-get -y install nano
COPY evision/requirements.txt requirements.txt
RUN pip install -r requirements.txt
ENV PYTHONPATH "/usr/src:${PYTHONPATH}"
ENV PROJECT_ROOT "/usr/src"

COPY . .

ENTRYPOINT [ "streamlit", "run", "evision/app.py", "--server.port=8501", "--server.address=0.0.0.0"]
