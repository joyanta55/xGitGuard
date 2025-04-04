# syntax=docker/dockerfile:1
FROM python:3.8-slim

WORKDIR /app
COPY . /app

# Create a virtual environment and install dependencies into it
RUN python3 -m venv /venv
RUN /venv/bin/pip install --no-cache-dir -r requirements.txt

# Ensure the Python version is correct (optional)
RUN /venv/bin/python --version

# Set the virtual environment's Python as the default
ENV PATH="/venv/bin:$PATH"
ENV GITHUB_TOKEN="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"

# # Run the Python application using the virtual environment
CMD ["python3", "xgitguard/github-public/public_key_detections.py"]