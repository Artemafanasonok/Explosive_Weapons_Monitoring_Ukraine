# Explosive Weapons Monitoring — Ukraine

Analysis of explosive weapons incidents, civilian casualties, and infrastructure impact in Ukraine using HDX data, BigQuery, and Power BI.

## Overview

This is an independent data analytics portfolio project focused on the impact of explosive weapons incidents on civilians and civilian infrastructure in Ukraine.

The analysis covers incidents recorded in Ukraine from 2020 to the present, with the main focus on the full-scale invasion period starting from 24 February 2022.

The project demonstrates an end-to-end analytics workflow, from raw humanitarian data preparation to an interactive Power BI dashboard.

## Objectives

- Analyze the number and distribution of explosive weapons incidents across Ukraine.
- Identify regions most affected by explosive weapons.
- Analyze damage to civilian infrastructure.
- Analyze civilian and protected personnel casualties.
- Explore changes in incident frequency over time.
- Compare the frequency of incidents with the number of casualties.
- Present the results through an interactive Power BI dashboard.

## Data Source

The dataset used in this project is the **Explosive Weapons Monitoring Data** provided through the Humanitarian Data Exchange (HDX).

The dataset contains information about explosive weapons incidents, affected sectors, geographic locations, infrastructure damage, and casualties.

## Tools

- **SQL / BigQuery** — data cleaning, transformation, and preparation
- **Power BI** — data modeling, DAX measures, visualization, and dashboard development
- **GitHub** — project documentation and version control

## Data Preparation

The raw dataset was transformed in BigQuery before being imported into Power BI.

Key preparation steps included:

- Filtering the dataset to incidents recorded in Ukraine.
- Defining the war period.
- Standardizing administrative region names.
- Handling missing and undefined values.
- Creating infrastructure impact fields.
- Creating casualty measures.
- Preparing a regional dimension with standardized administrative codes.
- Preparing data for geographic visualization in Power BI.

### Data Model

The project uses a simple star-schema approach:

- `fact_events` — incident-level fact table
- `dim_regions` — administrative region dimension
- `dim_calendar` — date dimension created in Power BI

The main relationship is based on the standardized administrative region.

## Dashboard

The Power BI report consists of two main dashboards and a tooltip page.

### Dashboard 1 — Overview

The overview dashboard provides a high-level summary of explosive weapons incidents in Ukraine.

It includes:

- Total number of events
- Affected educational facilities
- Affected medical facilities
- Number of victims killed
- Number of weapon types
- Geographic distribution of incidents
- Events by affected sector
- Number of events over time

### Dashboard 2 — Regional & Infrastructure Impact

The second dashboard focuses on regional differences and infrastructure impact.

It includes:

- Infrastructure impact by administrative region
- Top 10 regions by infrastructure strikes
- Events vs total killed by administrative region
- Regional infrastructure impact matrix

The scatter chart helps identify regions where a high number of incidents is associated with a high number of casualties.

## Key Insights
Key findings from the analysis will be added after the final dashboard review.

## Disclaimer
This project is intended for analytical and portfolio purposes.

The underlying data is humanitarian incident data and may contain incomplete or undefined information. Results should therefore be interpreted in the context of the source data and its methodology.

## Project Structure

```text
explosive-weapons-monitoring-ukraine/
│
├── README.md
│
├── sql/
│   ├── fact_events.sql
│   └── dim_regions.sql
│
├── powerbi/
│   └── explosive_weapons_monitoring.pbix
│
├── screenshots/
│   ├── dashboard_overview.png
│   └── dashboard_infrastructure.png
│
└── data/
    └── README.md

