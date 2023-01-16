set terminal epslatex size 4.0,1.75 font "" 8 standalone header \
    "XXX"
set datafile separator ','
set output 'cr_penalty.tex'

load './Set1.plt'

set xrange [0.0:1.02]
set yrange [0.0:1.02]

set xlabel "Expected Resilience" offset 0,+0.5
set ylabel "CDF of Clients" offset +0.5,0

set grid back
set key inside left top Left width -2
set pointintervalbox 1.6

LW = 3.5
PS = 1.1
PI = -12000

plot \
'~/prj/lapsit/location-aware-tor/data/vanilla_resil_cdf.csv' with lp title "Vanilla" ls 1 lw LW \
pi PI pt 1 ps 1.2, \
'~/prj/lapsit/location-aware-tor/data/cr05.csv' with lp title "Counter-RAPTOR ($\\alpha=0.5$)" ls 2 lw LW \
pi PI pt 3 ps 1.2, \
'~/prj/lapsit/location-aware-tor/data/cr10.csv' with lp title "Counter-RAPTOR ($\\alpha=1.0$)" ls 3 lw LW \
pi PI pt 5 ps 1.2, \
'~/prj/lapsit/location-aware-tor/data/claps_125.csv' with lp title "CLAPS-CR ($\\theta=1.25$)" ls 4 lw LW \
pi PI pt 7 ps 1.2, \
'~/prj/lapsit/location-aware-tor/data/claps_2.csv' with lp title "CLAPS-CR ($\\theta=2.0$)" ls 5 lw LW \
pi PI pt 9 ps 1.2, \
'~/prj/lapsit/location-aware-tor/data/claps_5.csv' with lp title "CLAPS-CR ($\\theta=5.0$)" ls 7 lw LW pi PI pt 11 ps 1.2, \
