# NYC Motor Vehicle Collision Analysis 

## Project Overview

This project explores motor vehicle collision data from New York City (NYC) using **MySQL and Microsoft Power BI**. The objective is to analyze collision patterns, understand their impact on different categories of road users, examine contributing factors, and compare collision trends across boroughs and time periods.

The project demonstrates an end-to-end data analytics workflow, from handling a large dataset and performing SQL-based data cleaning to analyzing records and building an interactive Power BI dashboard.

Rather than presenting raw numbers alone, the project uses data visualization to make collision patterns easier to explore and interpret.

## Business Problem

Road traffic collisions pose significant challenges to public safety. Understanding where collisions occur, how many people are injured or killed, and how recorded contributing factors vary across locations can help identify areas that require further investigation.

However, large datasets can be difficult to interpret without appropriate cleaning, analysis, and visualization.

This project addresses that challenge by organizing and analyzing NYC vehicle collision data and presenting key metrics and patterns through an interactive dashboard.

## Project Objectives

The main objectives of this project were to:

* Analyze the distribution of vehicle collisions across NYC boroughs.

* Examine reported injuries and fatalities among cyclists, motorists, and pedestrians.

* Explore recorded contributing factors associated with collisions.

* Compare contributing-factor distributions across boroughs.

* Investigate collision trends across years and months.

* Develop an interactive Power BI dashboard for data exploration.

* Demonstrate the use of SQL and Power BI to transform a large dataset into an accessible analytical report.

## Tools and Technologies

| Tool               | Purpose                                                            |
| ------------------ | ------------------------------------------------------------------ |
| MySQL              | Data cleaning, transformation, querying, and analysis              |
| Microsoft Power BI | Interactive dashboard development and visualization                |
| Microsoft Excel    | Initial data inspection and handling, where applicable             |
| GitHub             | Project documentation, version control, and portfolio presentation |

## Dataset Overview

The project uses NYC motor vehicle collision records.

The analysis focuses on the following broad areas:

* Collision counts and geographical distribution.

* Injuries and fatalities among different road-user categories.

* Recorded contributing factors.

* Annual collision trends.

* Monthly collision patterns.

The dataset was large, containing approximately **2 million records**. Due to the limitations encountered when working with the data in Excel, MySQL was used to handle the larger-scale data preparation and analysis workflow.

**Data source:** \(Insert the exact dataset source and URL here.\)

**Data period:** \(Insert the confirmed start and end dates covered by your dataset.\)

*Note: Complete the source and date fields above before publishing. Do not describe the dataset as publicly sourced unless you have verified its origin and are permitted to share it.*

## Data Analytics Workflow

### 1. Data Inspection

The first step involved inspecting the available data, reviewing its structure, and identifying issues that could affect the quality of the analysis.

Working with approximately two million records also highlighted the importance of choosing appropriate tools for large datasets.

### 2. Data Cleaning Using MySQL

MySQL was used to clean and prepare the data for analysis.

The cleaning tasks included:

* **Missing values:** Identifying and handling NULL or missing values where appropriate.

* **Duplicate records:** Checking for duplicate records and addressing them according to the cleaning criteria.

* **Inconsistent data:** Reviewing inconsistencies in data values and formatting.

* **Data types:** Converting columns to appropriate data types where necessary.

* **Filtering:** Excluding irrelevant records where appropriate for the analysis.

These steps helped prepare the dataset for more reliable querying and visualization.

### 3. SQL Analysis

After cleaning, SQL queries were used to investigate collision patterns and generate the information needed for the dashboard.

The analysis focused on collision counts, road-user injuries and fatalities, contributing factors, borough comparisons, and trends over time.

The SQL scripts included in this repository document the queries used in the project.

### 4. Power BI Visualization

Microsoft Power BI was used to develop an interactive dashboard titled **NYC Vehicle Collision Dashboard**.

The dashboard brings together key metrics, comparisons, and trends in one interface. Users can explore the displayed data using the Year and Borough slicers.

## Key Business Questions

The project was guided by the following questions:

1. Which NYC boroughs recorded the highest and lowest numbers of vehicle collisions?

2. How were reported injuries distributed among cyclists, motorists, and pedestrians?

3. How were reported fatalities distributed among cyclists, motorists, and pedestrians?

4. How did recorded contributing factors vary across NYC boroughs?

5. What patterns were visible in collision counts across the years covered by the dataset?

6. How did collision counts vary across the months of the year?

7. How could an interactive dashboard make these patterns easier to investigate?

