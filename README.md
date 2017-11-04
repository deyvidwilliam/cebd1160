# About this repository

Repository with scripts and plots created to accomplish the tasks proposed in the course CEBD1160 (Introduction to Big Data Technology)  of Concordia University.

<b>Main Dataset</b><BR>
The dataset chosen to test the fonctionalities of R and Gnuplot is <i>Firefighter incidents in Montreal since 2015</i> available in the /data folder. In fact, the dataset is the result of a merge of two others (Interventions des pompiers de Montréal and Casernes de pompiers sur l’île de Montréal), both publicaly available at the web portal Données Ouvertes [http://donnees.ville.montreal.qc.ca] maintained by the City of Montreal. The distance between the incident and the fire station was calculated using geospatial functions from within MS SQL Server.
   
The 2 variables analysed are "Number of firefighter united deployed per incident" and "Distance between incident and fire station".

<b>Repository structure</b><BR>
/          - Main folder<BR>
/R        - R scripts and plots for 2 variables from main dataset <BR>
/data     - Data sources (csv files)<BR>
/gnuplot  - Gnuplot scripts, plots and datasets for testing purposes<BR>
/gnuplot/gnuplot_assignment  - Gnuplot scripts and plots for 2 variables from the main dataset

<h1>Setting up the Lab environment</h1><BR>
<b>Gnuplot</b><BR>
Using Linux, Gnuplot will be downloaded and installed if you issue the following command as root:
  
  ```
apt-get install gnuplot
  ```
<BR>
  
<b>RStudio</b><BR>
Using Docker, we can start a container with a stable release with RStudio server using the command:
```
docker run -t -p 80:80 -p 8004:8004 opencpu/rstudio
```
<BR>
 Depending on which ports are mapped, you access via http://localhost/rstudio (username/password: opencpu)


  
  
