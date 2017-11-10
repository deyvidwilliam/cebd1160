# About the repository (CEBD1160)

This repository contains scripts and plots created to accomplish the tasks proposed in the course CEBD1160 (Introduction to Big Data Technology) from Concordia University.

<b>Dataset</b><BR>
The dataset chosen to test the functionalities of R and Gnuplot contains <i>Firefighter incidents registered in Montreal since 2015</i> and is available in the /data folder. The dataset is the result of a merge of two others (Interventions des pompiers de Montréal and Casernes de pompiers sur l’île de Montréal), both publicly available at the portal Données Ouvertes [http://donnees.ville.montreal.qc.ca] maintained by the City of Montreal. The distance between the incident and fire station was included in the dataset after the comparison of latitude/longitude coordinates using geospatial functions from within MS SQL Server.
   
The 2 variables analysed are "Number of firefighter united deployed per incident" and "Distance between incident and fire station".

<b>Repository structure</b><BR>
/          - Main folder<BR>
/R        - R scripts and plots for 2 variables from main dataset <BR>
/data     - Datasets (csv files)<BR>
/gnuplot  - Gnuplot scripts, plots and datasets for testing purposes<BR>
/gnuplot/gnuplot_assignment  - Gnuplot scripts and plots for 2 variables from the main dataset

<h1>Setting up the environment</h1><BR>
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
 Depending on which ports are mapped, you access it via http://localhost/rstudio (username/password: opencpu)


  
  