## Power BI Dashboard Features

### 1. Key Performance Indicators (KPIs)

The dashboard includes cards displaying:

* Total crashes.

* Total injured.

* Total killed.

* Top-factor metric.

* Least-factor metric.

### 2. Total Crashes by Borough

A horizontal bar chart compares collision counts across:

* Brooklyn.

* Queens.

* Manhattan.

* Bronx.

* Staten Island.

This visual supports geographical comparisons and helps users identify differences in recorded collision volume.

### 3. Total Killed by Road-User Category

A donut chart displays the distribution of reported fatalities among:

* Cyclists.

* Motorists.

* Pedestrians.

This helps users compare the recorded fatality distribution across these categories.

### 4. Total Injured by Road-User Category

A second donut chart compares reported injuries among cyclists, motorists, and pedestrians.

Together, the injury and fatality visuals provide a broader view of the human impact recorded in the dataset.

### 5. Contributing Factors by Borough

A stacked bar chart compares selected contributing factors across the five NYC boroughs.

The chart helps users explore how the displayed factor distributions differ geographically.

These records represent contributing factors as captured in the dataset; the visualization alone does not prove that a factor caused a collision.

### 6. Total Crashes by Year

A line chart presents recorded collision counts across the years available in the dataset.

This visual supports the exploration of long-term patterns and changes in recorded collision volume.

Recent years should be interpreted carefully if their records are incomplete.

### 7. Total Crashes by Month

A line chart compares collision counts across the months of the year.

This supports exploration of monthly patterns. The interpretation should specify whether the chart combines multiple years or reflects a selected year.

### 8. Interactive Filters

The dashboard includes two slicers:

* **Year:** Filters the dashboard by year.

* **Borough:** Filters the dashboard by borough.

These controls allow users to explore the displayed metrics and comparisons under different selections.

## Power BI Dashboard Preview

![Power BI Dashboard](Motor Vehicle Collisions Analysis - NYC/Images/dashboard_overview.png.png)

## Potential Business Value

The analysis demonstrates how large-scale collision records can be transformed into an interactive report that supports further investigation.

Potential applications include:

* Identifying boroughs with comparatively high recorded collision counts.

* Examining the distribution of injuries and fatalities across road-user categories.

* Exploring changes in collision volume over time.

* Comparing recorded contributing factors across geographical areas.

* Supporting discussions about road-safety monitoring and data-informed planning.

These are potential applications of the analysis, not claims that the dashboard alone establishes the causes of collisions or proves the effectiveness of any intervention.

## Key Skills Demonstrated

This project demonstrates practical experience in:

* SQL data cleaning and preparation.

* Working with large datasets.

* Data quality checks.

* SQL querying and analytical thinking.

* KPI reporting.

* Trend analysis.

* Geographical comparisons.

* Power BI dashboard design.

* Data visualization and storytelling.

* Translating business questions into analytical outputs.

* Documenting an end-to-end analytics project.

## Repository Structure

The repository is organized to separate the dataset documentation, SQL work, dashboard, and supporting visuals.

```
NYC-Motor-Collision-Crashes-Analysis/
│
├── README.md
│
├── SQL/
│   ├── data_cleaning.sql
│   └── data_analysis.sql
│
├── PowerBI/
│   └── NYC_Vehicle_Collision_Dashboard.pbix
│
├── Images/
│   └── dashboard_overview.png
│
└── Data/
    └── README.md
```

## Limitations and Considerations

* The accuracy of the analysis depends on the completeness and quality of the underlying records.

* Missing, inconsistent, or duplicate records may affect the results if not handled appropriately.

* Recent years may contain incomplete records, so apparent declines should not automatically be interpreted as real declines in collision occurrence.

* Recorded contributing factors should not be treated as proof of causation.

* The dashboard is an exploratory analytical tool and should be interpreted in the context of the dataset's coverage and definitions.

## Conclusion

This project demonstrates how MySQL and Microsoft Power BI can be combined to analyze a large motor vehicle collision dataset and present its patterns through an interactive dashboard.

From data cleaning and SQL analysis to KPI reporting, trend exploration, and visualization, the project reflects my ability to approach a real-world problem systematically and communicate data in a format that supports further investigation.

It also represents my interest in using data analytics to contribute to practical, evidence-informed decision-making.

---

**Tools:** MySQL | Microsoft Power BI | Microsoft Excel | GitHub

**Project:** NYC Motor Vehicle Collision Analysis
