FROM python:3.10-slim

WORKDIR /app

# Install dependencies directly without worrying about OS build tools
RUN pip install --no-cache-dir fastapi uvicorn psycopg2-binary streamlit requests pandas

COPY . /app

EXPOSE 80
EXPOSE 8501