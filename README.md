# CPSC368_group_Luke-Estelle

***Table of Content:***<br>
`/data `: contain raw and processed data for the project<br>
`/figures`: stores the figures generated from the research<br>
`/result`: stores the converted .sql files that contain the tuple insertions for the database<br>
`convert_sql.ipynb`: second-step of data cleaning and convert tabular data into sql insertion codes as .sql files<br>
`Dataset Cleaning and Visualization.ipynb`: first step data cleaning and eda for the proposal<br>
`method.ipynb`: connecting to UBC student database server to filter and pull data using sql scripts. Then, create visualizations and conduct significant tests using python<br>
`telemed.sql`: sql script that will create sql tables for the research and insert tuples for State table





***For your reference:***<br>
Python code used for initial data cleaning are contained in `Dataset Cleaning and Visualization.ipynb` at the root repository.<br>

Python code used for generating sql insertion files are contained in `convert_sql.ipynb` at the root repository.

***To reproduce our work you may proceed with the following steps:***<br>

1. Download the following sql files found in this repository 


telemed.sql <br>
result/insert_beneficiary.sql<br>
result/insert_patients.sql<br>
result/insert_service_count.sql<br>

2. Upload these 4 sql files to your remote oracle sql platform (this may only work for UBC student and stuff with a cwl account)

Open a terminal and run the following code and change filename and cwlid accordingly.<br>

scp filename.sql cwlid@remote.students.cs.ubc.ca:~


3. Log in to oracle and open the sql terminal and load the files in order<br>

@telemed.sql   ### this must be read first<br>
@insert_beneficiary.sql<br>
@insert_patients.sql<br>
@insert_service_count.sql<br>

4. be sure to run `commit;` to commit insertion to your remote server

5. login to ubc cs database server and run `method.ipynb` to reproduce tabular result and figures

***Navigator for `method.ipynb` file***<br>

Before you start: here is a list of necessary python libraries you need to download to run our code
- oracledb
- pandas 
- numpy  
- matplotlib.pyplot 
- seaborn 
- scipy.stats 


SQL Filtering and pulling data for line chart: code chunk #5<br>
SQL Filtering and pulling data for bar chart (gender): code chunk #9<br>
SQL Filtering and pulling data for bar chart (age): code chunk #13<br>
SQL Filtering and pulling data for heatmap: code chunk #17<br>

Graphing line chart: code chunk #7<br>
Graphing bar chart (gender): code chunk #10<br>
Graphing bar chart (age): chunk #14<br>
Graphing heatmap: code chunk #18<br>

Significance test for temporal difference: code chunk #6<br>
Significance test for gender difference: code chunk #12<br>
Significance test for age difference: chunk #16<br>





