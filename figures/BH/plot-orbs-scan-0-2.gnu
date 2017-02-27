
    reset

    load 'set1.pal'
    #load 'paired.pal'
    #set style line 1 lw 1.5 pt 2
    set style line 1 lt 1 lc rgb '#E41A1C' lw 2 # red
    set style line 2 lt 2 lc rgb '#377EB8' lw 2 # blue

    set style line 3 lw 1.5 pt 8 ps 0.5 pi 3
    set style line 4 lw 1.5 pt 6 ps 0.5 pi 3
    set style line 5 lw 1.5 pt 2 ps 0.5
    set style line 6 lw 1.5 pt 10 ps 0.5
    
    #set style line 5 lt 1 lc rgb '#FF7F00' # orange
    #set style line 6 lt 2 lc rgb '#FFFF33' # yellow
    set style line 7 lt 3 lc rgb '#A65628' # brown
    set style line 8 lt 4 lc rgb '#F781BF' # pink
    
    
    # define axis
    # remove border on top and right and set color to gray
    set style line 11 lc rgb '#808080' lt 1
    set border 3 back ls 11
    set tics nomirror
    # define grid
    set style line 12 lc rgb '#808080' lt 0 lw 1
    set grid back ls 12

    set xrange [-pi/2:pi/2]
    set xtics ('-π/2' -pi/2,'-3π/8' -3*pi/8, '-π/4' -pi/4, '-π/8' -pi/8, '0' 0,'π/8' pi/8, 'π/4' pi/4,'3π/8' 3*pi/8, 'π/2' pi/2 )

#    set title "Between orbitals 0-2"

    set xlabel "{/Symbol q} in rad"  #font "Liberation Sans,16"
    set ylabel "E ({/Symbol q}) in E_h" #font "Liberation Sans,16"

    set format y "%4.2f"

    set grid
    set key center top

    set terminal pdfcairo enhanced font "Linux Biolinum,16" linewidth 3 rounded dashed
    set output "orbs-scan-0-2.pdf"

    plot 'orbs-scan-0-2.txt' u 1:2 w l t 'Jacobi rotation' ls 1, '' u 1:3 w l t 'v2DM + Jacobi rotation' ls 2
