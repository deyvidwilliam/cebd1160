set key off
set border 3
set terminal png

set title "Frequency plot for firefighter units per incident and \n distance between incident and fire station since 2015"
set xlabel "Units deployed / Kilometers"
set ylabel "Number of incidents"

#Limiting X axe to 30 for better visualization
set xrange [0:30]

# Each bar is half the (visual) width of its x-range.
set boxwidth 0.7 absolute
set style fill solid 1 noborder

set output 'var1and2.png' 

bin_width = 1;

bin_number(x) = floor(x/bin_width)

rounded(x) = bin_width * ( bin_number(x) + 0.2 )

set key autotitle columnhead

set datafile separator "," 

plot '3interventions_casernes_distance_2015_2017.csv' using (rounded($11)):(1) smooth frequency with boxes linetype 2 title "Firefighter units deployed per incident", '3interventions_casernes_distance_2015_2017.csv' using (rounded($16)):(1) smooth frequency with boxes linetype 3 title "Distance between incident and fire station"

