set terminal epslatex size 3,1.5 font "" 8 standalone header \
    "XXX"
set datafile separator ','
set output 'cr_placement.tex'

load './Set1.plt'

set xrange [0.0:*]
set yrange [0.0:1.02]

set xlabel "Probability of Placement Attack Success (Percent)" offset 0,+0.5
set ylabel "Weighted CDF" offset +0.5,0

set grid back
set key outside left tm Left vertical maxrows 3 width -8 samplen 1 reverse

set pointintervalbox 1.6

LW = 4
PS = 1.1
PI = -12000

plot \
'~/prj/lapsit/location-aware-tor/data/couter_raptor_placement/125_100/vanilla' with l title "Vanilla" ls 1 lw LW, \
'~/prj/lapsit/location-aware-tor/data/couter_raptor_placement/125_100/cr5' with l title "C-R ($\\alpha = 0.5$)" ls 2 lw LW, \
'~/prj/lapsit/location-aware-tor/data/couter_raptor_placement/125_100/cr1' with l title "C-R ($\\alpha = 1.0$)" ls 3 lw LW, \
'~/prj/lapsit/location-aware-tor/data/couter_raptor_placement/125_100/claps' with l title "CLAPS-CR ($\\theta = 1.25$)" ls 4 lw LW, \
'~/prj/lapsit/location-aware-tor/data/couter_raptor_placement/2_100/claps' with l title "CLAPS-CR ($\\theta = 2.0$)" ls 5 lw LW, \
'~/prj/lapsit/location-aware-tor/data/couter_raptor_placement/5_100/claps' with l title "CLAPS-CR ($\\theta = 5.0$)" ls 7 lw LW, \
