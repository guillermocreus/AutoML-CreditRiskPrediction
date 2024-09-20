# Base Image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the pyproject.toml and poetry.lock files
COPY pyproject.toml poetry.lock ./

# Install Poetry
RUN pip install poetry

# Install dependencies
RUN poetry install --no-root

# Copy the entire app directory
COPY . .

# Expose the model port
EXPOSE 5000

# Command to run the FastAPI server
CMD ["uvicorn", "src.deploy_model:app", "--host", "0.0.0.0", "--port", "5000"]
