# Explosive Weapons Monitoring — Ukraine

Analysis of explosive weapons incidents, civilian casualties, and infrastructure impact in Ukraine using humanitarian open data, BigQuery, and Power BI.

## Overview

This is an independent data analytics portfolio project focused on the impact of explosive weapons incidents on civilians and civilian infrastructure in Ukraine.

The analysis covers incidents recorded in Ukraine from 2020 to August 2026, with the main focus on the full-scale invasion period starting on 24 February 2022.

The project demonstrates an end-to-end analytics workflow, from raw humanitarian data preparation and transformation to data modeling, DAX calculations, and interactive Power BI dashboards.

## Objectives

- Analyze the number and distribution of explosive weapons incidents across Ukraine.
- Identify regions most affected by recorded incidents.
- Analyze the impact on civilian infrastructure.
- Analyze recorded civilian and protected personnel casualties.
- Explore changes in incident frequency over time.
- Compare incident frequency with recorded casualties across administrative regions.
- Examine the distribution of affected infrastructure types.
- Present the results through an interactive Power BI report.

## Data Source

The project uses the **Explosive Weapons Monitoring Data** dataset available through the **Humanitarian Data Exchange (HDX)**.

The underlying data combines reported incidents involving explosive weapons with information about affected sectors, infrastructure, geographic locations, and casualties.

The source methodology notes that the dataset does not represent every incident or casualty and that reporting can vary depending on available sources, access, and reporting networks. Incidents may also affect multiple sectors simultaneously. :contentReference[oaicite:0]{index=0}

## Tools

- **SQL / BigQuery** — data cleaning, transformation, aggregation, and preparation
- **Power BI** — data modeling, DAX measures, visualization, and dashboard development
- **GitHub** — project documentation and version control

## Data Preparation

The raw dataset was transformed in BigQuery before being used in Power BI.

Key preparation steps included:

- Filtering the dataset to incidents recorded in Ukraine.
- Defining the observation period as:
  - **OOS** — 1 January 2020 to 23 February 2022
  - **Full-scale** — from 24 February 2022 onward
- Standardizing administrative region names.
- Mapping regional names to standardized administrative codes.
- Handling missing and undefined values.
- Creating infrastructure impact fields.
- Combining relevant casualty fields into a total recorded casualties measure.
- Preparing the data for geographic visualization in Power BI.

## Data Model

The Power BI model follows a simple star-schema approach.

### Fact table

`fact_events`

Contains incident-level records, including:

- Event date
- Administrative unit
- Infrastructure type
- Weapon launch type
- Infrastructure impact
- Casualty information
- War period

### Dimension tables

`dim_regions`

Contains standardized Ukrainian administrative regions and geographic codes used for mapping.

`dim_calendar`

A dedicated date dimension created in Power BI containing:

- Date
- Year
- Quarter
- Month
- Month Year
- Week
- Day
- Day of Week
- War Period

The main relationships connect the date and regional dimensions to the incident-level fact table.

## Dashboard

The Power BI report consists of:

- Overview dashboard
- Civilian & Infrastructure Impact dashboard
- Drillthrough Detail Page
- Custom tooltip page

### Dashboard 1 — Overview

The overview dashboard provides a high-level view of recorded explosive weapons incidents in Ukraine.

Key elements include:

- Total Events
- Education Infrastructure Strikes
- Health Infrastructure Strikes
- Total Civilians Killed
- Total Types of Weapons
- Recorded Events by Affected Infrastructure Type
- Count of Events Through Time
- Geographic distribution by administrative unit
- Interactive filters for Date, War Period, Admin Unit, and Infrastructure Type

The map includes a custom tooltip providing additional regional information, including event count, recorded casualties, and number of weapon types.

### Dashboard 2 — Civilian & Infrastructure Impact

The second dashboard focuses on the relationship between incidents, casualties, and infrastructure impact across Ukrainian administrative regions.

It includes:

- Total Events
- Total Civilians Killed
- Total Types of Weapons
- Aid Infrastructure Strikes
- Food Systems Strikes
- Water Systems Strikes
- Shelter Strikes
- Events vs Total Killed by Administrative Unit
- Number of Infrastructure Type Events by Year
- Civilian Casualties by Infrastructure
- Regional infrastructure impact analysis

The scatter chart allows users to explore differences between administrative regions and drill through to a detailed regional view.

The civilian casualties chart shows recorded casualties associated with incidents affecting different infrastructure categories. A single incident may affect multiple infrastructure types, so these categories should not be interpreted as mutually exclusive.

### Detail Page

The Detail Page is accessed through drillthrough from the regional scatter chart.

It provides a more detailed breakdown by administrative unit, including:

- Recorded Events
- Total Killed
- Weapon Types
- Aid & Health Workers Killed
- Aid Workers Killed
- Educators Killed
- Health Workers Killed
- Students Killed
- Aid Infrastructure Impact
- Education Infrastructure Impact
- Health Infrastructure Impact
- Food Systems Impact
- Water Systems Impact

## Key Insights

The analysis highlights several patterns within the recorded data:

- **5,353 unique explosive weapons incidents** are recorded for Ukraine in the analyzed dataset.
- Recorded incidents are distributed unevenly across administrative regions, with substantial differences in both event frequency and recorded casualties.
- **Health care** represents the largest category in the recorded casualty breakdown, with **291 casualties**, followed by **Aid Operations — 35** and **Education — 13**.
- Infrastructure-related incidents span multiple sectors, including healthcare, education, aid operations, food systems, water systems, and protection-related infrastructure.
- The relationship between the number of recorded incidents and casualties varies by region, demonstrating that incident frequency alone does not describe the full scale of recorded human impact.
- The dataset includes information from multiple information providers, reflecting the multi-source nature of humanitarian incident monitoring.

## Limitations

The analysis should be interpreted within the limitations of the underlying dataset.

The source methodology states that reported incidents are not a complete or representative list of all explosive weapons incidents. Coverage can vary depending on media reporting, local information networks, access constraints, and other characteristics of the information environment. Some incidents can also overlap across sectors. :contentReference[oaicite:1]{index=1}

Therefore:

- The reported figures should not be interpreted as a complete count of all incidents or casualties.
- Differences between regions may partly reflect differences in reporting coverage.
- Infrastructure categories are not necessarily mutually exclusive.
- Recorded casualties should not automatically be interpreted as causal estimates attributable to a specific infrastructure category.
- Missing or undefined information may affect individual records and aggregated results.

## Disclaimer

This project is an independent data analytics portfolio project.

It is intended for analytical and educational purposes and does not represent an official assessment of civilian harm or infrastructure damage.

All findings are based on the underlying humanitarian dataset and its methodology.

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
