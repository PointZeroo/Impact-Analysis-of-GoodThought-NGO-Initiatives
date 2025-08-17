# GoodThought NGO Data Analysis (2010–2023)
---
## Table of Contents
- [Introduction](#introduction)  
- [Dataset Description](#dataset-description)  
- [Objective](#objective)  
- [Queries Overview](#queries-overview)
- [Visualization and Analysis](#visualization-and-analysis)
- [Results and Insights](#results-and-insights)  
- [Future Work](#future-work)  
- [Technologies Used](#technologies-used)   
- [Setup Instructions](#setup-instructions)  
- [Contact Information](#contact-information)  

---

## Introduction
GoodThought NGO focuses on education, healthcare, and sustainable development to create long-term positive change in communities worldwide. This project uses SQL queries on the NGO’s PostgreSQL database to explore how donor funding and project impact align, providing data-driven insights to support decision-making.

---

## Dataset Description
The PostgreSQL database (2010–2023) includes the following tables:

- **assignments** – Project details such as name, region, duration, budget, and impact score.  
- **donations** – Financial contributions linked to donors and assignments.  
- **donors** – Information about funding sources, including donor type.  

---

## Objective
- Identify the assignments with the highest donation value, categorized by donor type.  
- Determine the assignment with the highest impact score in each region, ensuring it received at least one donation.  
- Provide insights into the relationship between funding and project outcomes.  

---

## Queries Overview
1. **Top 5 Assignments by Total Donations (by Donor Type)**  
   - Aggregates and ranks assignments by donation amount per donor type.  

2. **Highest Impact Assignment per Region**  
   - Finds the top project in each region by impact score, restricted to projects that received donations.  

---

## Visualization and Analysis

### 1. Top 5 Assignments by Total Donations (by Donor Type)
<img width="707" height="129" alt="image" src="https://github.com/user-attachments/assets/092a569f-a163-4599-8435-8fa3b7589f21" />
<img width="411" height="400" alt="Top Five Assignments Based on Total Value of Donations" src="https://github.com/user-attachments/assets/3acd81d8-93c1-4247-973d-ee84bcd19112" />

### 2. Highest Impact Assignment per Region
<img width="707" height="108" alt="image" src="https://github.com/user-attachments/assets/e9d494ee-b77a-46d4-a496-829f0d32d35b" />

---

## Results and Insights
- The **most funded projects** are not always the ones with the **highest impact**.  
- Some **high-impact regional projects** received fewer donations, showing opportunities for better donor alignment.  
- Donor type influences which projects receive higher funding.

---

## Future Work
- Extend the analysis to cover **donor retention and trends over time**.  
- Create **views or stored procedures** to streamline repetitive analysis.  
- Build **dashboards** (Power BI, Tableau) to make results more accessible for decision-makers.

---

## Technologies Used
- **Database**: PostgreSQL  
- **Language**: SQL

---

## Setup Instructions
- Open PostgreSQL and connect to your database.
- Run the SQL scripts.

---

## Contact Information
LinkedIn: [Kian Gabriel Padua](www.linkedin.com/in/kian-gabriel-padua-0863ab1ab)
Email: kianpadua124@gmail.com



