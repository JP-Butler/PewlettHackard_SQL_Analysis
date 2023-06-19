# SQL-challenge
------------------------------------------------------------------------

## Pewlett Hackard Employee Analysis 
This challenge uses the SQL concepts and knowledge I've learned in the 9th module of the Carelton Data Analytics Boot Camp such as schema creation, importing data, CRUD statement joins, ERDs to name a few. Using these newly acquired techniques and skills I'll plau the role of data engineer to model, engineer and analyze data from Pewlett Hackard (a fictional company) to research employee data from the 1980s and 1990s.

## Table of Contents

- [About](#about)
- [Getting Started & Installing](#getting-started--installing)
- [Usage](#usage)
- [Contributing](#contributing)

## About
Write about 1-2 paragraphs describing the purpose of your project.
As written in the description above, to complete this challenge I played the role of data engineer tasked to perform data modeling, data engineering and data analysis for a research project for my (fictitious) company Pewlett Hackard. Specifically to create a relational database for employee data of those worked at the company during the 1980s and 1990s for future analysis. The problem that presented itself was that the only data on these employees at the present time was housed in 6 seperate CSV files. 
To complete this project I sketched an Entity Relationship Diagram (ERD), produced schema for the tables modeled in the ERD and queried the newly created Database tables to answer the desired questions from my company.

## Getting Started & Installing
To properly run this project please make sure the following are installed:
* PostgreSQL (version 14 or higher needed)
* pgAdmin (latest version needed)
Download links located in [Usage](#usage)
The ***ERD_image*** file will provide the Database diagram visual produced by the ***Table_Schemata*** file.
If running from scratch please run the ***Table_Schemata*** file in it's entirety, them import the csv files located in the "Data" folder in the following order:
1. titles
2. departments
3. employees
Remaining order does not matter. Importing this way will respect the key relationships in the database, otherwise the imports will fail.

Running the 'SELECT ALL' statements located at the bottom of the ***Table_Schemata*** file will verify the table creation and data upload was successfull.
To run the ***Data_Analysis*** file, run each question individually to output the analysis question answers.The questions are located above the code in -- comment lines. For e.g. run question 1's code alone to receive the answer in the Data Output window. 

## Usage
To download the Postgres and pgAdmin package follow this link: 
[Download PostgreSQL](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads)

## Contributing
Justin Butler
