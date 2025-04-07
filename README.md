# CPSC368_group_Luke-Estelle
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





