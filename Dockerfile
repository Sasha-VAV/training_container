FROM nvidia/cuda:11.8.0-cudnn8-runtime-ubuntu22.04

RUN apt-get update && apt-get install -y python3 python3-pip vim

ENV UV_SYSTEM_PYTHON=1

WORKDIR /app
COPY ./requirements.txt ./

RUN pip install uv
RUN uv pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["tail", "-f", "/dev/null"]