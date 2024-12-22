# Gans E-Scooter Data Pipeline Project
Building a scalable data pipeline for predicting e-scooter demand by integrating web scraping, APIs, MySQL, and Google Cloud services. This repository includes structured notebooks, scripts, and documentation for replicating and learning from the project.

## Summary
This repository contains notebooks and resources for a data pipeline project built for **Gans**, a startup specializing in e-scooter-sharing systems. The project aims to optimize scooter distribution by predicting movement patterns using demographic, weather, and flight data. It consists of two phases: building a local data pipeline and migrating it to the cloud for real-time automation.

## Languages and Libraries Used
- **Languages**: Python, SQL
- **Libraries**: 
  - **Data Collection**: BeautifulSoup, Requests
  - **Data Transformation and Storage**: Pandas, SQLAlchemy
  - **API Integration**: OpenWeather API, RapidAPI (AeroDataBox)
  - **Cloud Computing**: Google Cloud Platform (Cloud SQL, Cloud Functions, Cloud Scheduler)

## Key Learning
- Leveraging **web scraping** and **APIs** to gather diverse datasets, including demographic information and real-time weather and flight data.
- Designing structured databases in MySQL and using Python libraries to automate data storage and retrieval.
- Migrating a local data pipeline to the cloud using Google Cloud Platform (GCP) services for scalability and automation.
- Integrating serverless cloud functions and schedulers for real-time updates.

## Challenges Overcame
- **Web Scraping Complexity**: Understanding HTML structures and dynamically extracting consistent data from multiple Wikipedia pages.
- **API Integration**: Navigating multiple APIs and managing rate limits while ensuring accurate and timely data retrieval.
- **Cloud Migration**: Adapting locally developed functions to meet cloud environment requirements, including setting up Google Cloud Functions and configuring connections with Cloud SQL. A significant challenge was addressing **data redundancy**, ensuring that duplicate data entries were avoided while maintaining data integrity. This optimization reduced unnecessary storage usage and enhanced database performance.

## Additional Reflections
This project provided valuable insights into the complexities of building end-to-end data pipelines. The experience of transforming raw data into actionable insights and automating the process emphasized the importance of planning and iterative development. Additionally, the integration of cloud computing highlighted the potential of serverless architectures in scaling data-driven solutions.

## Repository Structure
- **Notebooks**: Step-by-step implementation of the local and cloud pipelines.
- **Scripts**: Python functions for data collection, transformation, and storage.
- **SQL**: Database schema design and queries.
- **Documentation**: Detailed instructions for running the pipeline and connecting cloud services.

## Tutorial: How to Use This Repository
1. Clone the repository to your local machine:
   ```bash
   git clone https://github.com/your_username/gans-e-scooter-pipeline.git
   ```
2. Navigate to the repository folder:
   ```bash
   cd gans-e-scooter-pipeline
   ```
3. Install the required Python libraries:
   ```bash
   pip install -r requirements.txt
   ```
4. Follow the numbered notebooks and SQL scripts in the order they appear for a structured walkthrough of the project phases.
   - ### **Notebook: 1_Gans_Project**
   
     #### 1. Scraping Basic Information
     Learn how to scrape the essential data required for the project using web scraping techniques. This section covers the methods to extract raw data efficiently and prepare it for further processing.

     #### 2. Accessing the Data Using APIs with Keys
     Gain an understanding of how to access third-party data by leveraging APIs. This section includes the setup of API keys and demonstrates how to query data from external sources using these keys.

     #### 3. Sending & Retrieving Information Between SQL and Python 
     Explore how to send data from this notebook to an SQL database and retrieve information back into Python. This section highlights key interactions with an SQL database, including creating tables, inserting records, and querying data from the database. (IN this section you should use Script: 2_Gans-Schema in MySQL.)

     #### 4. Pushing Static Data from Python to Google Cloud
     Learn how to push data from Python into Google Cloud storage. This section will guide you through the process of setting up Google Cloud, preparing data, and transferring it to cloud services for storage or further processing.

   - ### **Script: 2_Gans-Schema**
   
     #### **SQL Database Schema Designs and Example Queries**
     This script provides detailed database schema designs tailored to the project’s needs. 

   - ### **Notebook: 3_Cloud_Functions**

     #### **Reusable Python Functions for Google Cloud**
     In this notebook, you'll find reusable Python functions that automate critical processes within Google Cloud. These functions include handling cloud storage, managing cloud functions, and automating tasks that interact with Google Cloud services.


By following this sequence, you can replicate the project and understand the logic behind each phase.

Feel free to explore the repository and reach out for any questions or collaborations!

---

## Dive Deeper into the Project

For a detailed narrative on the concepts, challenges, and data science methodologies behind this project, read my article: **[Crafting a Data Pipeline for Gans: A Personal Journey](https://medium.com/@e.shomali.ph/crafting-a-data-pipeline-for-gans-a-personal-journey-22373b51bed6)**.
