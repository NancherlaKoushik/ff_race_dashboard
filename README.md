# Project README

## Project Overview
This project involved creating a Looker Studio dashboard to visualize data from an Ultramarathon race. The data was initially sourced from UltraSignup, cleaned using Excel and Python, and then analyzed using MS SQL Server before being presented in Looker Studio.

## Data Pipeline
1. **Data Source:** The raw data was obtained from [UltraSignup](https://ultrasignup.com/results_event.aspx?did=102259).
2. **Data Cleaning (Excel & Python):** Initial cleaning was performed in Excel, followed by more extensive cleaning and transformation using a Python Jupyter Notebook (`ff.ipynb`). This involved:
    - Loading the raw CSV (`ff_race_50.csv`).
    - Dropping unnecessary columns.
    - Creating a `fulname` column by concatenating `First` and `Last` names.
    - Converting `Time` to `timedelta` and calculating `Total_minutes`.
3. **Data Analysis (MS SQL Server):** Insights were extracted from the cleaned data (`ff_race_50_clean.csv`) using SQL queries (`SQLQuery3.sql`). Key analyses included:
    - Counting distinct states represented in the race.
    - Calculating the average time for men vs. women.
    - Identifying the youngest and oldest ages by division.
    - Analyzing total minutes across different age groups.
    - Identifying top 3 males and females based on race time.
4. **Dashboard Visualization (Looker Studio):** The processed and analyzed data was then used to create an interactive dashboard in Looker Studio.

## Dashboard Link
You can access the live dashboard here: [Looker Studio Dashboard](https://lookerstudio.google.com/u/0/reporting/645c5e06-776c-49fe-9798-3b71952ccd60/page/JOZOF)


## Key Insights from Data Analysis
Based on the SQL queries performed on the cleaned data, the following key insights were extracted:

*   **State Representation:** The race had participants from a diverse number of states, indicating a broad reach for the event.
*   **Gender-based Performance:** Analysis of average race times revealed differences in performance between male and female participants.
*   **Age Demographics:** The youngest and oldest participants in each division were identified, providing insights into the age distribution of the racers.
*   **Age Group Performance:** The average race times were analyzed across different age buckets (e.g., 20-29, 30-39, etc.), showing how performance varies with age.
*   **Top Performers:** The top 3 male and female finishers were identified based on their total race minutes.

## Conclusion
This project demonstrates a complete data pipeline from raw data extraction to interactive dashboard visualization. The insights gained from the analysis can be valuable for race organizers to understand participant demographics and performance trends.


