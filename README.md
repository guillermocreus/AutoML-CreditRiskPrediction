# AutoML-CreditRiskPrediction

This project implements an automated machine learning (AutoML) pipeline for **credit risk assessment** using MLOps principles. It covers every step from data processing to deployment in a cloud environment, ensuring that the entire workflow is automated, scalable, and easily reproducible.

## Table of Contents

- [AutoML-CreditRiskPrediction](#automl-creditriskprediction)
  - [Table of Contents](#table-of-contents)
  - [Project Overview](#project-overview)
  - [Pipeline Architecture](#pipeline-architecture)
  - [Technologies Used](#technologies-used)
  - [Setup Instructions](#setup-instructions)
    - [1. Clone the Repository](#1-clone-the-repository)

---

## Project Overview

This project aims to predict whether a borrower will default on a loan using historical credit data. The pipeline is built with MLOps practices to automate the entire process, from ingestion of raw data to deploying and monitoring the model in production.

**Key Features:**

- Automated data validation and feature engineering
- Experiment tracking and versioning with MLflow
- Model training with multiple classification algorithms (Logistic Regression, XGBoost, LightGBM)
- Model deployment with A/B testing capabilities
- Real-time monitoring for data drift and model performance
- Cloud deployment on AWS

---

## Pipeline Architecture

The AutoML pipeline consists of the following steps:

1. **Data Ingestion**: Data is ingested from local files or cloud storage (S3, GCS) and loaded into the pipeline.
2. **Data Validation**: Data quality is validated using rules set by **Great Expectations**.
3. **Feature Engineering**: New features are derived, and feature scaling is applied. This is saved as part of a `scikit-learn` pipeline.
4. **Model Training**: Multiple models are trained and evaluated using cross-validation. The best models are logged in **MLflow**.
5. **Model Serving**: The best-performing model is deployed using a REST API with **Flask** or **FastAPI**. Docker is used for containerization.
6. **A/B Testing**: Multiple models are deployed in parallel, and traffic is split between them for comparison.
7. **Monitoring**: Data drift and model performance are monitored using **Prometheus** and **Grafana**.

---

## Technologies Used

- **Python**: Core language for development
- **scikit-learn**: Model training and evaluation
- **XGBoost**, **LightGBM**: Additional ML models
- **Pandas**, **NumPy**: Data manipulation and preprocessing
- **MLflow**: Experiment tracking and model versioning
- **FastAPI**: For serving the models
- **Docker**: Containerization for model deployment
- **AWS**: Cloud platforms for deployment
- **Terraform**: Infrastructure as Code for AWS
- **Grafana**: For monitoring and alerting
- **Great Expectations**: Data validation

---

## Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/guillermocreus/AutoML-CreditRiskPrediction.git
cd AutoML-CreditRiskPrediction
```
