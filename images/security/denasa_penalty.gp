set terminal epslatex size 4.0,1.75 font "" 8 standalone header \
    "XXX"
set datafile separator ','
set output 'denasa_penalty.tex'

load './Set1.plt'

set xrange [-0.02:*]
set yrange [0.0:1.05]

set xlabel "Expected Num. Intersecting Suspect ASes" offset 0,+0.5
set ylabel "CDF of Clients" offset +0.5,0

set grid back
set key inside bottom right Left width -2
set pointintervalbox 1.6

LW = 3.5
PS = 1.1
PI = -12000

plot \
'~/prj/lapsit/location-aware-tor/data/125/suspects_vanilla.csv' with lp title "Vanilla" ls 1 lw LW \
pi PI pt 1 ps PS, \
'~/prj/lapsit/location-aware-tor/data/125/suspects_denasa.csv' with lp title "DeNASA ($\\tau=0.1$)" ls 2 lw LW \
pi PI pt 3 ps PS, \
'~/prj/lapsit/location-aware-tor/data/125/suspects_claps.csv' with lp title "CLAPS-DN ($\\theta=1.25$)" ls 3 lw LW \
pi PI pt 5 ps PS, \
'~/prj/lapsit/location-aware-tor/data/2/suspects_claps.csv' with lp title "CLAPS-DN ($\\theta=2.0$)" ls 4 lw LW \
pi PI pt 7 ps PS, \
'~/prj/lapsit/location-aware-tor/data/5/suspects_claps.csv' with lp title "CLAPS-DN ($\\theta=5.0$)" ls 5 lw LW pi PI pt 9 ps PS, \
