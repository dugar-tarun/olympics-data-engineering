# Tokyo Olympics - Data Engineering Project
A simple data engineering project for olympic data analysis on the azure stack.

- [Tokyo Olympics - Data Engineering Project](#tokyo-olympics---data-engineering-project)
  - [Data Source](#data-source)
  - [Architecture](#architecture)
  - [Prerequisites](#prerequisites)
  - [Next Steps](#next-steps)

## [Data Source](https://www.kaggle.com/datasets/arjunprasadsarkhel/2021-olympics-in-tokyo)

The dataset contains details of 11_000 athletes who had participated in the Tokyo Olympics. (Link attached to header)

It consists of the following files:
  - Athletes
  - Coaches
  - EntriesGender
  - Medals
  - Teams

## Architecture

![High Level Architecture](<images/architecture.png>)

## Prerequisites
- Azure Account with the following resources
  - Azure Storage Account - Data layer
  - Azure Data Factory - Orchestrator
  - Azure Databricks - Spark Engine for data processing
  - Azure Synapse - Data Analysis and Dashboards

- Deploy the code in azure_data_factory/ to run ingestion pipelines.
- Import the notebook in Azure Databricks and execute it to populate the processed data layer.
- Use synapse to create views for the dashboard using SQL script in sql/

## Next Steps
- Create CI/CD pipelines to package source code as a wheel and deploy it on the databricks cluster.
- Create pipelines to deploy azure resources using IaaC.
- Optimize ADF pipelines by using parameterization, parallelism and create schedules to extract data at regular intervals.