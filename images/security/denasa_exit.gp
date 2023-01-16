set terminal epslatex size 3,1.5 font "" 8 standalone header \
    "XXX"
set datafile separator ','
set output 'denasa_exit.tex'

load './Set1.plt'

set xrange [0.0:*]
set yrange [0.0:1.02]

set xlabel "Probability of Placement Attack Success (Percent)" offset 0,+0.5
set ylabel "Weighted CDF" offset +0.5,0

set grid back
set key outside left tm Left vertical maxrows 3 width -6 samplen 1 reverse

set pointintervalbox 1.6

LW = 4
PS = 1.1
PI = -12000

plot \
'~/prj/lapsit/location-aware-tor/data/denasa_placement/vanilla_exit.csv' with l title "Vanilla" ls 1 lw LW, \
'~/prj/lapsit/location-aware-tor/data/denasa_placement/denasa_exit.csv' with l title "DeNASA ($\\tau = 0.1$)" ls 2 lw LW, \
'~/prj/lapsit/location-aware-tor/data/denasa_placement/claps1.25_exit_real.csv' with l title "CLAPS-DN ($\\theta = 1.25$)" ls 3 lw LW, \
'~/prj/lapsit/location-aware-tor/data/denasa_placement/vanilla_exit2.csv' with l title "CLAPS-DN ($\\theta = 2.0$)" ls 4 lw LW, \
'~/prj/lapsit/location-aware-tor/data/denasa_placement/vanilla_exit5.csv' with l title "CLAPS-DN ($\\theta = 5.0$)" ls 5 lw LW, \
